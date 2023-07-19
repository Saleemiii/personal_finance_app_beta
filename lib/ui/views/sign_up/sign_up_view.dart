import 'package:flutter/material.dart';
import 'package:personal_finance_app_beta/ui/widgets/dumb_widgets/app_button_style.dart';
import 'package:personal_finance_app_beta/ui/widgets/dumb_widgets/app_text_field.dart';
import 'package:personal_finance_app_beta/ui/widgets/dumb_widgets/error_text.dart';
import 'package:stacked/stacked.dart';

import '../../common/ui_helpers.dart';
import 'sign_up_viewmodel.dart';

class SignUpView extends StackedView<SignUpViewModel> {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SignUpViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Sign up"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppTextField(
              inputType: TextInputType.name,
              hintText: 'Username',
              onChanged: viewModel.onUserNameChanged,
            ),
            verticalSpace(10),
            AppTextField(
              inputType: TextInputType.emailAddress,
              hintText: 'Email',
              onChanged: viewModel.onEmailChanged,
            ),
            verticalSpace(10),
            AppTextField(
              hintText: 'Password',
              obsecureText: true,
              onChanged: viewModel.onPasswordChanged,
            ),
            verticalSpace(10),
            AppTextField(
              hintText: 'Confirm Password',
              obsecureText: true,
              onChanged: viewModel.onConfirmPasswordChanged,
            ),
            verticalSpace(10),
            if (viewModel.validationMessage != null)
              ErrorText(
                errorMessage: viewModel.validationMessage!,
              ),
            AppButton(
              title: 'Sign up',
              loading: viewModel.isBusy,
              onPressed: viewModel.signUp,
            )
          ],
        ),
      ),
    );
  }

  @override
  SignUpViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SignUpViewModel();
}
