
import 'package:image_picker/image_picker.dart';
class Message {
  final String text;
  final DateTime time;
  final bool isUser;

  Message({required this.text, required this.time, required this.isUser});
}

pickImage(ImageSource source) async {
  final ImagePicker _imagePicker = ImagePicker();
  XFile? _file = await _imagePicker.pickImage(source: source);
  if (_file != null) {
    return await _file.readAsBytes();
  }
}

class PsychologyProfile {
  final int id;
  final String name;
  final String Experiance;
  final String Review;
  final double Rate;
  final int Stories;
  final String Image;
  final double Price;
  final bool Like;
  final String about;
  final String qualification;
  final String languagespoken;
  final String contectdetail;
  final String yrofexp;
  final String field;
  final String deals;
  final String licence;
  final Map<DateTime, List<String>> Slots;
  final bool isOnline;

  PsychologyProfile({
    required this.name,
    required this.about,
    required this.qualification,
    required this.languagespoken,
    required this.contectdetail,
    required this.yrofexp,
    required this.field,
    required this.deals,
    required this.licence,
    required this.id,
    required this.Experiance,
    required this.Review,
    required this.Rate,
    required this.Stories,
    required this.Image,
    required this.Price,
    required this.Like,
    required this.Slots,
    required this.isOnline,
  });
}

List<PsychologyProfile> details = [
  PsychologyProfile(
      about:
          "Dr. Emily Parker, a distinguished psychologist, brings a wealth of expertise in mental health and emotional well-being. With a Ph.D. in Psychology and years of clinical experience, she specializes in cognitive-behavioral therapy, guiding individuals toward resilience and self-discovery. Dr. Parker is dedicated to fostering positive change, empowering clients to lead fulfilling lives.",
      qualification: "Ph.D. in Psychology Bachelor's degree in Psychology",
      languagespoken: "Telugu, English, Hindi",
      contectdetail: "instagram@revanthkallepalli",
      yrofexp: "1 year Experience",
      field: "In Psychology",
      deals: "Mental health issue",
      licence: "28752tt868",
      name: 'Ramesh Rao',
      Experiance: "2 Year experience",
      Review: "120 rviews",
      Rate: 4.5,
      Stories: 68,
      Image: "image1",
      Like: true,
      Price: 1800,
      id: 01,
      Slots: {
        DateTime(2024, 1, 21): [
          '8:00 AM',
          '9:00 AM',
          '10:00 AM',
          '11:00 AM'
        ],
        DateTime(2024, 1, 22): [
          '8:00 AM',
          '9:00 AM',
          '10:00 AM',
          '11:00 AM'
        ],
      },
      isOnline: false),
  PsychologyProfile(
      about:
          "Dr. Emily Parker, a distinguished psychologist, brings a wealth of expertise in mental health and emotional well-being. With a Ph.D. in Psychology and years of clinical experience, she specializes in cognitive-behavioral therapy, guiding individuals toward resilience and self-discovery. Dr. Parker is dedicated to fostering positive change, empowering clients to lead fulfilling lives.",
      qualification: "Ph.D. in Psychology Bachelor's degree in Psychology",
      languagespoken: "Telugu, English,",
      contectdetail: "instagram@revanthk",
      yrofexp: "1 year Experience",
      field: "In Psychology",
      deals: "Mental health issue",
      licence: "28752tt868",
      name: 'Arora',
      Experiance: "2.5 Year experience",
      Review: "100 rviews",
      Rate: 4,
      Stories: 30,
      Image: "image1",
      Like: true,
      Price: 1700,
      id: 02,
      Slots: {
        DateTime(2024, 1, 21): [
          '8:00 AM',
          '9:00 AM',
          '10:00 AM',
          '11:00 AM'
        ],
        DateTime(2024, 1, 22): [
          '8:00 AM',
          '9:00 AM',
          '10:00 AM',
          '11:00 AM'
        ],
      },
      isOnline: true),
  PsychologyProfile(
      about:
          "Dr. Emily Parker, a distinguished psychologist, brings a wealth of expertise in mental health and emotional well-being. With a Ph.D. in Psychology and years of clinical experience, she specializes in cognitive-behavioral therapy, guiding individuals toward resilience and self-discovery. Dr. Parker is dedicated to fostering positive change, empowering clients to lead fulfilling lives.",
      qualification: "Ph.D. in Psychology Bachelor's degree in Psychology",
      languagespoken: "Telugu, English, Hindi",
      contectdetail: "instagram@revanthkallepalli",
      yrofexp: "2.5 year Experience",
      field: "In Psychology",
      deals: "Mental health issue",
      licence: "28752tt86785",
      name: 'Dr. Ajay Sharma',
      Experiance: "2 Year experience",
      Review: "76 rviews",
      Rate: 4.6,
      Stories: 56,
      Image: "image1",
      Like: false,
      Price: 2000,
      id: 03,
      Slots: {
        DateTime(2024, 1, 21): [
          '8:00 AM',
          '9:00 AM',
          '10:00 AM',
          '11:00 AM'
        ],
        DateTime(2024, 1, 22): [
          '8:00 AM',
          '9:00 AM',
          '10:00 AM',
          '11:00 AM'
        ],
      },
      isOnline: false),
  PsychologyProfile(
      about:
          "Dr. Emily Parker, a distinguished psychologist, brings a wealth of expertise in mental health and emotional well-being. With a Ph.D. in Psychology and years of clinical experience, she specializes in cognitive-behavioral therapy, guiding individuals toward resilience and self-discovery. Dr. Parker is dedicated to fostering positive change, empowering clients to lead fulfilling lives.",
      qualification: "Ph.D. in Psychology Bachelor's degree in Psychology",
      languagespoken: "Telugu, English, Hindi",
      contectdetail: "instagram@revanthkallepalli",
      yrofexp: "2 year Experience",
      field: "In Psychology",
      deals: "Mental health issue",
      licence: "28752tt868",
      name: 'Dr. vasant Aggarwal',
      Experiance: "1.5 Year experience",
      Review: "150 rviews",
      Rate: 4.8,
      Stories: 82,
      Image: "image1",
      Like: true,
      Price: 3000,
      id: 04,
      Slots: {
        DateTime(2024, 1, 21): [
          '8:00 AM',
          '9:00 AM',
          '10:00 AM',
          '11:00 AM'
        ],
        DateTime(2024, 1, 23): [
          '8:00 AM',
          '9:00 AM',
          '10:00 AM',
          '11:00 AM'
        ],
      },
      isOnline: true)
];
