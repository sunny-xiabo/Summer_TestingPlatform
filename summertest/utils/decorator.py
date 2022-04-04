"""
 # -*- coding:utf-8 -*-
 # @Author：xiabo
 # @File : decorator.py
 # @Date ：2022/4/2 上午11:47
"""

import functools
from loguru import logger
from summertest.utils import parser

def request_log(level):
    """
    封装请求日志
    :param level:
    :return:
    """

    def wrapper(func):
        @functools.wraps(func) # 保留被装饰的函数的属性

        def inner_wrapper(request,*args,**kwargs):
            msg_data = "before process request data:\n{data}".format(data=parser.format_json(request.data))
            msg_params = "before process request params:\n{params}".format(
                params=parser.format_json(request.query_params))
            if level == 'INFO':
                if request.data:
                    logger.info(msg_data)
                if request.query_params:
                    logger.info(msg_params)
            elif level == 'DEBUG':
                if request.data:
                    logger.debug(msg_data)
                if request.query_params:
                    logger.debug(msg_params)
            return func(request, *args, **kwargs)

        return inner_wrapper

    return wrapper
