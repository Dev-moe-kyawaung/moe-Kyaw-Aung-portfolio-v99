import 'package:freezed_annotation/freezed_annotation.dart';
import 'models/profile_model.dart';
import 'models/project_model.dart';

part 'portfolio_state.freezed.dart';

@freezed
class PortfolioState with _$PortfolioState {
  const factory PortfolioState({
    ProfileModel? profile,
    List<ProjectModel>? projects,
    bool isLoading = true,
    String? error,
  }) = _PortfolioState;
}
