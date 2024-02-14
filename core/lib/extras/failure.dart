import 'package:equatable/equatable.dart';

part 'server_codes.dart';

//Base class for all the errors
class Failure extends Equatable implements Exception {
  //error code
  final int errorCode;
  //error message
  final String errorMessage;
  const Failure(this.errorCode, this.errorMessage);

  @override
  List<Object?> get props => [errorCode, errorMessage];
}

class FailureConnection extends Failure {
  const FailureConnection()
      : super(ServerCodes.connectionErrorCode, 'Connection Error');
}

class FailureCommunication extends Failure {
  const FailureCommunication()
      : super(ServerCodes.communicationErrorCode, 'Communication Error');
}

class FailureBadRequest extends Failure {
  const FailureBadRequest()
      : super(ServerCodes.codeBadRequest, 'Invalid data sent to the server');
}

class FailureUnauthorizedAccess extends Failure {
  const FailureUnauthorizedAccess()
      : super(ServerCodes.codeUnauthorizedAccess,
            'Your Token might have expired. Please, relogin');
}

class FailureServerError extends Failure {
  const FailureServerError()
      : super(ServerCodes.codeInterServerError, 'Server Error');
}
