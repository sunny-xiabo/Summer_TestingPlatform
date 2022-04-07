"""
 # -*- coding:utf-8 -*-
 #!/usr/bin/env python3
 # @Author：xiabo
 # @File : runner.py
 # @Date ：2022/4/7 上午11:37
"""

import shutil
import os
import sys
import tempfile
import subprocess
from Summer_TestingPlatform.settings import BASE_DIR
from summertest.utils import loader

EXEC = sys.executable

if 'uwsgi' in EXEC:
    # 修复虚拟环境下，用uwsgi执行时，PYTHONPATH还是用了系统默认的
    EXEC = EXEC.replace("uwsgi", 'python')


class DebugCode(object):

    def __init__(self, code):
        self.__code = code
        self.resp = None
        # 初始化创建临时文件
        self.temp = tempfile.mkdtemp(prefix='Summer_TestingPlatform')

    def run(self):
        """
        dumps debugtalk.py and run
        :return:
        """
        try:
            os.chdir(self.temp)
            file_path = os.path.join(self.temp, "debugtalk.py")
            loader.FileLoader.dump_python_file(file_path, self.__code)
            # 修复驱动代码运行时，找不到内置httprunner包
            run_path = [BASE_DIR]
            run_path.extend(sys.path)
            env = {'PYTHONPATH': ':'.join(run_path)}
            self.resp = decode(
                subprocess.check_output([EXEC, file_path], stderr=subprocess.STDOUT, timeout=60, env=env))

        except subprocess.CalledProcessError as e:
            self.resp = decode(e.output)

        except subprocess.TimeoutExpired:
            self.resp = 'RunnerTimeOut'
        os.chdir(BASE_DIR)
        shutil.rmtree(self.temp)


def decode(s):
    try:
        return s.decode('utf-8')

    except UnicodeDecodeError:
        return s.decode('gbk')
