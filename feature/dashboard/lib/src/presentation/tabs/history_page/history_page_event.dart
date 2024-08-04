part of 'history_page_bloc.dart';

@freezed
class HistoryPageEvent with _$HistoryPageEvent {
  const factory HistoryPageEvent.load() = _LoadHistoryPageEvent;
}