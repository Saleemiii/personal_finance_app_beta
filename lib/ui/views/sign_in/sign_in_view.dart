import 'package:flutter/material.dart';
import 'package:personal_finance_app_beta/ui/common/ui_helpers.dart';
import 'package:personal_finance_app_beta/ui/widgets/dumb_widgets/app_button_style.dart';
import 'package:personal_finance_app_beta/ui/widgets/dumb_widgets/app_text_field.dart';
import 'package:personal_finance_app_beta/ui/widgets/dumb_widgets/error_text.dart';
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
      backgroundColor: Colors.white,
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
            if (viewModel.validationMessage != null)
              ErrorText(errorMessage: viewModel.validationMessage!),
            verticalSpace(10),
            AppButton(
              title: 'Sign in',
              onPressed: viewModel.signIn,
              loading: viewModel.isBusy,
            ),
            verticalSpace(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Don\'t have an account?'),
                horizontalSpaceSmall,
                InkWell(
                  onTap: viewModel.navigateToSignUp,
                  child: const Text(
                    'Sign up',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
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
