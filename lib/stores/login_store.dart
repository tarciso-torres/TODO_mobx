import 'package:mobx/mobx.dart';

part 'login_store.g.dart';

class LoginStore = _LoginStore with _$LoginStore;

abstract class _LoginStore with Store {

  @observable
  String email = '';

  @action
  void setEmail(String value) => email = value;

  @observable
  String password = '';

  @action
  void setPassword(String value) => password = value;

  @observable
  bool passwordVisible = true;

  @action
  void togglePasswordVisibility() => passwordVisible = !passwordVisible;

  @observable
  bool loading = false;

  @observable
  bool loggedin = false;

  @action
  Future<void> login() async{
    loading = true;

    // processar
    await Future.delayed(Duration(seconds: 2));

    loading = false;
    loggedin = true;
  }

  @computed
  bool get isEmailValid => email.contains("@") && email.length > 6;

  @computed
  bool get isPasswordValid => password.length > 6;

  @computed
  Function get loginPressed => 
    (isEmailValid && isPasswordValid && !loading) ? login : null;




}