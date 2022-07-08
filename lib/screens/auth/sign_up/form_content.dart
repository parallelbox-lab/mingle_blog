import 'package:flutter/material.dart';
import 'package:mingle_blog/screens/home_view.dart';
import 'package:mingle_blog/services/auth_services.dart';
import 'package:mingle_blog/utils/constants.dart';

class FormContent extends StatefulWidget {
  const FormContent({Key? key}) : super(key: key);

  @override
  State<FormContent> createState() => _FormContentState();
}

class _FormContentState extends State<FormContent> {
  bool _email = false;
  bool _name = false;
  bool isLoading = false;
  bool _password = false;
  bool _submitted = false;
  bool _isVisible = false;
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  void updateStatus() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }
final AuthService _authService = AuthService();

  Future _submit() async {
    try {
      _authService.createWithEmailAndPwd(_emailController.text.trim(),_passwordController.text.trim(),_nameController.text.trim(),context);
    }catch(e){
     rethrow;
    }
    setState(()=> isLoading = false);
  }
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 30.0),
            child: _buildEmailField(),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30.0),
            child: _buildNameField(),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30.0),
            child: _buildPasswordField(),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30.0, bottom: 100),
            width: double.infinity,
            height: 50.0,
            child: _buildSubmitButton(context),
          ),
        ],
      ),
    );
  }

  TextFormField _buildEmailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      autovalidateMode: _submitted
          ? AutovalidateMode.onUserInteraction
          : AutovalidateMode.disabled,
      controller: _emailController,
      onChanged: (value) {
        value = _emailController.text;
        setState(
          () {
            if (value.isNotEmpty || !emailValidatorRegExp.hasMatch(value)) {
              _email = true;
            } else {
              _email = false;
            }
          },
        );
      },
      onSaved: (value) {
        value = _emailController.text;
      },
      validator: (value) {
        String? errorMessage;
        if (value!.isEmpty) {
          errorMessage = "\u26A0 Email Address is required";
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          errorMessage = "\u26A0 Invalid Email Address";
        }
        return errorMessage;
      },
      decoration: const InputDecoration(
        labelText: "Email address",
        labelStyle: TextStyle(
          fontFamily: 'Core Pro',
          fontSize: 16.0,
          fontWeight: FontWeight.w600,
          color: Color(0xff8E8CA1),
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
      ),
    );
  }

  TextFormField _buildNameField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      autovalidateMode: _submitted
          ? AutovalidateMode.onUserInteraction
          : AutovalidateMode.disabled,
      controller: _nameController,
      onChanged: (value) {
        value = _nameController.text;
        setState(
          () {
            if (value.isNotEmpty) {
              _name = true;
            } else {
              _name = false;
            }
          },
        );
      },
      onSaved: (value) {
        value = _nameController.text;
      },
      validator: (value) {
        String? errorMessage;
        if (value!.isEmpty) {
          errorMessage = "\u26A0 Name is required";
        }
        return errorMessage;
      },
      decoration: const InputDecoration(
        labelText: "FullName",
        labelStyle: TextStyle(
          fontFamily: 'Core Pro',
          fontSize: 16.0,
          fontWeight: FontWeight.w600,
          color: Color(0xff8E8CA1),
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
      ),
    );
  }

  TextFormField _buildPasswordField() {
    return TextFormField(
      obscureText: _isVisible ? false : true,
      autovalidateMode: _submitted
          ? AutovalidateMode.onUserInteraction
          : AutovalidateMode.disabled,
      controller: _passwordController,
      onChanged: (value) {
        value = _passwordController.text;
        setState(
          () {
            if (value.isNotEmpty || value.length < 8) {
              _password = true;
            } else {
              _password = false;
            }
          },
        );
      },
      onSaved: (value) {
        value = _passwordController.text;
      },
      validator: (value) {
        String? errorMessage;
        if (value!.isEmpty) {
          errorMessage = "\u26A0 Please Enter your password";
        } else if (value.length < 8) {
          errorMessage = "\u26A0 Password must contain at least 8 characters";
        }
        return errorMessage;
      },
      decoration: InputDecoration(
        labelText: "Enter Password",
        labelStyle: const TextStyle(
          fontFamily: 'Core Pro',
          fontSize: 16.0,
          fontWeight: FontWeight.w600,
          color: Color(0xff8E8CA1),
        ),
        errorStyle: const TextStyle(
            fontFamily: 'Core Pro',
            fontSize: 14.0,
            fontWeight: FontWeight.w600,
            color: Colors.red),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(4),
          ),
        ),
        suffixIcon: IconButton(
          onPressed: () => updateStatus(),
          icon: Icon(_isVisible ? Icons.visibility : Icons.visibility_off),
        ),
      ),
    );
  }

  TextButton _buildSubmitButton(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        primary: Colors.white,
        backgroundColor: _email == false || _password == false || _name == false
            ? primaryColor.withOpacity(0.5)
            : primaryColor,
      ),
      onPressed: _email == false || _password == false || _name == false
          ? null
          : () {
              setState(() => _submitted = true);
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                setState(() => isLoading = true);
                _submit();
               
              }
            },
      child: isLoading
          ? const CircularProgressIndicator(
              backgroundColor: Colors.white,
            )
          : const Text("Create Account",
              style: TextStyle(
                  fontFamily: 'Core Pro',
                  fontSize: 15.0,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
              textAlign: TextAlign.center),
    );
  }
}
