import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_project/core/cubits/socket_cubit/global_socket_cubit.dart';
import 'package:grad_project/core/flavors/flavors_functions.dart';
import 'package:grad_project/core/helpers/constants.dart';
import 'package:grad_project/core/services/socket_service.dart';
import 'package:grad_project/features/chat/logic/chat_cubit/chat_cubit.dart';
import 'package:grad_project/features/home/ui/cubit/bottom_nav_bar_cubit.dart';
import 'package:grad_project/features/home/ui/widgets/bottom%20nav%20bar/custom_admin_bottom_navigation_bar.dart';
import 'package:grad_project/features/home/ui/widgets/bottom%20nav%20bar/custom_student_bottom_nav_bar.dart';
import '../../../../core/di/dependency_injection.dart';
import '../../../../core/logic/all_courses_cubit/all_courses_cubit.dart';
import '../../../../core/widgets/custom_scaffold.dart';
import '../../../annoucements/logic/get_announcement_cubit/get_announcement_cubit.dart';
import '../../../annoucements/ui/ui cubit/announcement_filter_cubit.dart';
import '../widgets/drawer/custom_doctor_drawer.dart';
import '../widgets/drawer/custom_drawer.dart';

class HomeView extends StatefulWidget {
  static const String routeName = "/home";
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    if (FlavorsFunctions.isStudent()) {
      assignTokenAndInitSocket();
    }

    super.initState();
  }

  void assignTokenAndInitSocket() async {
    await context.read<SocketCubit>().assignUserToken();
    if (mounted) {
      if (!SocketService.isInitialized) {
        context.read<SocketCubit>().init().whenComplete(() {
          if (mounted) {
            context.read<SocketCubit>().registerUser(context: context);
          }
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<GetAnnouncementCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<AllCoursesCubit>(),
        ),
        BlocProvider(
          create: (context) => AnnouncementFilterCubit(),
        ),
        BlocProvider(
          create: (context) => getIt<ChatGroupsCubit>(),
        ),
      ],
      child: CustomScaffold(
        extendBody: true,
        body: BlocBuilder<BottomNavBarCubit, BottomNavBarState>(
          builder: (context, state) {
            return FlavorsFunctions.isStudent()
                ? Constants
                    .homeBodies[context.read<BottomNavBarCubit>().currentIndex]
                : Constants.adminHomeBodies[
                    context.read<BottomNavBarCubit>().currentIndex];
          },
        ),
        bottomNavigationBar: FlavorsFunctions.isStudent()
            ? const CustomStudentBottomNavigationBar()
            : const CustomAdminBottomNavigationBar(),
        drawer: FlavorsFunctions.isStudent()
            ? const CustomDrawer()
            : const CustomDoctorDrawer(),
      ),
    );
  }
}
