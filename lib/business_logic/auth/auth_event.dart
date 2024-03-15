part of 'auth_bloc.dart';

abstract class AuthEvent {}

class ClearControllers extends AuthEvent {}

class LoginEvent extends AuthEvent {}
