import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  late bool _obscurePassword;
  late bool _autovalidate;
  late TextEditingController _emailController;
  late TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    _obscurePassword = true;
    _autovalidate = false;
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form page'),
      ),
      body: SafeArea(
        minimum: const EdgeInsets.all(16),
        child: _buildLoginForm(),
      ),
    );
  }

  Widget _buildLoginForm() {
    return Form(
      key: _key,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Email',
                filled: true,
                isDense: true,
              ),
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              autocorrect: false,
              validator: (val) => _validateEmail(val!),
            ),
            SizedBox(
              height: 12,
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Password',
                filled: true,
                isDense: true,
              ),
              obscureText: _obscurePassword,
              controller: _passwordController,
              validator: (val) => _validateRequired(val!, 'Password'),
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
                child: Text('LOGIN'), onPressed: _validateFormAndLogin),
          ],
        ),
      ),
    );
  }

  String? _validateRequired(String val, fieldName) {
    if (val == null || val == '') {
      return '$fieldName is required';
    }
    return null;
  }

  String? _validateEmail(String value) {
    if (value != null || value.isNotEmpty) {
      final RegExp regex = RegExp(
          r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)| (\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
      if (!regex.hasMatch(value))
        return 'Enter a valid email';
      else
        return null;
    } else {
      return 'Enter a valid email';
    }
  }

  void _validateFormAndLogin() {
    // Get form state from the global key
    var formState = _key.currentState?.validate();

    // check if form is valid
    if (formState == true) {
      print('Form is valid');
    } else {
      print('Form is not valid');
    }
  }
}
