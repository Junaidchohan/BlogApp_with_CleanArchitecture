import 'package:blog_app/core/error/failures.dart';
import 'package:blog_app/core/usecase/usecase.dart';
import 'package:blog_app/features/auth/domain/entities/user.dart';
import 'package:blog_app/features/auth/domain/repository/repository.dart';
import 'package:fpdart/fpdart.dart';

class CurrentUser implements UseCase<User, Noparams> {
  final AuthRepository authRepository;

  CurrentUser(this.authRepository);
  @override
  Future<Either<Failures, User>> call(Noparams params) async {
    return await authRepository.currentUser();
  }
}
