import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final passwordController = TextEditingController();
  final passwordFocusNode = FocusNode();
  var _isObscured;

  @override
  void initState() {
    super.initState();
    _isObscured = true;
  }

  @override
  void dispose() {
    super.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Align(
          alignment: Alignment.center,
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'Welcome',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.mail_outlined),
                    SizedBox(width: 8),
                    Text('john.doe@gmail.com'),
                  ],
                ),
                const SizedBox(height: 24),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.lock_outline),
                    SizedBox(width: 8),
                    Text('PASSWORD'),
                  ],
                ),
                const SizedBox(height: 4),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: SizedBox(
                    height: 48,
                    child: TextFormField(
                      obscureText: _isObscured,
                      focusNode: passwordFocusNode,
                      keyboardType: TextInputType.visiblePassword,
                      controller: passwordController,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        suffixIcon: IconButton(
                          padding: const EdgeInsetsDirectional.only(end: 12.0),
                          icon: _isObscured
                              ? const Icon(Icons.visibility)
                              : const Icon(Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              _isObscured = !_isObscured;
                            });
                          },
                        ),
                        hintText: 'Password',
                        // icon:
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please, enter the password';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color.fromARGB(255, 15, 163, 153)),
                          visualDensity: const VisualDensity(vertical: 2),
                        ),
                        child: const Text(
                          "Submit",
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
