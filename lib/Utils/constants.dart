
import 'package:flutter/material.dart';
class ColorHelp
{

static const Color orange = const Color(0xffff6600);
static const Color grey = const Color(0xff1b1816);

}

//base url
const String baseUrl = 'https://d67c-196-205-94-85.eu.ngrok.io/api/v1';

//auth url
const String registerUrl = baseUrl + '/register';
const String loginUrl = baseUrl + '/login';
const String logOutUrl = baseUrl + '/logout';
const String forgetPasswordUrl = baseUrl + '//orgetPassword';
const String verifyOtp = baseUrl + '/verifyOtp';
const String resetPassword = baseUrl + '/resetPassword';
const String refreshToken = baseUrl + '/refreshToken';

