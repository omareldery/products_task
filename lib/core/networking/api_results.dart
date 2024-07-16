import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:products_task/core/networking/api_error_handler.dart';
part 'api_results.freezed.dart';

@Freezed()
abstract class ApiResult<T> with _$ApiResult<T> {
  const factory ApiResult.success(T data) = Success<T>;
  const factory ApiResult.failure(ErrorHandler errorHandler) = Failure<T>;
}
