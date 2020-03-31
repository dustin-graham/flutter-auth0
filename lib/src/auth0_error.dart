part of auth0_auth;

enum Auth0ExceptionType {
  unauthorized,
  other,
}

class Auth0Exeption implements Exception {
  final String name;
  final String description;
  final Auth0ExceptionType exceptionType;

  Auth0Exeption({
    this.name = 'a0.response.invalid',
    this.description = 'unknown error',
    this.exceptionType = Auth0ExceptionType.other,
  });

  String toString() {
    return 'exceptionType: $exceptionType. $name: $description';
  }
}
