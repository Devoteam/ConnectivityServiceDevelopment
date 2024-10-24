import 'package:jetpack/jetpack.dart';

class SubscribeButtonViewModel extends ViewModel {
  final MutableLiveData<bool> _active = MutableLiveData(false);

  LiveData<bool> get active => _active;

  void setActive() {
    _active.value = true;
  }
}