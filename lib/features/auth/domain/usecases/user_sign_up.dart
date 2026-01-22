import 'package:blog_app/core/common/entities/user.dart';
import 'package:blog_app/features/auth/domain/repository/repository.dart';
import 'package:fpdart/fpdart.dart';

import 'package:blog_app/core/error/failures.dart';
import 'package:blog_app/core/usecase/usecase.dart';

// Ready UseCase for use
class UserSignUp implements UseCase<User, UserSignUpParams> {
  final AuthRepository authrepository;
  UserSignUp(this.authrepository);
  @override
  Future<Either<Failures, User>> call(UserSignUpParams params) async {
    return await authrepository.signUpWithEmailPassword(
      name: params.name,
      email: params.email,
      password: params.password,
    );
  }
}

// We create a gnaric type of usecase here bcz we just pass one parameter in genaric but we need three so we that like this
class UserSignUpParams {
  final String email;
  final String password;
  final String name;

  UserSignUpParams({
    required this.email,
    required this.password,
    required this.name,
  });
}
