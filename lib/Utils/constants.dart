
import 'package:flutter/material.dart';
class ColorHelp
{

static const Color orange = const Color(0xffff6600);
static const Color grey = const Color(0xff1b1816);

}

const String baseUrl="https://3ca3-196-205-94-85.eu.ngrok.io/api/v1";

const String accessTokenKEY="access_token";
const String refreshTokenKEY="refresh_token";
const String KtokenCreatedAt="tokenCreatedAt";

String validationEmail =
    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
String validationName = r'^[a-z A-Z]+$';
String validationPhone = r'(^(?:[+0]9)?[0-9]{10,12}$)';

//auth url
const String registerUrl = baseUrl + 'register';
const String loginUrl = baseUrl + 'login';
const String logOutUrl = baseUrl + 'logout';
const String forgetPasswordUrl = baseUrl + 'forgetPassword';
const String verifyOtp = baseUrl + 'verifyOtp';
const String resetPassword = baseUrl + 'resetPassword';
const String refreshToken = baseUrl + 'refreshToken';

