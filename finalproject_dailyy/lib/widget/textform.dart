import 'package:flutter/material.dart';

final TextEditingController emailController = TextEditingController();
final TextEditingController passwordController = TextEditingController();
TextFormField InputEmail = TextFormField(
  controller: emailController,
  decoration: InputDecoration(
    prefixIcon: Icon(
      Icons.email_outlined,
      size: 28,
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    hintText: 'Email',
  ),
);

TextFormField InputPassword = TextFormField(
  controller: passwordController,
  obscureText: false,
  decoration: InputDecoration(
    prefixIcon: Icon(
      Icons.vpn_key_rounded,
      size: 28,
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    hintText: 'Password',
  ),
);
