class Failure {
  final String message;

  Failure(this.message);
}

class FailureGetToken extends Failure {
  FailureGetToken(super.message);
}


class NoInternetFailure extends Failure {
  NoInternetFailure(super.message);
}