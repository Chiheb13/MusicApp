import 'package:flutter/cupertino.dart';
import 'package:musicproject/Widgets/Welcomepage/Custom_scaffold.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Text("sign up"),
    );
  }
}
