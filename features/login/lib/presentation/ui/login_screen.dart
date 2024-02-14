import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login/data/repositories/repository/login_repository_imp.dart';
import 'package:login/domain/enums/login_status.dart';
import 'package:login/presentation/logics/cubits/login_cubit.dart';
import 'package:path/path.dart';
import 'package:tax_data/data/data_source/tax_data_api.dart';
import 'package:tax_data/data/repositories/repository/tax_data_repository_imp.dart';
import 'package:tax_data/domain/repositories/tax_data_repository.dart';
import 'package:tax_data/domain/usecases/tax_data_usecase.dart';
import 'package:tax_data/presentation/logics/cubits/login_cubit.dart';
import 'package:tax_data/presentation/ui/tax_data_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final passwordController = TextEditingController();
  final passwordFocusNode = FocusNode();
  late bool _isObscured;
  late bool _isPasswordTextEmpty = true;

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
    return BlocConsumer<LoginCubit, LoginState>(
      listenWhen: (previous, current) {
        return current.loginStatus == LoginStatus.success;
      },
      listener: (context, state) {
        final route = MaterialPageRoute(builder: (context) {
          return BlocProvider(
            create: (context) => TaxDataCubit(
                TaxDataUseCase(TaxDataRepositoryImpl(TaxDataApi()))),
            child: const TaxDataScreen(),
          );
        });
        Navigator.pushReplacement(context, route);
      },
      builder: (context, state) {
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
                        Text('tito+bs792@expatrio.com'),
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0)),
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0)),
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            suffixIcon: IconButton(
                              padding:
                                  const EdgeInsetsDirectional.only(end: 12.0),
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
                          onChanged: (text) {
                            setState(() {
                              if (text == '') {
                                _isPasswordTextEmpty = true;
                              } else {
                                _isPasswordTextEmpty = false;
                              }
                            });
                          },
                        ),
                      ),
                    ),
                    if (state.loginStatus == LoginStatus.init ||
                        state.loginStatus == LoginStatus.sent ||
                        state.loginStatus == LoginStatus.success)
                      const Text(
                        'Login status unknown',
                        style: TextStyle(color: Colors.white),
                      ),
                    if (state.loginStatus == LoginStatus.failed)
                      const Text(
                        'Login failed check your password',
                        style: TextStyle(color: Colors.red),
                      ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        if (_isPasswordTextEmpty)
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.5,
                            height: 48,
                            child: ElevatedButton(
                              onPressed: null,
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<
                                        Color>(
                                    const Color.fromARGB(255, 215, 219, 215)),
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
                        if (!_isPasswordTextEmpty &&
                            state.loginStatus == LoginStatus.init)
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.5,
                            height: 48,
                            child: ElevatedButton(
                              onPressed: () {
                                BlocProvider.of<LoginCubit>(context).onSubmit(
                                    'tito+bs792@expatrio.com',
                                    passwordController.text);
                              },
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<
                                        Color>(
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
                        if (!_isPasswordTextEmpty &&
                            state.loginStatus == LoginStatus.sent)
                          const CircularProgressIndicator(),
                        if (!_isPasswordTextEmpty &&
                            state.loginStatus == LoginStatus.failed)
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.5,
                            height: 48,
                            child: ElevatedButton(
                              onPressed: () {
                                BlocProvider.of<LoginCubit>(context).onSubmit(
                                    'tito+bs792@expatrio.com',
                                    passwordController.text);
                              },
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<
                                        Color>(
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
      },
    );
  }
}
