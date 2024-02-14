part of 'failure.dart';

//The list of failure error codes
class ServerCodes {
  //
  // Custom error codes
  //

  //Connection Timeout Error Code
  static const connectionErrorCode = -1;
  //Communication Error (Invalid Data received from the data source{Network/Local})
  static const communicationErrorCode = -2;

  //
  //HTTP response codes
  //
  // 2xx
  static const codeOk = 200;
  static const codeCreated = 201;
  static const codeAccepted = 202;
  static const codeNonAuthoritativeInfo = 203;
  static const codeOkWithNoContent = 204;
  static const codeOkResetViewWithNoContent = 205;
  static const codeOkWithPartialContent = 206;
  // 4xx
  static const codeBadRequest = 400;
  static const codeUnauthorizedAccess = 401;
  static const codeForbidden = 403;
  static const codeNotFound = 404;
  static const codeRequestTimeoutFromClient = 408;
  // 5xx
  static const codeInterServerError = 500;
  static const codeServiceUnavailable = 503;
}
