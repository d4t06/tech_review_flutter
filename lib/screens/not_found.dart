
import 'package:flutter/material.dart';
import 'package:tech_review/components/default_app_bar.dart';
import 'package:tech_review/components/default_error.dart';

class NotFound extends StatelessWidget {
  const NotFound({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(),
      body: DefaultError(content: "Ops!, Page not found",),
    );
  }
}