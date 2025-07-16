abstract class SocketState {}

class SocketInitial extends SocketState {}

class SocketConnecting extends SocketState {}

class SocketRegistering extends SocketState {}

class SocketRegistered extends SocketState {}

class SocketConnected extends SocketState {}

class SocketDisconnected extends SocketState {}

class SocketNeedsRegisterUser extends SocketState {}

class SocketMessageDelivered extends SocketState {}

class SocketMessageReceived extends SocketState {}

class SocketError extends SocketState {
  final String message;
  SocketError(this.message);
}
