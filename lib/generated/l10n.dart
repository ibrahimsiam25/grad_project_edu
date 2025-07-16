// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name =
        (locale.countryCode?.isEmpty ?? false)
            ? locale.languageCode
            : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `E-Learning`
  String get app_title {
    return Intl.message('E-Learning', name: 'app_title', desc: '', args: []);
  }

  /// `Welcome back!\nPlease log in to access your dashboard and stay productive.`
  String get welcome_message {
    return Intl.message(
      'Welcome back!\nPlease log in to access your dashboard and stay productive.',
      name: 'welcome_message',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message('Email', name: 'email', desc: '', args: []);
  }

  /// `Password`
  String get password {
    return Intl.message('Password', name: 'password', desc: '', args: []);
  }

  /// `Log In`
  String get login {
    return Intl.message('Log In', name: 'login', desc: '', args: []);
  }

  /// `Everything will return to its place!`
  String get success_message {
    return Intl.message(
      'Everything will return to its place!',
      name: 'success_message',
      desc: '',
      args: [],
    );
  }

  /// `🔑 It's okay! Just enter your email so we can recover your account and password!`
  String get forgot_password_message {
    return Intl.message(
      '🔑 It\'s okay! Just enter your email so we can recover your account and password!',
      name: 'forgot_password_message',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get confirm {
    return Intl.message('Confirm', name: 'confirm', desc: '', args: []);
  }

  /// `Confirmation for security!`
  String get security_confirmation {
    return Intl.message(
      'Confirmation for security!',
      name: 'security_confirmation',
      desc: '',
      args: [],
    );
  }

  /// `Verify your account!`
  String get verify_account {
    return Intl.message(
      'Verify your account!',
      name: 'verify_account',
      desc: '',
      args: [],
    );
  }

  /// `Enter the 6-digit code that was sent to you.`
  String get enter_code {
    return Intl.message(
      'Enter the 6-digit code that was sent to you.',
      name: 'enter_code',
      desc: '',
      args: [],
    );
  }

  /// `Resend?`
  String get resend {
    return Intl.message('Resend?', name: 'resend', desc: '', args: []);
  }

  /// `This field is required`
  String get field_is_required {
    return Intl.message(
      'This field is required',
      name: 'field_is_required',
      desc: '',
      args: [],
    );
  }

  /// `Forgot your password?`
  String get forgot_password {
    return Intl.message(
      'Forgot your password?',
      name: 'forgot_password',
      desc: '',
      args: [],
    );
  }

  /// `E-Learning`
  String get eLearning {
    return Intl.message('E-Learning', name: 'eLearning', desc: '', args: []);
  }

  /// `📚 Please select the subjects you want to check for posts and updates!`
  String get select_subjects {
    return Intl.message(
      '📚 Please select the subjects you want to check for posts and updates!',
      name: 'select_subjects',
      desc: '',
      args: [],
    );
  }

  /// `Weekly Schedule`
  String get weeklySchedule {
    return Intl.message(
      'Weekly Schedule',
      name: 'weeklySchedule',
      desc: '',
      args: [],
    );
  }

  /// `Time Schedule`
  String get timeSchedule {
    return Intl.message(
      'Time Schedule',
      name: 'timeSchedule',
      desc: '',
      args: [],
    );
  }

  /// `Internal Map`
  String get internalMap {
    return Intl.message(
      'Internal Map',
      name: 'internalMap',
      desc: '',
      args: [],
    );
  }

  /// `Academic Progress`
  String get academicProgress {
    return Intl.message(
      'Academic Progress',
      name: 'academicProgress',
      desc: '',
      args: [],
    );
  }

  /// `Final Results`
  String get finalResults {
    return Intl.message(
      'Final Results',
      name: 'finalResults',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message('Profile', name: 'profile', desc: '', args: []);
  }

  /// `Logout`
  String get logout {
    return Intl.message('Logout', name: 'logout', desc: '', args: []);
  }

  /// `📚 Please select the courses you want to follow for updates and announcements!`
  String get selectCources {
    return Intl.message(
      '📚 Please select the courses you want to follow for updates and announcements!',
      name: 'selectCources',
      desc: '',
      args: [],
    );
  }

  /// `Announcements`
  String get announcements {
    return Intl.message(
      'Announcements',
      name: 'announcements',
      desc: '',
      args: [],
    );
  }

  /// `Courses`
  String get courses {
    return Intl.message('Courses', name: 'courses', desc: '', args: []);
  }

  /// `Chat`
  String get chat {
    return Intl.message('Chat', name: 'chat', desc: '', args: []);
  }

  /// `Community`
  String get community {
    return Intl.message('Community', name: 'community', desc: '', args: []);
  }

  /// `👥 You can join your academic year's private group to connect with your classmates!`
  String get youCanJoinToChat {
    return Intl.message(
      '👥 You can join your academic year\'s private group to connect with your classmates!',
      name: 'youCanJoinToChat',
      desc: '',
      args: [],
    );
  }

  /// `Connect. Learn. Go!`
  String get goLearnCommunicate {
    return Intl.message(
      'Connect. Learn. Go!',
      name: 'goLearnCommunicate',
      desc: '',
      args: [],
    );
  }

  /// `Collaborate, share your ideas, and learn from your peers easily 📚`
  String get cooperateShareThoughts {
    return Intl.message(
      'Collaborate, share your ideas, and learn from your peers easily 📚',
      name: 'cooperateShareThoughts',
      desc: '',
      args: [],
    );
  }

  /// `Start writing now..`
  String get startWriting {
    return Intl.message(
      'Start writing now..',
      name: 'startWriting',
      desc: '',
      args: [],
    );
  }

  /// `🔍 Easily discover your way around the university.`
  String get discoverYourWay {
    return Intl.message(
      '🔍 Easily discover your way around the university.',
      name: 'discoverYourWay',
      desc: '',
      args: [],
    );
  }

  /// `🤔 You haven't searched for anything yet!`
  String get didntSreachYet {
    return Intl.message(
      '🤔 You haven\'t searched for anything yet!',
      name: 'didntSreachYet',
      desc: '',
      args: [],
    );
  }

  /// `Write the name of the place you want to reach.`
  String get writeYourPlace {
    return Intl.message(
      'Write the name of the place you want to reach.',
      name: 'writeYourPlace',
      desc: '',
      args: [],
    );
  }

  /// `Search for a building, lecture hall, room, etc..!`
  String get searchForBuilding {
    return Intl.message(
      'Search for a building, lecture hall, room, etc..!',
      name: 'searchForBuilding',
      desc: '',
      args: [],
    );
  }

  /// `Most searched places!`
  String get mostSreached {
    return Intl.message(
      'Most searched places!',
      name: 'mostSreached',
      desc: '',
      args: [],
    );
  }

  /// `students online now`
  String get studentsOnlineNow {
    return Intl.message(
      'students online now',
      name: 'studentsOnlineNow',
      desc: '',
      args: [],
    );
  }

  /// `Status:`
  String get status {
    return Intl.message('Status:', name: 'status', desc: '', args: []);
  }

  /// `Classes:`
  String get classes {
    return Intl.message('Classes:', name: 'classes', desc: '', args: []);
  }

  /// `Completed`
  String get completed {
    return Intl.message('Completed', name: 'completed', desc: '', args: []);
  }

  /// `Second Semester`
  String get semester_2 {
    return Intl.message(
      'Second Semester',
      name: 'semester_2',
      desc: '',
      args: [],
    );
  }

  /// `First Semester`
  String get semester_1 {
    return Intl.message(
      'First Semester',
      name: 'semester_1',
      desc: '',
      args: [],
    );
  }

  /// `In Progress`
  String get in_progress {
    return Intl.message('In Progress', name: 'in_progress', desc: '', args: []);
  }

  /// `Pending`
  String get pending {
    return Intl.message('Pending', name: 'pending', desc: '', args: []);
  }

  /// `Not Started`
  String get not_started {
    return Intl.message('Not Started', name: 'not_started', desc: '', args: []);
  }

  /// `Study`
  String get study {
    return Intl.message('Study', name: 'study', desc: '', args: []);
  }

  /// `💬 Welcome to the Q&A forum! Ask your questions, share your knowledge by answering others' questions, and benefit from your peers' experiences here!`
  String get forum_welcome_message {
    return Intl.message(
      '💬 Welcome to the Q&A forum! Ask your questions, share your knowledge by answering others\' questions, and benefit from your peers\' experiences here!',
      name: 'forum_welcome_message',
      desc: '',
      args: [],
    );
  }

  /// `Add your question!`
  String get add_your_question {
    return Intl.message(
      'Add your question!',
      name: 'add_your_question',
      desc: '',
      args: [],
    );
  }

  /// `Filter`
  String get filter {
    return Intl.message('Filter', name: 'filter', desc: '', args: []);
  }

  /// `View answers`
  String get view_answers {
    return Intl.message(
      'View answers',
      name: 'view_answers',
      desc: '',
      args: [],
    );
  }

  /// `like`
  String get interested {
    return Intl.message('like', name: 'interested', desc: '', args: []);
  }

  /// `Question statistics`
  String get question_statistics {
    return Intl.message(
      'Question statistics',
      name: 'question_statistics',
      desc: '',
      args: [],
    );
  }

  /// `Answer`
  String get answer {
    return Intl.message('Answer', name: 'answer', desc: '', args: []);
  }

  /// `View`
  String get view {
    return Intl.message('View', name: 'view', desc: '', args: []);
  }

  /// `Start`
  String get start {
    return Intl.message('Start', name: 'start', desc: '', args: []);
  }

  /// `🗺️ Where am I now?`
  String get whereAmINow {
    return Intl.message(
      '🗺️ Where am I now?',
      name: 'whereAmINow',
      desc: '',
      args: [],
    );
  }

  /// `Where are you going boss?`
  String get whereAreYouGoingBoss {
    return Intl.message(
      'Where are you going boss?',
      name: 'whereAreYouGoingBoss',
      desc: '',
      args: [],
    );
  }

  /// `📋 Test your knowledge and prepare for the exam by answering the customized questions!`
  String get testYourKnowledge {
    return Intl.message(
      '📋 Test your knowledge and prepare for the exam by answering the customized questions!',
      name: 'testYourKnowledge',
      desc: '',
      args: [],
    );
  }

  /// `Quiz`
  String get quiz {
    return Intl.message('Quiz', name: 'quiz', desc: '', args: []);
  }

  /// `Quiz Description`
  String get quizDesc {
    return Intl.message(
      'Quiz Description',
      name: 'quizDesc',
      desc: '',
      args: [],
    );
  }

  /// `Start Now!`
  String get startNow {
    return Intl.message('Start Now!', name: 'startNow', desc: '', args: []);
  }

  /// `Quiz Details`
  String get quizDetails {
    return Intl.message(
      'Quiz Details',
      name: 'quizDetails',
      desc: '',
      args: [],
    );
  }

  /// `Quiz Status`
  String get quizState {
    return Intl.message('Quiz Status', name: 'quizState', desc: '', args: []);
  }

  /// `Category`
  String get classification {
    return Intl.message('Category', name: 'classification', desc: '', args: []);
  }

  /// `Quiz Duration`
  String get quizDuration {
    return Intl.message(
      'Quiz Duration',
      name: 'quizDuration',
      desc: '',
      args: [],
    );
  }

  /// `Not Started Yet`
  String get didntStartYet {
    return Intl.message(
      'Not Started Yet',
      name: 'didntStartYet',
      desc: '',
      args: [],
    );
  }

  /// `Classwork`
  String get classWork {
    return Intl.message('Classwork', name: 'classWork', desc: '', args: []);
  }

  /// `Minute`
  String get minute {
    return Intl.message('Minute', name: 'minute', desc: '', args: []);
  }

  /// `Once`
  String get once {
    return Intl.message('Once', name: 'once', desc: '', args: []);
  }

  /// `Allowed Attempts`
  String get numOfTimesAllowed {
    return Intl.message(
      'Allowed Attempts',
      name: 'numOfTimesAllowed',
      desc: '',
      args: [],
    );
  }

  /// `Quiz Tips`
  String get quizAdvices {
    return Intl.message('Quiz Tips', name: 'quizAdvices', desc: '', args: []);
  }

  /// `📚 Prepare in Advance`
  String get prepareWell {
    return Intl.message(
      '📚 Prepare in Advance',
      name: 'prepareWell',
      desc: '',
      args: [],
    );
  }

  /// `Set aside time to review and understand key topics.`
  String get reviewTopics {
    return Intl.message(
      'Set aside time to review and understand key topics.',
      name: 'reviewTopics',
      desc: '',
      args: [],
    );
  }

  /// `⏰ Manage Your Time`
  String get manageTime {
    return Intl.message(
      '⏰ Manage Your Time',
      name: 'manageTime',
      desc: '',
      args: [],
    );
  }

  /// `Divide your time wisely between questions, and don’t spend too long on one.`
  String get timeManagement {
    return Intl.message(
      'Divide your time wisely between questions, and don’t spend too long on one.',
      name: 'timeManagement',
      desc: '',
      args: [],
    );
  }

  /// `🔍 Read Questions Carefully`
  String get readCarefully {
    return Intl.message(
      '🔍 Read Questions Carefully',
      name: 'readCarefully',
      desc: '',
      args: [],
    );
  }

  /// `Make sure you fully understand the question before answering.`
  String get understandBeforeAnswering {
    return Intl.message(
      'Make sure you fully understand the question before answering.',
      name: 'understandBeforeAnswering',
      desc: '',
      args: [],
    );
  }

  /// `😌 Stay Calm and Focused`
  String get stayCalm {
    return Intl.message(
      '😌 Stay Calm and Focused',
      name: 'stayCalm',
      desc: '',
      args: [],
    );
  }

  /// `Take deep breaths and trust your abilities!`
  String get stayConfident {
    return Intl.message(
      'Take deep breaths and trust your abilities!',
      name: 'stayConfident',
      desc: '',
      args: [],
    );
  }

  /// `Good Luck! 🍀`
  String get goodLuck {
    return Intl.message('Good Luck! 🍀', name: 'goodLuck', desc: '', args: []);
  }

  /// `Time Remaining`
  String get timeRemaining {
    return Intl.message(
      'Time Remaining',
      name: 'timeRemaining',
      desc: '',
      args: [],
    );
  }

  /// `Clear Answer Selection`
  String get clearAnswerSelection {
    return Intl.message(
      'Clear Answer Selection',
      name: 'clearAnswerSelection',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message('Next', name: 'next', desc: '', args: []);
  }

  /// `Previous`
  String get previous {
    return Intl.message('Previous', name: 'previous', desc: '', args: []);
  }

  /// `Submit & Finish`
  String get submitAndFinish {
    return Intl.message(
      'Submit & Finish',
      name: 'submitAndFinish',
      desc: '',
      args: [],
    );
  }

  /// `Quiz Navigation`
  String get quizNavigation {
    return Intl.message(
      'Quiz Navigation',
      name: 'quizNavigation',
      desc: '',
      args: [],
    );
  }

  /// `Done`
  String get done {
    return Intl.message('Done', name: 'done', desc: '', args: []);
  }

  /// `All Days`
  String get all_days {
    return Intl.message('All Days', name: 'all_days', desc: '', args: []);
  }

  /// `Saturday`
  String get saturday {
    return Intl.message('Saturday', name: 'saturday', desc: '', args: []);
  }

  /// `Sunday`
  String get sunday {
    return Intl.message('Sunday', name: 'sunday', desc: '', args: []);
  }

  /// `Monday`
  String get monday {
    return Intl.message('Monday', name: 'monday', desc: '', args: []);
  }

  /// `Tuesday`
  String get tuesday {
    return Intl.message('Tuesday', name: 'tuesday', desc: '', args: []);
  }

  /// `Wednesday`
  String get wednesday {
    return Intl.message('Wednesday', name: 'wednesday', desc: '', args: []);
  }

  /// `Thursday`
  String get thursday {
    return Intl.message('Thursday', name: 'thursday', desc: '', args: []);
  }

  /// `Days`
  String get days {
    return Intl.message('Days', name: 'days', desc: '', args: []);
  }

  /// `Subject Name`
  String get subject_name {
    return Intl.message(
      'Subject Name',
      name: 'subject_name',
      desc: '',
      args: [],
    );
  }

  /// `Time`
  String get time {
    return Intl.message('Time', name: 'time', desc: '', args: []);
  }

  /// `Type`
  String get type {
    return Intl.message('Type', name: 'type', desc: '', args: []);
  }

  /// `Teacher`
  String get teacher {
    return Intl.message('Teacher', name: 'teacher', desc: '', args: []);
  }

  /// `Place`
  String get place {
    return Intl.message('Place', name: 'place', desc: '', args: []);
  }

  /// `status`
  String get condition {
    return Intl.message('status', name: 'condition', desc: '', args: []);
  }

  /// `Weekly Schedule`
  String get weekly_schedule {
    return Intl.message(
      'Weekly Schedule',
      name: 'weekly_schedule',
      desc: '',
      args: [],
    );
  }

  /// `📅 Welcome to the Weekly Schedule page! Select the days you want to view to easily track your lecture and practical session timings.`
  String get schedule_welcome_message {
    return Intl.message(
      '📅 Welcome to the Weekly Schedule page! Select the days you want to view to easily track your lecture and practical session timings.',
      name: 'schedule_welcome_message',
      desc: '',
      args: [],
    );
  }

  /// `👤Welcome to the profile page! 📝 Here you can review and update your personal information.`
  String get profile_welcome_message {
    return Intl.message(
      '👤Welcome to the profile page! 📝 Here you can review and update your personal information.',
      name: 'profile_welcome_message',
      desc: '',
      args: [],
    );
  }

  /// `Profile Picture`
  String get profile_picture {
    return Intl.message(
      'Profile Picture',
      name: 'profile_picture',
      desc: '',
      args: [],
    );
  }

  /// `Group`
  String get Group {
    return Intl.message('Group', name: 'Group', desc: '', args: []);
  }

  /// `Section`
  String get Section {
    return Intl.message('Section', name: 'Section', desc: '', args: []);
  }

  /// `Main information`
  String get main_info {
    return Intl.message(
      'Main information',
      name: 'main_info',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get name {
    return Intl.message('Name', name: 'name', desc: '', args: []);
  }

  /// `College`
  String get college {
    return Intl.message('College', name: 'college', desc: '', args: []);
  }

  /// `Level`
  String get level {
    return Intl.message('Level', name: 'level', desc: '', args: []);
  }

  /// `Group`
  String get group {
    return Intl.message('Group', name: 'group', desc: '', args: []);
  }

  /// `Section`
  String get section {
    return Intl.message('Section', name: 'section', desc: '', args: []);
  }

  /// `Overall Grade`
  String get Overall_Grade {
    return Intl.message(
      'Overall Grade',
      name: 'Overall_Grade',
      desc: '',
      args: [],
    );
  }

  /// `Material`
  String get material {
    return Intl.message('Material', name: 'material', desc: '', args: []);
  }

  /// `🎓📚 Everything you need for your course in one place: lectures, sections, assignments, quizzes, videos, midterms, and final exams!`
  String get material_description {
    return Intl.message(
      '🎓📚 Everything you need for your course in one place: lectures, sections, assignments, quizzes, videos, midterms, and final exams!',
      name: 'material_description',
      desc: '',
      args: [],
    );
  }

  /// `complete`
  String get complete {
    return Intl.message('complete', name: 'complete', desc: '', args: []);
  }

  /// `open`
  String get open {
    return Intl.message('open', name: 'open', desc: '', args: []);
  }

  /// `download`
  String get download {
    return Intl.message('download', name: 'download', desc: '', args: []);
  }

  /// `Lectures`
  String get lectures {
    return Intl.message('Lectures', name: 'lectures', desc: '', args: []);
  }

  /// `Sections`
  String get sections {
    return Intl.message('Sections', name: 'sections', desc: '', args: []);
  }

  /// `Assignment`
  String get assignment {
    return Intl.message('Assignment', name: 'assignment', desc: '', args: []);
  }

  /// `all`
  String get all {
    return Intl.message('all', name: 'all', desc: '', args: []);
  }

  /// `هنا يمكنك استعراض جميع الإجابات المقدمة للسؤال. اقرأ آراء زملائك واقتراحاتهم!`
  String get Answers_welcome_message {
    return Intl.message(
      'هنا يمكنك استعراض جميع الإجابات المقدمة للسؤال. اقرأ آراء زملائك واقتراحاتهم!',
      name: 'Answers_welcome_message',
      desc: '',
      args: [],
    );
  }

  /// `الإجابات`
  String get Answers {
    return Intl.message('الإجابات', name: 'Answers', desc: '', args: []);
  }

  /// `Dashboard`
  String get dashboard {
    return Intl.message('Dashboard', name: 'dashboard', desc: '', args: []);
  }

  /// `News`
  String get news {
    return Intl.message('News', name: 'news', desc: '', args: []);
  }

  /// `Quizzes`
  String get quizzes {
    return Intl.message('Quizzes', name: 'quizzes', desc: '', args: []);
  }

  /// `Add News!`
  String get add_news {
    return Intl.message('Add News!', name: 'add_news', desc: '', args: []);
  }

  /// `📰 Create and manage important news and announcements for your courses easily, and keep your students updated!`
  String get create_and_manage_news {
    return Intl.message(
      '📰 Create and manage important news and announcements for your courses easily, and keep your students updated!',
      name: 'create_and_manage_news',
      desc: '',
      args: [],
    );
  }

  /// `👨‍🏫 Easily manage your courses, from students to lectures and quizzes!`
  String get course_management_center {
    return Intl.message(
      '👨‍🏫 Easily manage your courses, from students to lectures and quizzes!',
      name: 'course_management_center',
      desc: '',
      args: [],
    );
  }

  /// `Add New Annoucement`
  String get add_new {
    return Intl.message(
      'Add New Annoucement',
      name: 'add_new',
      desc: '',
      args: [],
    );
  }

  /// `🆕 Add a new news item to keep your students updated with all the latest news and updates`
  String get add_new_news {
    return Intl.message(
      '🆕 Add a new news item to keep your students updated with all the latest news and updates',
      name: 'add_new_news',
      desc: '',
      args: [],
    );
  }

  /// `Annoucement Title`
  String get news_title {
    return Intl.message(
      'Annoucement Title',
      name: 'news_title',
      desc: '',
      args: [],
    );
  }

  /// `Add a clear and direct title that summarizes the Annoucement accurately!`
  String get news_title_description {
    return Intl.message(
      'Add a clear and direct title that summarizes the Annoucement accurately!',
      name: 'news_title_description',
      desc: '',
      args: [],
    );
  }

  /// `Annoucement Content`
  String get news_content {
    return Intl.message(
      'Annoucement Content',
      name: 'news_content',
      desc: '',
      args: [],
    );
  }

  /// `Add the Annoucement details to clarify the information for students!`
  String get news_content_description {
    return Intl.message(
      'Add the Annoucement details to clarify the information for students!',
      name: 'news_content_description',
      desc: '',
      args: [],
    );
  }

  /// `Study Level`
  String get study_level {
    return Intl.message('Study Level', name: 'study_level', desc: '', args: []);
  }

  /// `Set Publish Time`
  String get schedule_publish_time {
    return Intl.message(
      'Set Publish Time',
      name: 'schedule_publish_time',
      desc: '',
      args: [],
    );
  }

  /// `Set a time to publish the Annoucement as a public announcement!`
  String get publish_time_description {
    return Intl.message(
      'Set a time to publish the Annoucement as a public announcement!',
      name: 'publish_time_description',
      desc: '',
      args: [],
    );
  }

  /// `Publish!`
  String get publish {
    return Intl.message('Publish!', name: 'publish', desc: '', args: []);
  }

  /// `View Registered Students`
  String get view_registered_students {
    return Intl.message(
      'View Registered Students',
      name: 'view_registered_students',
      desc: '',
      args: [],
    );
  }

  /// `📚 Full control over your courses, from adding lectures to tracking student progress and managing quizzes and assignments!`
  String get full_control_over_courses {
    return Intl.message(
      '📚 Full control over your courses, from adding lectures to tracking student progress and managing quizzes and assignments!',
      name: 'full_control_over_courses',
      desc: '',
      args: [],
    );
  }

  /// `View Curriculum`
  String get view_curriculum {
    return Intl.message(
      'View Curriculum',
      name: 'view_curriculum',
      desc: '',
      args: [],
    );
  }

  /// `🎓Find out your academic level with ease. Details of your grades and ranking are at your fingertips!`
  String get academic_progress_welcome_message {
    return Intl.message(
      '🎓Find out your academic level with ease. Details of your grades and ranking are at your fingertips!',
      name: 'academic_progress_welcome_message',
      desc: '',
      args: [],
    );
  }

  /// `Percentage`
  String get percentage {
    return Intl.message('Percentage', name: 'percentage', desc: '', args: []);
  }

  /// `1st Semester`
  String get first_semester {
    return Intl.message(
      '1st Semester',
      name: 'first_semester',
      desc: '',
      args: [],
    );
  }

  /// `2nd Semester`
  String get second_semester {
    return Intl.message(
      '2nd Semester',
      name: 'second_semester',
      desc: '',
      args: [],
    );
  }

  /// `Subjects count`
  String get number_of_subjects {
    return Intl.message(
      'Subjects count',
      name: 'number_of_subjects',
      desc: '',
      args: [],
    );
  }

  /// `Total`
  String get total {
    return Intl.message('Total', name: 'total', desc: '', args: []);
  }

  /// `Subject`
  String get subject {
    return Intl.message('Subject', name: 'subject', desc: '', args: []);
  }

  /// `Attendance`
  String get attendance {
    return Intl.message('Attendance', name: 'attendance', desc: '', args: []);
  }

  /// `Assignments`
  String get assignments {
    return Intl.message('Assignments', name: 'assignments', desc: '', args: []);
  }

  /// `Midterm`
  String get midterm {
    return Intl.message('Midterm', name: 'midterm', desc: '', args: []);
  }

  /// `Classwork`
  String get class_work {
    return Intl.message('Classwork', name: 'class_work', desc: '', args: []);
  }

  /// `Final exam`
  String get final_exam {
    return Intl.message('Final exam', name: 'final_exam', desc: '', args: []);
  }

  /// `QR attendance`
  String get qr_attendance {
    return Intl.message(
      'QR attendance',
      name: 'qr_attendance',
      desc: '',
      args: [],
    );
  }

  /// `Add courses`
  String get add_courses {
    return Intl.message('Add courses', name: 'add_courses', desc: '', args: []);
  }

  /// `Update lecture status`
  String get update_lecture_status {
    return Intl.message(
      'Update lecture status',
      name: 'update_lecture_status',
      desc: '',
      args: [],
    );
  }

  /// `No. of students`
  String get students_count {
    return Intl.message(
      'No. of students',
      name: 'students_count',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message('Cancel', name: 'cancel', desc: '', args: []);
  }

  /// `📅 Update lecture status!`
  String get update_lecture_status_title {
    return Intl.message(
      '📅 Update lecture status!',
      name: 'update_lecture_status_title',
      desc: '',
      args: [],
    );
  }

  /// `Select the current lecture status based on its actual situation..`
  String get update_lecture_status_description {
    return Intl.message(
      'Select the current lecture status based on its actual situation..',
      name: 'update_lecture_status_description',
      desc: '',
      args: [],
    );
  }

  /// `On time (automatic).`
  String get on_time {
    return Intl.message(
      'On time (automatic).',
      name: 'on_time',
      desc: '',
      args: [],
    );
  }

  /// `Postponed.`
  String get postponed {
    return Intl.message('Postponed.', name: 'postponed', desc: '', args: []);
  }

  /// `Students Management`
  String get students_management {
    return Intl.message(
      'Students Management',
      name: 'students_management',
      desc: '',
      args: [],
    );
  }

  /// `Forum Management`
  String get forum_management {
    return Intl.message(
      'Forum Management',
      name: 'forum_management',
      desc: '',
      args: [],
    );
  }

  /// `Final Grades`
  String get final_grades {
    return Intl.message(
      'Final Grades',
      name: 'final_grades',
      desc: '',
      args: [],
    );
  }

  /// `Registered Students`
  String get registered_students {
    return Intl.message(
      'Registered Students',
      name: 'registered_students',
      desc: '',
      args: [],
    );
  }

  /// `No. of registered students:`
  String get registered_students_count {
    return Intl.message(
      'No. of registered students:',
      name: 'registered_students_count',
      desc: '',
      args: [],
    );
  }

  /// `👥 View a list of all students registered in the course with details like name and academic number.`
  String get registered_students_description {
    return Intl.message(
      '👥 View a list of all students registered in the course with details like name and academic number.',
      name: 'registered_students_description',
      desc: '',
      args: [],
    );
  }

  /// `Enter the student’s name`
  String get search_placeholder {
    return Intl.message(
      'Enter the student’s name',
      name: 'search_placeholder',
      desc: '',
      args: [],
    );
  }

  /// `👨‍🏫 Easily manage your course materials—from students to lectures and quizzes!`
  String get materials_center {
    return Intl.message(
      '👨‍🏫 Easily manage your course materials—from students to lectures and quizzes!',
      name: 'materials_center',
      desc: '',
      args: [],
    );
  }

  /// `Add Study Content`
  String get addStudyContent {
    return Intl.message(
      'Add Study Content',
      name: 'addStudyContent',
      desc: '',
      args: [],
    );
  }

  /// `📚 Easily add new study materials and manage their details!`
  String get addStudyContentSubtitle {
    return Intl.message(
      '📚 Easily add new study materials and manage their details!',
      name: 'addStudyContentSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Enter a clear title that accurately reflects the lecture topic!`
  String get lectureTitleHint {
    return Intl.message(
      'Enter a clear title that accurately reflects the lecture topic!',
      name: 'lectureTitleHint',
      desc: '',
      args: [],
    );
  }

  /// `A brief summary of the lecture content and its educational objectives!`
  String get lectureDescriptionHint {
    return Intl.message(
      'A brief summary of the lecture content and its educational objectives!',
      name: 'lectureDescriptionHint',
      desc: '',
      args: [],
    );
  }

  /// `Lecture Title`
  String get lectureTitle {
    return Intl.message(
      'Lecture Title',
      name: 'lectureTitle',
      desc: '',
      args: [],
    );
  }

  /// `Lecture Description`
  String get lectureDescription {
    return Intl.message(
      'Lecture Description',
      name: 'lectureDescription',
      desc: '',
      args: [],
    );
  }

  /// `Add Link`
  String get addLink {
    return Intl.message('Add Link', name: 'addLink', desc: '', args: []);
  }

  /// `Upload Files`
  String get uploadFiles {
    return Intl.message(
      'Upload Files',
      name: 'uploadFiles',
      desc: '',
      args: [],
    );
  }

  /// `Please enter the required fields`
  String get pleaseEnterRequiredFields {
    return Intl.message(
      'Please enter the required fields',
      name: 'pleaseEnterRequiredFields',
      desc: '',
      args: [],
    );
  }

  /// `Click here to add more files`
  String get clickheretoaddmorefiles {
    return Intl.message(
      'Click here to add more files',
      name: 'clickheretoaddmorefiles',
      desc: '',
      args: [],
    );
  }

  /// `No files uploaded yet`
  String get noFilesUploaded {
    return Intl.message(
      'No files uploaded yet',
      name: 'noFilesUploaded',
      desc: '',
      args: [],
    );
  }

  /// `Add a link to the study material.`
  String get addLinkDescrebtion {
    return Intl.message(
      'Add a link to the study material.',
      name: 'addLinkDescrebtion',
      desc: '',
      args: [],
    );
  }

  /// `Welcome! Here you can view the upcoming quiz dates and submit the fees for each subject.⏰`
  String get time_schedule_welcome_message {
    return Intl.message(
      'Welcome! Here you can view the upcoming quiz dates and submit the fees for each subject.⏰',
      name: 'time_schedule_welcome_message',
      desc: '',
      args: [],
    );
  }

  /// `Search by activity type or name`
  String get search_for_task {
    return Intl.message(
      'Search by activity type or name',
      name: 'search_for_task',
      desc: '',
      args: [],
    );
  }

  /// `Next 7 Days`
  String get next_seven_days {
    return Intl.message(
      'Next 7 Days',
      name: 'next_seven_days',
      desc: '',
      args: [],
    );
  }

  /// `Quiz Details`
  String get quiz_details {
    return Intl.message(
      'Quiz Details',
      name: 'quiz_details',
      desc: '',
      args: [],
    );
  }

  /// `Add to send`
  String get add_to_send {
    return Intl.message('Add to send', name: 'add_to_send', desc: '', args: []);
  }

  /// `sent`
  String get sent {
    return Intl.message('sent', name: 'sent', desc: '', args: []);
  }

  /// `📊 Welcome to the final results page! Here you can easily and clearly review your academic performance and grades in various courses. We wish you all the best and success!`
  String get final_results_welcome_message {
    return Intl.message(
      '📊 Welcome to the final results page! Here you can easily and clearly review your academic performance and grades in various courses. We wish you all the best and success!',
      name: 'final_results_welcome_message',
      desc: '',
      args: [],
    );
  }

  /// `Course Name`
  String get course_name {
    return Intl.message('Course Name', name: 'course_name', desc: '', args: []);
  }

  /// `Course Code`
  String get course_code {
    return Intl.message('Course Code', name: 'course_code', desc: '', args: []);
  }

  /// `Grade`
  String get grade {
    return Intl.message('Grade', name: 'grade', desc: '', args: []);
  }

  /// `Course Status`
  String get course_status {
    return Intl.message(
      'Course Status',
      name: 'course_status',
      desc: '',
      args: [],
    );
  }

  /// `OK`
  String get ok {
    return Intl.message('OK', name: 'ok', desc: '', args: []);
  }

  /// `Create a new quiz`
  String get createQuiz {
    return Intl.message(
      'Create a new quiz',
      name: 'createQuiz',
      desc: '',
      args: [],
    );
  }

  /// `❓Create, edit, and track quiz scores easily to ensure effective evaluation!`
  String get quizHelperText {
    return Intl.message(
      '❓Create, edit, and track quiz scores easily to ensure effective evaluation!',
      name: 'quizHelperText',
      desc: '',
      args: [],
    );
  }

  /// `Quiz Title`
  String get quizTitle {
    return Intl.message('Quiz Title', name: 'quizTitle', desc: '', args: []);
  }

  /// `Enter a clear title that reflects the quiz topic.`
  String get quizTitleHelper {
    return Intl.message(
      'Enter a clear title that reflects the quiz topic.',
      name: 'quizTitleHelper',
      desc: '',
      args: [],
    );
  }

  /// `Quiz Description`
  String get quizDescription {
    return Intl.message(
      'Quiz Description',
      name: 'quizDescription',
      desc: '',
      args: [],
    );
  }

  /// `Provide a brief description that outlines the quiz content and objectives.`
  String get quizDescriptionHelper {
    return Intl.message(
      'Provide a brief description that outlines the quiz content and objectives.',
      name: 'quizDescriptionHelper',
      desc: '',
      args: [],
    );
  }

  /// `Set Time`
  String get setTime {
    return Intl.message('Set Time', name: 'setTime', desc: '', args: []);
  }

  /// `Number of Questions`
  String get questionsCount {
    return Intl.message(
      'Number of Questions',
      name: 'questionsCount',
      desc: '',
      args: [],
    );
  }

  /// `Question Grade`
  String get questionGrade {
    return Intl.message(
      'Question Grade',
      name: 'questionGrade',
      desc: '',
      args: [],
    );
  }

  /// `Final Grade`
  String get finalGrade {
    return Intl.message('Final Grade', name: 'finalGrade', desc: '', args: []);
  }

  /// `Grade`
  String get single_grade {
    return Intl.message('Grade', name: 'single_grade', desc: '', args: []);
  }

  /// `Schedule Quiz`
  String get scheduleQuiz {
    return Intl.message(
      'Schedule Quiz',
      name: 'scheduleQuiz',
      desc: '',
      args: [],
    );
  }

  /// `Set a time to publish the quiz as public news!`
  String get scheduleQuizHelper {
    return Intl.message(
      'Set a time to publish the quiz as public news!',
      name: 'scheduleQuizHelper',
      desc: '',
      args: [],
    );
  }

  /// `Starts at`
  String get startsAt {
    return Intl.message('Starts at', name: 'startsAt', desc: '', args: []);
  }

  /// `Ends at`
  String get endsAt {
    return Intl.message('Ends at', name: 'endsAt', desc: '', args: []);
  }

  /// `Questions`
  String get questions {
    return Intl.message('Questions', name: 'questions', desc: '', args: []);
  }

  /// `Choose the type of questions you want to include in the quiz`
  String get questionTypeHelper {
    return Intl.message(
      'Choose the type of questions you want to include in the quiz',
      name: 'questionTypeHelper',
      desc: '',
      args: [],
    );
  }

  /// `Multiple Choice`
  String get multipleChoice {
    return Intl.message(
      'Multiple Choice',
      name: 'multipleChoice',
      desc: '',
      args: [],
    );
  }

  /// `Texts`
  String get text {
    return Intl.message('Texts', name: 'text', desc: '', args: []);
  }

  /// `Images`
  String get images {
    return Intl.message('Images', name: 'images', desc: '', args: []);
  }

  /// `Show results and allow viewing answers after completing the quiz`
  String get showResultsAfterSubmit {
    return Intl.message(
      'Show results and allow viewing answers after completing the quiz',
      name: 'showResultsAfterSubmit',
      desc: '',
      args: [],
    );
  }

  /// `Select Week`
  String get SelectWeek {
    return Intl.message('Select Week', name: 'SelectWeek', desc: '', args: []);
  }

  /// `Week`
  String get week {
    return Intl.message('Week', name: 'week', desc: '', args: []);
  }

  /// `Questions`
  String get questionsWithNoThe {
    return Intl.message(
      'Questions',
      name: 'questionsWithNoThe',
      desc: '',
      args: [],
    );
  }

  /// `Select Date`
  String get selectDate {
    return Intl.message('Select Date', name: 'selectDate', desc: '', args: []);
  }

  /// `Select Time`
  String get selectTime {
    return Intl.message('Select Time', name: 'selectTime', desc: '', args: []);
  }

  /// `Enter your question`
  String get enterYourQuestion {
    return Intl.message(
      'Enter your question',
      name: 'enterYourQuestion',
      desc: '',
      args: [],
    );
  }

  /// `Maximum number of questions reached`
  String get maximumNumberOfQuestions {
    return Intl.message(
      'Maximum number of questions reached',
      name: 'maximumNumberOfQuestions',
      desc: '',
      args: [],
    );
  }

  /// `All questions must have a question, at least one answer, and a selected correct answer.`
  String get incompleteQuestionError {
    return Intl.message(
      'All questions must have a question, at least one answer, and a selected correct answer.',
      name: 'incompleteQuestionError',
      desc: '',
      args: [],
    );
  }

  /// `You have to specify date and time for the quiz.`
  String get dateAndTimeError {
    return Intl.message(
      'You have to specify date and time for the quiz.',
      name: 'dateAndTimeError',
      desc: '',
      args: [],
    );
  }

  /// `Please provide at least two answers for each question`
  String get atLeastTwoAnswers {
    return Intl.message(
      'Please provide at least two answers for each question',
      name: 'atLeastTwoAnswers',
      desc: '',
      args: [],
    );
  }

  /// `Edit`
  String get edit {
    return Intl.message('Edit', name: 'edit', desc: '', args: []);
  }

  /// `Delete`
  String get delete {
    return Intl.message('Delete', name: 'delete', desc: '', args: []);
  }

  /// `Edit Announcement`
  String get editAnnouncement {
    return Intl.message(
      'Edit Announcement',
      name: 'editAnnouncement',
      desc: '',
      args: [],
    );
  }

  /// `✏️ Edit your announcement to keep your students informed with the latest details and updates`
  String get edit_news {
    return Intl.message(
      '✏️ Edit your announcement to keep your students informed with the latest details and updates',
      name: 'edit_news',
      desc: '',
      args: [],
    );
  }

  /// `Other`
  String get other {
    return Intl.message('Other', name: 'other', desc: '', args: []);
  }

  /// `Lecture`
  String get lecture {
    return Intl.message('Lecture', name: 'lecture', desc: '', args: []);
  }

  /// `Please upload the files first`
  String get pleaseUploadFiles {
    return Intl.message(
      'Please upload the files first',
      name: 'pleaseUploadFiles',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get search {
    return Intl.message('Search', name: 'search', desc: '', args: []);
  }

  /// `status`
  String get statuss {
    return Intl.message('status', name: 'statuss', desc: '', args: []);
  }

  /// `Scheduled Quizzes`
  String get scheduled_quizzes {
    return Intl.message(
      'Scheduled Quizzes',
      name: 'scheduled_quizzes',
      desc: '',
      args: [],
    );
  }

  /// `Previous Quizzes`
  String get previous_quizzes {
    return Intl.message(
      'Previous Quizzes',
      name: 'previous_quizzes',
      desc: '',
      args: [],
    );
  }

  /// `📅 View a list of upcoming quizzes with start/end times and settings.`
  String get scheduled_quizzes_description {
    return Intl.message(
      '📅 View a list of upcoming quizzes with start/end times and settings.',
      name: 'scheduled_quizzes_description',
      desc: '',
      args: [],
    );
  }

  /// `📜 Browse past quizzes, review results and answers, and assess performance.`
  String get previous_quizzes_description {
    return Intl.message(
      '📜 Browse past quizzes, review results and answers, and assess performance.',
      name: 'previous_quizzes_description',
      desc: '',
      args: [],
    );
  }

  /// `Results`
  String get results {
    return Intl.message('Results', name: 'results', desc: '', args: []);
  }

  /// `📊 View students’ quiz results, including grades!`
  String get results_description {
    return Intl.message(
      '📊 View students’ quiz results, including grades!',
      name: 'results_description',
      desc: '',
      args: [],
    );
  }

  /// `Average student score in this quiz`
  String get average_score {
    return Intl.message(
      'Average student score in this quiz',
      name: 'average_score',
      desc: '',
      args: [],
    );
  }

  /// `Score`
  String get score {
    return Intl.message('Score', name: 'score', desc: '', args: []);
  }

  /// `Final`
  String get finalDegree {
    return Intl.message('Final', name: 'finalDegree', desc: '', args: []);
  }

  /// `Search..`
  String get theSearch {
    return Intl.message('Search..', name: 'theSearch', desc: '', args: []);
  }

  /// `📝 Organize assignments, review solutions, and update grades with ease!`
  String get assignments_home_message {
    return Intl.message(
      '📝 Organize assignments, review solutions, and update grades with ease!',
      name: 'assignments_home_message',
      desc: '',
      args: [],
    );
  }

  /// `Create Assignment`
  String get create_assignment {
    return Intl.message(
      'Create Assignment',
      name: 'create_assignment',
      desc: '',
      args: [],
    );
  }

  /// `Scheduled Assignments`
  String get scheduled_assignments {
    return Intl.message(
      'Scheduled Assignments',
      name: 'scheduled_assignments',
      desc: '',
      args: [],
    );
  }

  /// `Previous Assignments`
  String get previous_assignments {
    return Intl.message(
      'Previous Assignments',
      name: 'previous_assignments',
      desc: '',
      args: [],
    );
  }

  /// `Create New Assignment`
  String get create_new_assignment {
    return Intl.message(
      'Create New Assignment',
      name: 'create_new_assignment',
      desc: '',
      args: [],
    );
  }

  /// `📑 Create a new assignment by specifying a title, description, due date, and attaching any supporting files.`
  String get create_assignment_welcome_message {
    return Intl.message(
      '📑 Create a new assignment by specifying a title, description, due date, and attaching any supporting files.',
      name: 'create_assignment_welcome_message',
      desc: '',
      args: [],
    );
  }

  /// `Assignment Title`
  String get assignment_title {
    return Intl.message(
      'Assignment Title',
      name: 'assignment_title',
      desc: '',
      args: [],
    );
  }

  /// `Enter a title that clearly describes the content of the assignment.`
  String get assignment_title_hint_text {
    return Intl.message(
      'Enter a title that clearly describes the content of the assignment.',
      name: 'assignment_title_hint_text',
      desc: '',
      args: [],
    );
  }

  /// `Assignment Description`
  String get assignment_description {
    return Intl.message(
      'Assignment Description',
      name: 'assignment_description',
      desc: '',
      args: [],
    );
  }

  /// `Provide a detailed explanation of what is required in the assignment, along with any additional instructions.`
  String get assignment_description_hint_text {
    return Intl.message(
      'Provide a detailed explanation of what is required in the assignment, along with any additional instructions.',
      name: 'assignment_description_hint_text',
      desc: '',
      args: [],
    );
  }

  /// `Assignment Degree`
  String get assignment_degree {
    return Intl.message(
      'Assignment Degree',
      name: 'assignment_degree',
      desc: '',
      args: [],
    );
  }

  /// `Final Date`
  String get final_date {
    return Intl.message('Final Date', name: 'final_date', desc: '', args: []);
  }

  /// `⏰ Specify the assignment submission deadline and closing time.`
  String get choose_assignment_deadline {
    return Intl.message(
      '⏰ Specify the assignment submission deadline and closing time.',
      name: 'choose_assignment_deadline',
      desc: '',
      args: [],
    );
  }

  /// `Starts In`
  String get starts_in {
    return Intl.message('Starts In', name: 'starts_in', desc: '', args: []);
  }

  /// `Ends In`
  String get ends_in {
    return Intl.message('Ends In', name: 'ends_in', desc: '', args: []);
  }

  /// `Add File`
  String get add_file {
    return Intl.message('Add File', name: 'add_file', desc: '', args: []);
  }

  /// `📅 View a list of upcoming assignments with delivery dates, status, and the ability to modify or cancel.`
  String get scheduled_assignments_description {
    return Intl.message(
      '📅 View a list of upcoming assignments with delivery dates, status, and the ability to modify or cancel.',
      name: 'scheduled_assignments_description',
      desc: '',
      args: [],
    );
  }

  /// `📜 View completed assignments, with the ability to review solutions, grades, and comments.`
  String get previous_assignments_description {
    return Intl.message(
      '📜 View completed assignments, with the ability to review solutions, grades, and comments.',
      name: 'previous_assignments_description',
      desc: '',
      args: [],
    );
  }

  /// `Assignment Details`
  String get assignment_details {
    return Intl.message(
      'Assignment Details',
      name: 'assignment_details',
      desc: '',
      args: [],
    );
  }

  /// `From`
  String get from {
    return Intl.message('From', name: 'from', desc: '', args: []);
  }

  /// `To`
  String get to {
    return Intl.message('To', name: 'to', desc: '', args: []);
  }

  /// `Scheduled`
  String get scheduled {
    return Intl.message('Scheduled', name: 'scheduled', desc: '', args: []);
  }

  /// `Edit Quiz`
  String get editQuiz {
    return Intl.message('Edit Quiz', name: 'editQuiz', desc: '', args: []);
  }

  /// `Assignment uploaded successfully`
  String get assignment_uploaded_successfully {
    return Intl.message(
      'Assignment uploaded successfully',
      name: 'assignment_uploaded_successfully',
      desc: '',
      args: [],
    );
  }

  /// `On Map`
  String get onMap {
    return Intl.message('On Map', name: 'onMap', desc: '', args: []);
  }

  /// `Show Directions`
  String get showDirections {
    return Intl.message(
      'Show Directions',
      name: 'showDirections',
      desc: '',
      args: [],
    );
  }

  /// `📑⚡ Review submitted assignments, evaluate answers, and view grades with the ability to send comments to each student.`
  String get assignment_correction_welcome_message {
    return Intl.message(
      '📑⚡ Review submitted assignments, evaluate answers, and view grades with the ability to send comments to each student.',
      name: 'assignment_correction_welcome_message',
      desc: '',
      args: [],
    );
  }

  /// `Select all and give a score`
  String get select_all_to_give_degree {
    return Intl.message(
      'Select all and give a score',
      name: 'select_all_to_give_degree',
      desc: '',
      args: [],
    );
  }

  /// `Enter student name or code`
  String get enter_student_name_or_code {
    return Intl.message(
      'Enter student name or code',
      name: 'enter_student_name_or_code',
      desc: '',
      args: [],
    );
  }

  /// `Show`
  String get show {
    return Intl.message('Show', name: 'show', desc: '', args: []);
  }

  /// `Evaluate`
  String get evaluation {
    return Intl.message('Evaluate', name: 'evaluation', desc: '', args: []);
  }

  /// `Number of students who submitted the assignment`
  String get number_of_students_who_handed_assignment {
    return Intl.message(
      'Number of students who submitted the assignment',
      name: 'number_of_students_who_handed_assignment',
      desc: '',
      args: [],
    );
  }

  /// `Average student scores in this assignment`
  String get Average_student_scores_in_this_assignment {
    return Intl.message(
      'Average student scores in this assignment',
      name: 'Average_student_scores_in_this_assignment',
      desc: '',
      args: [],
    );
  }

  /// `Student Grade`
  String get student_grade {
    return Intl.message(
      'Student Grade',
      name: 'student_grade',
      desc: '',
      args: [],
    );
  }

  /// `Add Grade`
  String get add_grade {
    return Intl.message('Add Grade', name: 'add_grade', desc: '', args: []);
  }

  /// `Degree`
  String get the_degree {
    return Intl.message('Degree', name: 'the_degree', desc: '', args: []);
  }

  /// `Questions Count`
  String get questions_count {
    return Intl.message(
      'Questions Count',
      name: 'questions_count',
      desc: '',
      args: [],
    );
  }

  /// `Show Image`
  String get show_image {
    return Intl.message('Show Image', name: 'show_image', desc: '', args: []);
  }

  /// `Unknown`
  String get unknown {
    return Intl.message('Unknown', name: 'unknown', desc: '', args: []);
  }

  /// `Semester`
  String get semester {
    return Intl.message('Semester', name: 'semester', desc: '', args: []);
  }

  /// `Quiz hasn't started yet`
  String get quizNotStarted {
    return Intl.message(
      'Quiz hasn\'t started yet',
      name: 'quizNotStarted',
      desc: '',
      args: [],
    );
  }

  /// `Started`
  String get started {
    return Intl.message('Started', name: 'started', desc: '', args: []);
  }

  /// `ID`
  String get university_code {
    return Intl.message('ID', name: 'university_code', desc: '', args: []);
  }

  /// `National ID`
  String get national_id {
    return Intl.message('National ID', name: 'national_id', desc: '', args: []);
  }

  /// `Nationality`
  String get nationality {
    return Intl.message('Nationality', name: 'nationality', desc: '', args: []);
  }

  /// `department`
  String get department {
    return Intl.message('department', name: 'department', desc: '', args: []);
  }

  /// `Edit Profile`
  String get edit_profile {
    return Intl.message(
      'Edit Profile',
      name: 'edit_profile',
      desc: '',
      args: [],
    );
  }

  /// `Enter new password`
  String get enter_new_password {
    return Intl.message(
      'Enter new password',
      name: 'enter_new_password',
      desc: '',
      args: [],
    );
  }

  /// `Route Details`
  String get route_details {
    return Intl.message(
      'Route Details',
      name: 'route_details',
      desc: '',
      args: [],
    );
  }

  /// `Duration`
  String get duration {
    return Intl.message('Duration', name: 'duration', desc: '', args: []);
  }

  /// `Distance`
  String get distance {
    return Intl.message('Distance', name: 'distance', desc: '', args: []);
  }

  /// `h`
  String get hour {
    return Intl.message('h', name: 'hour', desc: '', args: []);
  }

  /// `m`
  String get meter {
    return Intl.message('m', name: 'meter', desc: '', args: []);
  }

  /// `min`
  String get min {
    return Intl.message('min', name: 'min', desc: '', args: []);
  }

  /// `km`
  String get km {
    return Intl.message('km', name: 'km', desc: '', args: []);
  }

  /// `Instructions`
  String get instructions {
    return Intl.message(
      'Instructions',
      name: 'instructions',
      desc: '',
      args: [],
    );
  }

  /// `Street`
  String get street {
    return Intl.message('Street', name: 'street', desc: '', args: []);
  }

  /// `Halls`
  String get halls {
    return Intl.message('Halls', name: 'halls', desc: '', args: []);
  }

  /// `No Halls Found`
  String get noHallsFound {
    return Intl.message(
      'No Halls Found',
      name: 'noHallsFound',
      desc: '',
      args: [],
    );
  }

  /// `Code`
  String get code {
    return Intl.message('Code', name: 'code', desc: '', args: []);
  }

  /// `Buildings`
  String get buildings {
    return Intl.message('Buildings', name: 'buildings', desc: '', args: []);
  }

  /// `No Buildings Found`
  String get noBuildingsFound {
    return Intl.message(
      'No Buildings Found',
      name: 'noBuildingsFound',
      desc: '',
      args: [],
    );
  }

  /// `Retry`
  String get retry {
    return Intl.message('Retry', name: 'retry', desc: '', args: []);
  }

  /// `Manage and display materials`
  String get manage_materials_and_display {
    return Intl.message(
      'Manage and display materials',
      name: 'manage_materials_and_display',
      desc: '',
      args: [],
    );
  }

  /// `No answers available for this question`
  String get no_answers_available {
    return Intl.message(
      'No answers available for this question',
      name: 'no_answers_available',
      desc: '',
      args: [],
    );
  }

  /// `Parking Slots`
  String get parkingSlots {
    return Intl.message(
      'Parking Slots',
      name: 'parkingSlots',
      desc: '',
      args: [],
    );
  }

  /// `🚗 Browse available parking slots and easily check for empty spaces`
  String get parkingSlotsDescription {
    return Intl.message(
      '🚗 Browse available parking slots and easily check for empty spaces',
      name: 'parkingSlotsDescription',
      desc: '',
      args: [],
    );
  }

  /// `Student Answers Review`
  String get studentsAnswersReview {
    return Intl.message(
      'Student Answers Review',
      name: 'studentsAnswersReview',
      desc: '',
      args: [],
    );
  }

  /// `Student Degree`
  String get studentDegree {
    return Intl.message(
      'Student Degree',
      name: 'studentDegree',
      desc: '',
      args: [],
    );
  }

  /// `No Students Found`
  String get noStudentsFound {
    return Intl.message(
      'No Students Found',
      name: 'noStudentsFound',
      desc: '',
      args: [],
    );
  }

  /// `Deadline`
  String get deadline {
    return Intl.message('Deadline', name: 'deadline', desc: '', args: []);
  }

  /// `preview`
  String get preview {
    return Intl.message('preview', name: 'preview', desc: '', args: []);
  }

  /// `Assignment Preview`
  String get assignment_preview {
    return Intl.message(
      'Assignment Preview',
      name: 'assignment_preview',
      desc: '',
      args: [],
    );
  }

  /// `Edit Assignment`
  String get edit_assignment {
    return Intl.message(
      'Edit Assignment',
      name: 'edit_assignment',
      desc: '',
      args: [],
    );
  }

  /// `✏️ Edit the assignment details to keep your students informed with the latest updates and requirements.`
  String get edit_assignment_welcome_message {
    return Intl.message(
      '✏️ Edit the assignment details to keep your students informed with the latest updates and requirements.',
      name: 'edit_assignment_welcome_message',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
