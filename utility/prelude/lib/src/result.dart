sealed class Result<S, F> {
  const Result._();

  /// This function applies a transformation to the success value of the Result,
  /// and returns a new Result that contains the transformed value. If the Result
  /// represents an error, the transformation is not applied and
  /// the error is propagated to the new Result.
  Result<S2, F> map<S2>(S2 Function(S s) f) =>
      fold((S s) => success(f(s)), failure);

  /// Returns the success value if the Result represents a success, and null
  /// if it represents an error.
  S? getOrNull() => fold((s) => s, (_) => null);

  /// Returns the success value if the Result represents a success, and defaultValue's
  /// result if it represents an error.
  S getOrElse(S Function() defaultValue) =>
      fold((s) => s, (_) => defaultValue());

  B fold<B>(B Function(S s) ifSuccess, B Function(F f) ifFailure);
}

class Failure<S, F> extends Result<S, F> {
  const Failure._(this._f) : super._();

  final F _f;

  F get value => _f;

  @override
  B fold<B>(B Function(S s) ifSuccess, B Function(F f) ifFailure) {
    return ifFailure(_f);
  }
}

class Success<S, F> extends Result<S, F> {
  const Success._(this._s) : super._();

  final S _s;

  S get value => _s;

  @override
  B fold<B>(B Function(S s) ifSuccess, B Function(F f) ifFailure) {
    return ifSuccess(_s);
  }
}

Result<S, F> failure<S, F>(F f) => Failure._(f);

Result<S, F> success<S, F>(S s) => Success._(s);
