from django.contrib.auth import get_user_model
from django.contrib.auth.hashers import make_password, check_password

from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework_jwt.settings import api_settings
from drf_yasg.utils import swagger_auto_schema

from summertestuser.common import response
from summertestuser import serializers, models

# Create your views here.


# 获取用户模型


User = get_user_model()


class RegisterView(APIView):
    authentication_classes = ()
    permission_classes = ()

    def post(self, request):

        try:
            username = request.data["usernmae"]
            password = request.data["password"]
            email = request.data["email"]

        except KeyError:
            '''请求数据非法'''
            return Response(response.KEY_MISS)

        if models.User.objects.filter(username=username).first():
            '''用户名已被注册'''
            return Response(response.REGISTER_USERNAME_EXIST)
        if models.User.objects.filter(email=email).first():
            return Response(response.REGISTER_EMAIL_EXIST)

        request.data["password"] = make_password(password)

        serializer = serializers.UserInfoSerializer(data=request.data)

        if serializer.is_valid():
            serializer.save()
            return Response(response.REGISTER_SUCCESS)
        else:
            return Response(response.SYSTEM_ERROR)


class LoginView(APIView):
    """
    登陆视图，用户名与密码匹配返回token
    """
    authentication_classes = ()
    permission_classes = ()

    @swagger_auto_schema(request_body=serializers.UserLoginSerialzer)
    def post(self, request):
        """
        用户名密码一致返回token
        {
            username: str
            password: str
        }
        """
        try:
            username = request.data["username"]
            password = request.data["password"]
        except KeyError:
            return Response(response.KEY_MISS)

        user = User.objects.filter(username=username).first()

        if not user:
            return Response(response.USER_NOT_EXISTS)

        if user.is_active == 0:
            return Response(response.USER_BLOCKED)

        if not check_password(password, user.password):
            return Response(response.LOGIN_FAILED)

        jwt_payload_handler = api_settings.JWT_PAYLOAD_HANDLER
        jwt_encode_handler = api_settings.JWT_ENCODE_HANDLER

        payload = jwt_payload_handler(user)
        token = jwt_encode_handler(payload)
        response.LOGIN_SUCCESS["token"] = token
        response.LOGIN_SUCCESS["user"] = username
        response.LOGIN_SUCCESS["is_superuser"] = user.is_superuser
        response.LOGIN_SUCCESS["show_hosts"] = user.show_hosts
        return Response(response.LOGIN_SUCCESS)


class UserView(APIView):

    def get(self, request):
        users = User.objects.filter(is_active=1)
        ser = serializers.UserModelSerializer(instance=users, many=True)
        return Response(ser.data)
