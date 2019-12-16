import 'package:howareu/store/actions/app_action.dart';
import 'package:howareu/store/models/app_state.dart';

AppState appReducer(AppState state, action) {
  return new AppState(
    isLoading: false,
    count: counterReducer(state.count, action),
  );
}

int counterReducer(int currentCount, action) {
  if (action is IncrementCountAction) {
    currentCount++;
    return currentCount;
  } else if (action is DecrememtCountAction) {
    currentCount--;
    return currentCount;
  } else {
    return currentCount;
  }
}
