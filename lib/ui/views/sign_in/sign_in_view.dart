import 'package:flutter/material.dart';
import 'package:personal_finance_app_beta/ui/common/ui_helpers.dart';
import 'package:personal_finance_app_beta/ui/widgets/dumb_widgets/app_button_style.dart';
import 'package:personal_finance_app_beta/ui/widgets/dumb_widgets/app_text_field.dart';
import 'package:stacked/stacked.dart';

import 'sign_in_viewmodel.dart';

class SignInView extends StackedView<SignInViewModel> {
  const SignInView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SignInViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: const Text("Sign in"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppTextField(
              hintText: 'Email',
              onChanged: viewModel.onEmailChanged,
            ),
            verticalSpace(10),
            AppTextField(
              hintText: 'Password',
              onChanged: viewModel.onPasswordChanged,
            ),
            verticalSpace(10),
            AppButton(title: 'Sign in', onPressed: viewModel.signIn)
          ],
        ),
      ),
    );
  }

  @override
  SignInViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SignInViewModel();
}
