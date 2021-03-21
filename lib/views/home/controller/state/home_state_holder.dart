import 'package:mobx/mobx.dart';

part 'home_state_holder.g.dart';

class HomeStateHolder = _HomeStateHolderStore with _$HomeStateHolder;

abstract class _HomeStateHolderStore with Store {
  @observable
  int count;

  _HomeStateHolderStore({this.count = 1});

  @action
  void setCount({required int count}) {
    this.count = count;
  }
}
