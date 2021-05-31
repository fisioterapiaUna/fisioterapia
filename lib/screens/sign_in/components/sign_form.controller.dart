import 'package:fisioterapia/Home.dart';
import 'package:flutter/material.dart';
import 'package:fisioterapia/componnenst/default_button.dart';
import 'package:fisioterapia/componnenst/form_error.dart';
import 'package:fisioterapia/screens/home/home_screen.dart';
import '../../../style_guide.dart';

class SignFormController extends StatefulWidget {
  @override
  _SignFormControllerState createState() => _SignFormControllerState();
}

class _SignFormControllerState extends State<SignFormController> {
  final _formKey = GlobalKey<FormState>();
  late String email;
  late String password;
  bool remember = false;
  final List<String> errors = [];

  void addError({required String error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({required String error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            buildEmailFormField(),
            SizedBox(height: 10),
            buildPasswordFormField(),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  // onTap: () => Navigator.pushNamed(
                  //     context, ForgotPasswordScreen.routeName),
                  child: Text(
                    "Esqueceu a senha?",
                    style: kStyleSubTitle.copyWith(
                      color: azulEscuro,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                )
              ],
            ),
            FormError(errors: errors),
            SizedBox(height: 20),
            DefaultButton(
              text: "Entrar",
              press: () {                
                // if (_formKey.currentState!.validate()) {
                //   _formKey.currentState!.save();
                //   Navigator.pushNamed(context, HomeScreen.routeName);                 
                // }
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
              },
            ),
          ],
        ),
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      style: kStyleSubTitle,
      onSaved: (newValue) => password = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length >= 8) {
          removeError(error: kShortPassError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if (value.length < 8) {
          addError(error: kShortPassError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.lock_rounded, color: azulEscuro),
        hintText: "Coloque sua senha",
        hintStyle: kStyleSubTitle.copyWith(
          color: azulEscuro.withOpacity(0.20),
        ),
        filled: true,
        contentPadding: EdgeInsets.all(15),
        fillColor: branco,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
          borderSide: BorderSide(color: Colors.transparent),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
          borderSide: BorderSide(color: Colors.transparent),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
          borderSide: BorderSide(color: Colors.red),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
          borderSide: BorderSide(color: Colors.transparent),
        ),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      style: kStyleSubTitle,
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidEmailError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kEmailNullError);
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          addError(error: kInvalidEmailError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.mail_rounded, color: azulEscuro),
        hintText: "Digite seu e-mail",
        hintStyle: kStyleSubTitle.copyWith(
          color: azulEscuro.withOpacity(0.20),
        ),
        filled: true,
        contentPadding: EdgeInsets.all(15),
        fillColor: branco,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
          borderSide: BorderSide(color: Colors.transparent),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
          borderSide: BorderSide(color: Colors.transparent),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
          borderSide: BorderSide(color: Colors.red),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
          borderSide: BorderSide(color: Colors.transparent),
        ),
      ),
    );
  }
}
