import 'package:dio/dio.dart';

Future<Map<String, dynamic>> login(String email, String password) async {
  String url = "https://atman.onrender.com/login";
  final dio = Dio();
  try {
    final response =
        await dio.post(url, data: {'email': email, 'password': password});
    print(response.data);
    if (response.data['message'] == "Login successful") {
      return {
        'status': true,
        'uid': response.data['userData']['uid'],
        'nickname': response.data['userData']['nickname']
      };
    }
  } catch (e) {
    print("error");
    return {'status': false};
  }
  return {'status': false};
}

Future<Map<String, dynamic>> register(String email, String password) async {
  String url = "https://atman.onrender.com/register";
  final dio = Dio();
  try {
    final response =
        await dio.post(url, data: {'email': email, 'password': password});
    return {"status": true, 'uid': response.data['uid']};
  } catch (e) {
    return {"status": false, "uid": ""};
  }
}

Future<bool> userDetail(String uid, String name, String gender, String age,
    String occupation, String relationship, String language) async {
  String url = "https://atman.onrender.com/userdetails";
  final dio = Dio();
  try {
    final response = await dio.post(url, data: {
      "uid": uid,
      "name": name,
      "gender": gender,
      "age": age,
      "occupation": occupation,
      "relationshipstatus": relationship,
      "language": language
    });
    print(response.data);

    return true;
  } catch (e) {
    return false;
  }
}

Future<bool> getOtp(String email) async {
  String url = "https://atman.onrender.com/forgot-password";
  final dio = Dio();
  try {
    final response = await dio.post(url, data: {'email': email});
    if (response.data['message'] == "OTP sent successfully") {
      return true;
    }
  } catch (e) {
    return false;
  }
  return false;
}

Future<bool> verifyOtp(String uid, String otp) async {
  String url = "https://atman.onrender.com/verify-otp";
  final dio = Dio();
  try {
    final response = await dio.post(url, data: {'uid': uid, 'enteredOtp': otp});
    print(response.data);
    return true;
  } catch (e) {
    print(e);
    return false;
  }
  return false;
}

Future<bool> nickname(String uid, String userNickname) async {
  String url = "https://atman.onrender.com/registernickname";
  final dio = Dio();
  print(uid);

  try {
    final response =
        await dio.post(url, data: {"uid": uid, "nickname": userNickname});
    if (response.data["message"] != "Nickname is already taken") {
      return true;
    }
  } catch (e) {
    print(e);
    return false;
  }
  return false;
}

Future<bool> workGoal(dynamic uid, dynamic goal) async {
  const url = "https://atman.onrender.com/create-daily-goal";
  final dio = Dio();
  print(uid);
  print(goal);
  try {
    final response = await dio.post(url, data: {"uid": uid, "goal": goal});
    print(response.data);
    return true;
  } catch (e) {
    print(e);
    return false;
  }
  return false;
}
