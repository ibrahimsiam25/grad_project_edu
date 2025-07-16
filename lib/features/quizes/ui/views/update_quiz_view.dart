import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:grad_project/features/quizes/logic/get_quiz_by_id_cubit/get_quiz_by_id_cubit.dart';
import 'package:grad_project/features/quizes/ui/cubit/add_quiz_cubit/add_quiz_cubit.dart';
import '../../../../core/di/dependency_injection.dart';
import '../../../../core/widgets/custom_modal_progress.dart';
import '../../../../core/widgets/custom_scaffold.dart';
import '../../../../core/widgets/show_error_dialog.dart';
import '../../../../core/widgets/show_success_dialog.dart';
import '../../data/models/create_quiz_response_model.dart';
import '../../logic/update_quiz_cubit/update_quiz_cubit.dart';
import '../widgets/question_list_widget.dart';
import '../widgets/update_quiz_view_body.dart';

class UpdateQuizView extends StatelessWidget {
  static const String routeName = '/update-quiz-view';
  const UpdateQuizView({super.key});

  @override
  Widget build(BuildContext context) {
    String quizId = GoRouterState.of(context).extra as String;
    return CustomScaffold(
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<UpdateQuizCubit>(),
          ),
          BlocProvider(
            create: (context) => getIt<QuestionListCubit>(),
          ),
          BlocProvider(
            create: (context) => getIt<AddQuizCubit>(),
          ),
          BlocProvider(
            create: (context) => getIt<GetQuizByIdCubit>()..getQuizById(quizId),
          ),
        ],
        child: BlocConsumer<UpdateQuizCubit, UpdateQuizState>(
          listener: (context, state) {
            state.whenOrNull(updateQuizFailure: (error) {
              showErrorDialog(context, error);
            }, updateQuizSuccess: (data) async {
              data as QuizResponseModel;
              showSuccessDialog(context: context, message: data.message);
            });
          },
          builder: (context, state) {
            return CustomModalProgress(
                isLoading: state is UpdateQuizLoading,
                child: const UpdateQuizViewBody());
          },
        ),
      ),
    );
  }
}
