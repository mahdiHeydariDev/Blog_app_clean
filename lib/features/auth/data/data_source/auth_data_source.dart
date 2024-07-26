import 'package:blog_app_clean/core/error/server_error.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract interface class AuthDataSource {
  Future<String> signUp({required String userName, required String email, required String password});
  Future<String> signIn({required String email, required String password});
}

class AuthDataSourceImpl implements AuthDataSource {
  final SupabaseClient supabaseClient;
  const AuthDataSourceImpl({required this.supabaseClient});
  @override
  Future<String> signIn({required String email, required String password}) async {
    try {
      return "";
    } catch (e) {
      throw Exception();
    }
  }

  @override
  Future<String> signUp({required String userName, required String email, required String password}) async {
    try {
      final AuthResponse response = await supabaseClient.auth.signUp(
        password: password,
        email: email,
        data: {
          "name": userName,
        },
      );
      if (response.user == null) {
        throw const ServerError(
          message: "User is null",
          statusCode: 503,
        );
      }
      return response.user!.id;
    } catch (e) {
      throw ServerError(
        message: e.toString(),
        statusCode: 503,
      );
    }
  }
}
