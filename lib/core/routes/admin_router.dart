import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:grad_project/core/widgets/full_screen_image_view.dart';
import 'package:grad_project/features/annoucements/ui/views/add_annoucement_view.dart';
import 'package:grad_project/features/annoucements/ui/views/update_annoucement_view.dart';
import 'package:grad_project/features/assignments/presentation/views/assignment_details_view.dart';
import 'package:grad_project/features/assignments/presentation/views/assignment_results_view.dart';
import 'package:grad_project/features/assignments/presentation/views/create_assignment_view.dart';
import 'package:grad_project/features/assignments/presentation/views/edit_assignment_view.dart';
import 'package:grad_project/features/assignments/presentation/views/pdf_web_view.dart';
import 'package:grad_project/features/assignments/presentation/views/teachers_assignments_view.dart';
import 'package:grad_project/features/auth/ui/views/forget_password_view.dart';
import 'package:grad_project/features/auth/ui/views/confirm_account_view.dart';
import 'package:grad_project/features/dashboard/ui/views/registered_students_view.dart';
import 'package:grad_project/features/forum/ui/views/answers_view.dart';
import 'package:grad_project/features/forum/ui/views/forum_views.dart';
import 'package:grad_project/features/subjects/ui/views/qr_attendance_view.dart';
import 'package:grad_project/features/map/presentation/views/internal_map_view.dart';
import 'package:grad_project/features/profile/presentation/views/profile_view.dart';
import 'package:grad_project/features/quizes/ui/views/add_quiz_view.dart';
import 'package:grad_project/features/quizes/ui/views/quiz_details_view.dart';
import 'package:grad_project/features/quizes/ui/views/quiz_view.dart';
import 'package:grad_project/features/quizes/ui/views/update_quiz_view.dart';
import 'package:grad_project/features/profile/presentation/views/edit_profile_view.dart';
import 'package:grad_project/features/subjects/ui/views/add_lecture_view.dart';
import 'package:grad_project/features/weekly_schedule/ui/screens/weekly_schedule_view.dart';
import '../../features/auth/ui/views/auth_view.dart';
import '../../features/chat/ui/views/chat_view.dart';
import '../../features/home/ui/cubit/bottom_nav_bar_cubit.dart';
import '../../features/home/ui/views/home_view.dart';
import '../../features/parking/ui/views/parking_view.dart';
import '../../features/quizes/ui/views/quiz_results_view.dart';
import '../../features/quizes/ui/views/students_answers_review_view.dart';
import '../../features/quizes/ui/views/teacher_quizzes_view.dart';
import '../../features/subjects/ui/views/materials_view.dart';

abstract class AdminRouter {
  static GoRouter getRouter(bool isLogin) {
    return GoRouter(
      initialLocation: isLogin ? HomeView.routeName : AuthView.routeName,
      // initialLocation: ParkingView.routeName,
      routes: [
        GoRoute(
          path: HomeView.routeName,
          builder: (context, state) => BlocProvider(
            create: (context) => BottomNavBarCubit(),
            child: const HomeView(),
          ),
        ),
        GoRoute(
          path: AuthView.routeName,
          builder: (context, state) => const AuthView(),
        ),
        GoRoute(
          path: ForumViews.routeName,
          builder: (context, state) => const ForumViews(),
        ),
        GoRoute(
          path: ForgetPasswordView.routeName,
          builder: (context, state) => const ForgetPasswordView(),
        ),
        GoRoute(
          path: ChatView.routeName,
          builder: (context, state) => const ChatView(),
        ),
        GoRoute(
          path: ConfirmAccountView.routeName,
          builder: (context, state) => const ConfirmAccountView(),
        ),
        GoRoute(
          path: InternalMapView.routeName,
          builder: (context, state) => const InternalMapView(),
        ),
        GoRoute(
          path: WeeklyScheduleView.routeName,
          builder: (context, state) => const WeeklyScheduleView(),
        ),
        GoRoute(
          path: QuizDetailsView.routeName,
          builder: (context, state) => const QuizDetailsView(),
        ),
        GoRoute(
          path: QuizView.routeName,
          builder: (context, state) => const QuizView(),
        ),
        GoRoute(
          path: ProfileView.routeName,
          builder: (context, state) => const ProfileView(),
        ),
        GoRoute(
            path: MaterialsView.routeName,
            builder: (context, state) => MaterialsView(
                  courseId: state.extra as int,
                )),
        GoRoute(
            path: AnswersView.routeName,
            builder: (context, state) =>
                AnswersView(questionId: state.extra as String)),
        GoRoute(
            path: AddAnnoucementView.routeName,
            builder: (context, state) => const AddAnnoucementView()),
        GoRoute(
            path: QrAttendanceView.routeName,
            builder: (context, state) => const QrAttendanceView()),
        GoRoute(
            path: AddLectureView.routeName,
            builder: (context, state) => AddLectureView(
                  id: state.extra as int,
                )),
        GoRoute(
            path: AddQuizView.routeName,
            builder: (context, state) => const AddQuizView()),
        GoRoute(
            path: UpdateAnnoucementView.routeName,
            builder: (context, state) => const UpdateAnnoucementView()),
        GoRoute(
            path: RegisteredStudentsView.routeName,
            builder: (context, state) => const RegisteredStudentsView()),
        GoRoute(
            path: CreateAssignmentView.routeName,
            builder: (context, state) => const CreateAssignmentView()),
        GoRoute(
            path: TeacherQuizzesView.routeName,
            builder: (context, state) => const TeacherQuizzesView()),
        GoRoute(
            path: TeachersAssignmentsView.routeName,
            builder: (context, state) => const TeachersAssignmentsView()),
        GoRoute(
            path: UpdateQuizView.routeName,
            builder: (context, state) => const UpdateQuizView()),
        GoRoute(
            path: AssignmentResultsView.routeName,
            builder: (context, state) => const AssignmentResultsView()),
        GoRoute(
            path: EditProfileView.routeName,
            builder: (context, state) => const EditProfileView()),
        GoRoute(
            path: ParkingView.routeName,
            builder: (context, state) => const ParkingView()),
        GoRoute(
            path: QuizResultsView.routeName,
            builder: (context, state) => const QuizResultsView()),
        GoRoute(
            path: StudentsAnswersReviewView.routeName,
            builder: (context, state) => const StudentsAnswersReviewView()),
        GoRoute(
            path: AssignmentDetailsView.routeName,
            builder: (context, state) => const AssignmentDetailsView()),
        GoRoute(
            path: PdfWebViewPage.routeName,
            builder: (context, state) => const PdfWebViewPage()),
        GoRoute(
            path: EditAssignmentView.routeName,
            builder: (context, state) => const EditAssignmentView()),
        GoRoute(
          path: FullScreenImageView.routeName,
          builder: (context, state) => FullScreenImageView(
            imageUrl: state.extra as String,
          ),
        )
      ],
    );
  }
}
