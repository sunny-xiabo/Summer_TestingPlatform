"""
 # -*- coding:utf-8 -*-
 # @Author：xiabo
 # @File : token.py
 # @Date ：2022/4/1 下午4:37
"""
import hashlib
import time


def generate_token(username):
    """
    生成token
    """
    timestamp = str(time.time())

    token = hashlib.md5(bytes(username, encoding='utf-8'))
    token.update(bytes(timestamp, encoding='utf-8'))

    return token.hexdigest()