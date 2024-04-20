import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mad_soft/domain/models/table_models/table_model.dart';
import 'package:mad_soft/domain/service_contract.dart';

part 'remote_repository_event.dart';
part 'remote_repository_state.dart';

class RemoteRepositoryBloc extends Bloc<RemoteRepositoryEvent, RemoteRepositoryState> {
  RemoteRepositoryBloc(TableContract contract) : super(RemoteRepositoryInitial()) {
    on<RemoteRepositoryLoadData>((event, emit) async {
      try {
        final result = await contract.getData();
        emit(
          RemoteRepositoryLoaded(data: result),
        );
      } on Exception catch (e) {
        emit(
          RemoteRepositoryError(error: e.toString()),
        );
      }
    });
  }
}
