import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeInitialEvent>(homeInitialEvent);
    on<SearchButtonClickedEvent>(searchButtonClickedEvent);
    on<UserFoundEvent>(userFoundEvent);
  }

  FutureOr<void> searchButtonClickedEvent(
      SearchButtonClickedEvent event, Emitter<HomeState> emit) {
    emit(SearchButtonClickedState());
  }

  FutureOr<void> homeInitialEvent(
      HomeInitialEvent event, Emitter<HomeState> emit) {
    emit(HomeIntialState());
  }

  FutureOr<void> userFoundEvent(UserFoundEvent event, Emitter<HomeState> emit) {
    emit(FoundUser());
  }
}
