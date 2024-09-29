import 'package:doc_app/core/common_widgets/loading_widget.dart';
import 'package:doc_app/core/helper/extenstions.dart';
import 'package:doc_app/features/login_feature/logic/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/common_widgets/custom_text_widget.dart';
import '../../../../core/networking/api_error_model.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/utils/app_colors.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit,LoginState>(
      listenWhen: (previous, current) =>
          current is LoginLoadingState ||
          current is LoginSuccessState ||
          current is LoginFailureState,
      listener: (context, state) {
        if (state is LoginLoadingState) {
          showDialog(
              context: context,
              builder: (context) {
                return const LoadingWidget();
              });
        } else if (state is LoginSuccessState) {
          context.pop();
          context.pushNamed(Routes.rootScreen);
        } else if (state is LoginFailureState) {
          ApiErrorModel apiErrorModel = state.apiErrorModel;
          setupErrorState(context, apiErrorModel);
        }
      },
      child: const SizedBox.shrink(),
    );
  }

  void setupErrorState(BuildContext context, ApiErrorModel apiErrorModel) {
    context.pop();
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              icon: const Icon(
                Icons.error_outline,
                color: AppColors.deepRed,
                size: 32,
              ),
              content: CustomTextWidget(
                title: apiErrorModel.getAllErrorMessage(),
                color: AppColors.lightGrey,
                fontSize: 13,
                maxLines: 5,
              ),
              actions: [
                TextButton(
                    onPressed: () {
                      context.pop();
                    },
                    child: const Text('Ok'))
              ],
            ));
  }
}
