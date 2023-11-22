import 'package:flutter_riverpod/flutter_riverpod.dart';

// AuthNotifier que gestiona el estado de autenticación
class AuthNotifier extends StateNotifier<AuthState> {
  AuthNotifier() : super(AuthState());

  Future<void> login(String email, String password) async {
    state = state.copyWith(status: AuthStatus.loading);

    try {
      await Future.delayed(
          const Duration(seconds: 2)); // Simulación de una solicitud HTTP
      state = state.copyWith(status: AuthStatus.loggedIn);
    } catch (e) {
      state =
          state.copyWith(status: AuthStatus.error, errorMessage: e.toString());
    }
  }

  void logout() {
    state = state.copyWith(status: AuthStatus.loggedOut);
  }
}

// Estado de autenticación
class AuthState {
  final AuthStatus status;
  final String? errorMessage;

  AuthState({this.status = AuthStatus.initial, this.errorMessage});

  AuthState copyWith({AuthStatus? status, String? errorMessage}) {
    return AuthState(
      status: status ?? this.status,
      errorMessage: errorMessage,
    );
  }
}

// Enumeración para los estados de autenticación
enum AuthStatus { initial, loading, loggedIn, loggedOut, error }

// Provider de autenticación
final authProvider = StateNotifierProvider<AuthNotifier, AuthState>(
  (ref) => AuthNotifier(),
);
