import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:prelude/prelude.dart';

part 'dashboard_page_bloc.freezed.dart';
part 'dashboard_page_event.dart';
part 'dashboard_page_state.dart';

@injectable
class DashboardPageBloc extends Bloc<DashboardPageEvent, DashboardPageState> {
  DashboardPageBloc()
      : super(const DashboardPageState(uiState: UiState.initial())) {
    on<DashboardPageEvent>(
      (event, emit) => event.map(
        load: (_) => _onLoad(emit),
        goToWallet: (_) => _goToWallet(),
      ),
    );

    add(DashboardPageEvent.load());
  }

  Future<void> _onLoad(Emitter<DashboardPageState> emit) async {
    emit(state.copyWith(uiState: UiState.loaded()));
  }

  Future<void> _goToWallet() async {}
}
