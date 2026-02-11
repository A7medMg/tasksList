

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/network/api_result.dart';
import '../data/repos/get_profile_repo.dart';
import 'get_profile_state.dart';




class GetProfileCubit extends Cubit<GetProfileState> {
  final GetProfileRepo _getProfileRepo;
  GetProfileCubit(this._getProfileRepo) : super(const GetProfileState.initial());
  void emitGetProfileState() async {
    emit(const GetProfileState.loading());

    var response = await _getProfileRepo.getProfile();
    response.when(success: (data)async{
      emit(GetProfileState.success(data));
    }, failure: (error) {
      emit(GetProfileState.failure(
          error: error.apiErrorModel.message ?? "Something went wrong"));
    });

    }

    }

