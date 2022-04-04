"""
 # -*- coding:utf-8 -*-
 # @Author：xiabo
 # @File : parser.py
 # @Date ：2022/4/2 上午11:53
"""

from enum import Enum
import json


class FileType(Enum):
    """
    文件类型枚举
    """
    string = 1
    int = 2
    float = 3
    bool = 4
    list = 5
    dict = 6
    file = 7


def format_json(value):
    """
    json格式化
    :param value:
    :return:
    """
    try:
        return json.dumps(
            value, indent=4, separators=(
                ',', ': '), ensure_ascii=False)
    except BaseException:
        return value

class Format(object):
    """
    解析标准HttpRunner脚本 前端->后端
    """

    def __init__(self, body, level='test'):
        """
        body => {
                    header: header -> [{key:'', value:'', desc:''},],
                    request: request -> {
                        form: formData - > [{key: '', value: '', type: 1, desc: ''},],
                        json: jsonData -> {},-
                        params: paramsData -> [{key: '', value: '', type: 1, desc: ''},]
                        files: files -> {"fields","binary"}
                    },
                    extract: extract -> [{key:'', value:'', desc:''}],
                    validate: validate -> [{expect: '', actual: '', comparator: 'equals', type: 1},],
                    variables: variables -> [{key: '', value: '', type: 1, desc: ''},],
                    hooks: hooks -> [{setup: '', teardown: ''},],
                    url: url -> string
                    method: method -> string
                    name: name -> string
                }
        """
        try:
            self.name = body.pop('name')

            self.__headers = body['header'].pop('header')
            if level == 'test':
                # 配置移除request参数
                self.__params = body['request']['params'].pop('params')
                self.__data = body['request']['form'].pop('data')
                self.__json = body['request'].pop('json')
                self.__files = body['request']['files'].pop('files')
            else:
                self.__params = {}
                self.__data = {}
                self.__json = {}
                self.__files = {}
            self.__variables = body['variables'].pop('variables')
            self.__setup_hooks = body['hooks'].pop('setup_hooks')
            self.__teardown_hooks = body['hooks'].pop('teardown_hooks')

            if level == 'test':
                self.__desc = {
                    "header": body['header'].pop('desc'),
                    "data": body['request']['form'].pop('desc'),
                    "files": body['request']['files'].pop('desc'),
                    "params": body['request']['params'].pop('desc'),
                    "variables": body['variables'].pop('desc'),
                }
                self.url = body.pop('url')
                self.method = body.pop('method')

                self.__times = body.pop('times')
                self.__extract = body['extract'].pop('extract')
                self.__validate = body.pop('validate').pop('validate')
                self.__desc['extract'] = body['extract'].pop('desc')

            elif level == 'config':
                self.__desc = {
                    "header": body['header'].pop('desc'),
                    "variables": body['variables'].pop('desc'),
                }

                self.base_url = body.pop('base_url')
                self.is_default = body.pop('is_default')
                self.__parameters = body['parameters'].pop('parameters')
                self.__desc["parameters"] = body['parameters'].pop('desc')

            self.__level = level
            self.testcase = None

            self.project = body.pop('project')
            self.relation = body.pop('nodeId')

            # FastRunner的API没有rig_id字段,需要兼容
            self.rig_id = body['rig_id'] if body.get('rig_id') else None
            self.rig_env = body['rig_env'] if body.get('rig_env') else 0

        except KeyError:
            # project or relation
            pass

    def parse(self):
        """
        返回标准化HttpRunner "desc" 字段运行需去除
        """
        if not hasattr(self, 'rig_id'):
            self.rig_id = None

        if not hasattr(self, 'rig_env'):
            self.rig_env = 0

        if self.__level == 'test':
            test = {
                "name": self.name,
                "rig_id": self.rig_id,
                "times": self.__times,
                "request": {
                    "url": self.url,
                    "method": self.method,
                    "verify": False
                },
                "desc": self.__desc
            }

            if self.__extract:
                test["extract"] = self.__extract
            if self.__validate:
                test['validate'] = self.__validate

        elif self.__level == 'config':
            test = {
                "name": self.name,
                "request": {
                    "base_url": self.base_url,
                },
                "desc": self.__desc
            }

            if self.__parameters:
                test['parameters'] = self.__parameters

        if self.__headers:
            test["request"]["headers"] = self.__headers
        if self.__params:
            test["request"]["params"] = self.__params
        if self.__data:
            test["request"]["data"] = self.__data
        if self.__json:
            test["request"]["json"] = self.__json
        # 兼容一些接口需要传空json
        if self.__json == {}:
            test["request"]["json"] = {}
        if self.__files:
            test["request"]["files"] = self.__files
        if self.__variables:
            test["variables"] = self.__variables
        if self.__setup_hooks:
            test['setup_hooks'] = self.__setup_hooks
        if self.__teardown_hooks:
            test['teardown_hooks'] = self.__teardown_hooks

        self.testcase = test