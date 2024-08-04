
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ui_state.freezed.dart';

@freezed
sealed class UiState with _$UiState {
  const factory UiState.initial() = InitialUiState;
  const factory UiState.loading() = LoadingUiState;
  const factory UiState.loaded() = LoadedUiState;
  const factory UiState.error(Exception e) = ErrorUiState;
}
