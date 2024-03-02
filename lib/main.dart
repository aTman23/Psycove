import 'package:atman/Psychologist/Community/Community%20Pages/communityMainPage.dart';
import 'package:atman/Psychologist/Community/Community%20Pages/createPost.dart';
import 'package:atman/Psychologist/Homepage/homepage.dart';
import 'package:atman/Psychologist/Psychologist_penal/ClientPages/ApprovedPage.dart';
import 'package:atman/Psychologist/Psychologist_penal/ClientPages/ListOfClient.dart';
import 'package:atman/Psychologist/Psychologist_penal/PsychProfile/Psy_profile.dart';
import 'package:atman/Psychologist/Psychologist_penal/Psycholigist_functions/Psy_Detail.dart';
import 'package:atman/Psychologist/Psychologist_penal/Psycholigist_functions/TaskAssign/Client_ScreenForTask.dart';
import 'package:atman/Psychologist/Psychologist_penal/RemainderPages/DailyRoutine.dart';
import 'package:atman/Psychologist/SignIn-SignUp/Nickname%20Screen/nickname.dart';
import 'package:atman/Psychologist/SignIn-SignUp/OTP%20screen/otp.dart';
import 'package:atman/Psychologist/SignIn-SignUp/SignIn%20Screen/signin.dart';
import 'package:atman/Psychologist/SignIn-SignUp/SignUp%20Screen/details.dart';
import 'package:atman/Psychologist/SignIn-SignUp/SignUp%20Screen/signup.dart';
import 'package:atman/User/CopingTechniques/Coping_techs01.dart';
import 'package:atman/User/CopingTechniques/Coping_techs_List.dart';
import 'package:atman/User/CopingTechniques/Strat_Page.dart';
import 'package:atman/User/Self_Test/Selftest_02.dart';
import 'package:atman/User/graphPage/graph_page.dart';
import 'package:atman/User/my_profile.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/adapters.dart';
import 'Psychologist/Psychologist_penal/Notification/psyNotification.dart';
import 'Psychologist/Psychologist_penal/Psycholigist_functions/Psy_Appointment_list.dart';
import 'Psychologist/Psychologist_penal/RemainderPages/Event_Calendar/EventAdderScreen.dart';
import 'User/Community/Community Pages/communityMainPage.dart';
import 'User/Community/Community Pages/createPost.dart';
import 'User/Daily Journal/Daily Jornal Pages/dailyJournalMainPage.dart';
import 'User/Daily Journal/Daily Jornal Pages/dailyJoutnal.dart';
import 'User/DailyGoals/Dailygoals Page/dailygoals.dart';
import 'User/Homepage/Homepage/homepage.dart';
import 'User/Notifications/notification_screen.dart';
import 'User/Psycologist_nfo/psychologist_search_page.dart';
import 'User/Self_Test/Selftest_welcome.dart';
import 'User/SignIn-SignUp/Nickname Screen/nickname.dart';
import 'User/SignIn-SignUp/OTP screen/otp.dart';
import 'User/SignIn-SignUp/PhoneSignIn Screen/phone_signin.dart';
import 'User/SignIn-SignUp/SignIn Screen/signin.dart';
import 'User/SignIn-SignUp/SignUp Screen/details.dart';
import 'User/SignIn-SignUp/SignUp Screen/signup.dart';
import '/Welcome Page/splashScreen.dart';
import '/Welcome Page/user.dart';
import '/Welcome Page/welcome.dart';
import 'User/models/models.dart';

import 'package:firebase_messaging/firebase_messaging.dart';

import 'firebase_options.dart';

Future<void> handleBackgroundMessages(RemoteMessage message) async{
  print('Title: ${message.notification?.title}');
  print('Body: ${message.notification?.body}');
  print('Payload: ${message.data}');
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform,);
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await Hive.initFlutter();
  var box = await Hive.openBox("userData");
  final _firebaseMessaging = FirebaseMessaging.instance;
  await _firebaseMessaging.requestPermission();
  final token = await _firebaseMessaging.getToken();
  print(token);
  FirebaseMessaging.onBackgroundMessage(handleBackgroundMessages);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      designSize: Size(360, 690),
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: '/splashScreen',
          routes: {
            '/splashScreen': (context) => const SplashScreen(),
            '/welcomeScreen': (context) => const WelcomeScreen(),
            '/userSelectScreen': (context) => const UserSelectPage(),
            '/': (context) => const SignIn(),
            '/second': (context) => const SignUp(),
            '/userDetails': (context) => const UserDetails(),
            '/nickname': (context) => const NickName(),
            '/phone': (context) => const PhoneSignIn(),
            '/otp': (context) => const OTPScreen(),
            '/homepage': (context) => const Homepage(),
            '/dailygoals': (context) => const DailyGoals(),
            '/dailyJournal': (context) => const DailyJournal(),
            '/dailyJournalMain': (context) => const DailyJournalMain(),
            '/communityPage': (context) => const CommunityPage(),
            '/createPost': (context) => const CreatePost(),
            '/copingTechnique':(context) =>  const CopingTechs01(),
            '/notifications': (context) => const NotificationPage(),
            '/selfTest': (context) => const SelfTest02(),
            '/profilePage': (context) => const Profile(),
            '/myPerformance':(context) => const MyPerformence(),
            '/clientTaskScreen':(context) => const ClientTaskScreen(),
            '/copinglist':(context) => const CopingList(),

            '/psycologistSearch': (context) => const PsychologisstSearch(),
            '/psychologistSignIn': (context) => const PsychologistSignIn(),
            '/psychologistDetails': (context) => const PsychologistDetails(),
            '/psychologistSignUp': (context) => const PsychologistSignUp(),
            '/psychologistOTPScreen': (context) =>
                const PsychologistOTPScreen(),
            '/psychologistNickname': (context) => const PsychologistBio(),
            '/psychologistHomepage': (context) => const HomePage(),
            '/psychologistCommunityPage': (context) =>
                const PsychologistCommunityPage(),
            '/psychologistCreatePost': (context) =>
                const PsychologistCreatePost(),
            '/psychologistProfile':(context)=> const PsyProfile(),
            '/psychologistNotification':(context) => const PsyNotification(),
            '/clientList':(context) => ListOfClient(),
            '/approvedPage':(context) => ApprovedPage(),
            '/personDetails':(context) => PersonDetails(),
            '/appointmentList':(context) => PsyAppointmentList(),
            '/eventAdder':(context) => EventAdderScreen(),
            '/dailyRoutine':(context) => DailyRoutine(),

          },
        );
      },
    );
  }
}
