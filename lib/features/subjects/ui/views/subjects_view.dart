import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_project/core/di/dependency_injection.dart';
import '../../../../core/logic/all_courses_cubit/all_courses_cubit.dart';
import '../widgets/subjects_view_body.dart';

class SubjectsView extends StatelessWidget {
  const SubjectsView({super.key});
static const String routeName = "/subjectsView";
  @override
  Widget build(BuildContext context) {
    final allCoursesCubit = getIt<AllCoursesCubit>()..get();
    return BlocProvider.value(
      value: allCoursesCubit,
      child: const SubjectsViewBody(),
    );
  }
}
