part of 'auth_bloc.dart';

abstract class AuthEvent {}

class ChangePasswordVisibility extends AuthEvent {}

class LoginEvent extends AuthEvent {}