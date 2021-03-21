import 'package:state_holder_mobx_example/views/home/controller/state/home_state_holder.dart';

abstract class HomeController {
  HomeStateHolder get state;

  void onIncrementButtonTap();
  void onDecrementButtonTap();
}

class HomeControllerImpl implements HomeController {
  @override
  HomeStateHolder get state => _state;

  @override
  void onDecrementButtonTap() {
    _state.setCount(count: _state.count - 1);
  }

  @override
  void onIncrementButtonTap() {
    _state.setCount(count: _state.count + 1);
  }

  HomeStateHolder _state = HomeStateHolder();
}
