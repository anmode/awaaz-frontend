part of 'home_bloc.dart';

@immutable
sealed class HomeState {}

abstract class HomeActionState extends HomeState {}

final class HomeInitial extends HomeState {}

class HomeIntialState extends HomeState {}

class FoundUser extends HomeActionState {}

class SearchButtonClickedState extends HomeState {}