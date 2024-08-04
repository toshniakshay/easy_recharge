import 'package:core/core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:prelude/prelude.dart';

part 'history_page_bloc.freezed.dart';
part 'history_page_event.dart';
part 'history_page_state.dart';

@injectable
class HistoryPageBloc extends Bloc<HistoryPageEvent, HistoryPageState> {
  HistoryPageBloc(
    this._getAllTransactions,
  ) : super(HistoryPageState()) {
    on<HistoryPageEvent>(
      (event, emit) => event.map(
        load: (_) => _onLoad(emit),
      ),
    );

    add(HistoryPageEvent.load());
  }

  final GetAllTransactionsUseCase _getAllTransactions;

  Future<void> _onLoad(Emitter<HistoryPageState> emit) async {
    emit(state.copyWith(uiState: UiState.loading()));

    final transactionsResult = await _getAllTransactions();

    emit(
      transactionsResult.fold(
        (s) => state.copyWith(
          uiState: UiState.loaded(),
          transactionsHistoryList: s,
        ),
        (f) => state.copyWith(uiState: UiState.error(f)),
      ),
    );
  }
}
