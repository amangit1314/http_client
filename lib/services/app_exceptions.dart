// class AppException implements Exception {
//   final String message;
//   final String prefix;
//   final String url;

//   AppException({required this.message,this.prefix = '', required this.url});
// }

// class BadRequestException extends AppException {
//   BadRequestException({required String message, required String url})
//       : super(message, 'Bad Request', url) {
//           throw UnimplementedError();
//         }
// }

// class FetchDataException extends AppException {
//   FetchDataException([String message, String url])
//       : super(message, 'Unable to process', url);
// }

// class ApiNotRespondingException extends AppException {
//   ApiNotRespondingException([String message, String url])
//       : super(message, 'Api not responded in time', url);
// }

// class UnAuthorizedException extends AppException {
//   UnAuthorizedException([String message, String url])
//       : super(message, 'UnAuthorized request', url);
// }
