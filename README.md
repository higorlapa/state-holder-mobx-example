# StateHolder example

A StateHolder is a class that... holds the state.

The key point is to separate mobx from the UI controller and also keep the state in a </br>
single object.

In this way, we will have a more stable code and will make it easier to migrate from mobx anytime </br>
if you ever need to.

Migrating to Bloc's cubit for example, would be super easy.

### StateHolder

```dart

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

```

### UI Controller

```dart
    import 'state/home_state_holder.dart';

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

```
