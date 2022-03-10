import 'package:cloud_music/common/common.dart';

class ViewModel<T extends BaseHttpResponse> extends Equatable {
  final bool isCache;
  final bool requesting;
  final HttpResponse? errorResponse;
  final T? response;

  const ViewModel({
    this.isCache = false,
    this.requesting = false,
    this.errorResponse,
    this.response,
  });

  @override
  List<Object?> get props => [
        isCache,
        requesting,
        errorResponse,
        response,
      ];

  bool get hasError => errorResponse != null;

  bool get hasData => response != null;

  bool get showMask => !hasData || isCache;

  bool get showProgress => hasData && isCache && requesting;

  factory ViewModel.initial() => const ViewModel();

  factory ViewModel.requesting({T? lastResponse}) {
    return ViewModel(
      requesting: true,
      response: lastResponse,
    );
  }

  factory ViewModel.response(T? response) => ViewModel(response: response);

  factory ViewModel.error(
    HttpResponse? errorResponse, {
    bool isCache = false,
    T? response,
  }) {
    return ViewModel(
      isCache: isCache,
      errorResponse: errorResponse,
      response: response,
    );
  }

  factory ViewModel.cache(T? cache) {
    return ViewModel(
      isCache: true,
      requesting: true,
      response: cache,
    );
  }

  @override
  String toString() {
    return 'RequestViewModel{isCache: $isCache, requesting: $requesting,'
        ' errorResponse: $errorResponse, response: $response}';
  }
}
