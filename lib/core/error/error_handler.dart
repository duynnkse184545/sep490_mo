import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'exceptions.dart';
import 'failures.dart';
import '../utils/type_defs.dart';

class ErrorHandler {
  ErrorHandler._();

  static Failure handle(dynamic error) {
    // Handle domain exceptions (DioException now handled in datasource layer)
    if (error is ServerException) {
      return Failure.serverFailure(error.message, error.code);
    } else if (error is UnauthorizedException) {
      return Failure.unauthorizedFailure(error.message);
    } else if (error is ValidationException) {
      return Failure.validationFailure(error.message);
    } else if (error is NetworkException) {
      return Failure.networkFailure(error.message);
    } else if (error is CacheException) {
      return Failure.cacheFailure(error.message);
    } else if (error is SocketException) {
      return const Failure.networkFailure('No internet connection');
    } else if (error is FormatException) {
      return const Failure.serverFailure('Invalid data format');
    } else {
      return Failure.unknownFailure(error.toString());
    }
  }

  /// Executes an async [action] using TaskEither.
  static TaskResult<T> execute<T>(Future<T> Function() action) {
    return TaskEither.tryCatch(
      () async => await action(),
      (error, stackTrace) => handle(error),
    );
  }

  /// Executes an async [action] and returns the result.
  /// If an exception occurs, it returns null and logs the error.
  static Future<T?> executeOrNull<T>(Future<T> Function() action) async {
    try {
      return await action();
    } catch (e) {
      debugPrint('⚠️ Ignored error in executeOrNull: $e');
      return null;
    }
  }


  static Future<void> handleSafely(
    Future<void> Function() operation,
    String context,
  ) async {
    try {
      await operation();
    } catch (e, stackTrace) {
      debugPrint('⚠️ $context failed: $e');
      debugPrintStack(stackTrace: stackTrace, maxFrames: 2);
    }
  }
}
