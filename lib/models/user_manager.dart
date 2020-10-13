import 'package:ecommerce/helpers/firebase_errors.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:ecommerce/models/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class UserManager extends ChangeNotifier {

  final FirebaseAuth auth = FirebaseAuth.instance;

  bool _loading = false;
  bool get loading=> _loading;

  Future<void> signIn({UserData user, Function onFail, Function onSucess}) async {
    setLoading(true);
    try {
      final UserCredential result = await auth.signInWithEmailAndPassword(
          email: user.email, password: user.password);

      await Future.delayed(Duration(seconds: 4));

      onSucess();
    } on FirebaseAuthException catch (e){
      onFail(getErrorString(e.code));
    }
    setLoading(false);

    Set loading(bool value){
      _loading = value;
      notifyListeners();
    }
  }

  void setLoading(bool value){
    _loading = value;
    notifyListeners();
  }

}