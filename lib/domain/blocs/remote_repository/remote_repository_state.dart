part of 'remote_repository_bloc.dart';

abstract class RemoteRepositoryState {}

class RemoteRepositoryInitial extends RemoteRepositoryState {}

class RemoteRepositoryLoaded extends RemoteRepositoryState {
  RemoteRepositoryLoaded({required this.data});
  final List<TableModel> data;
}

class RemoteRepositoryError extends RemoteRepositoryState {
  RemoteRepositoryError({required this.error});
  final String error;
}
