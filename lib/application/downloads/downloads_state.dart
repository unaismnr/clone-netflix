part of 'downloads_bloc.dart';

@freezed
class DownloadsState with _$DownloadsState {
  const factory DownloadsState({
    required bool isLoading,
    List<DownloadsModel>? downloads,
    required Option<Either<MainFailure, List<DownloadsModel>>>
        downloadsSuccessOrFailureOption,
  }) = _DownloadsState;

  factory DownloadsState.initial() {
    return const DownloadsState(
      isLoading: false,
      downloadsSuccessOrFailureOption: None(),
    );
  }
}
