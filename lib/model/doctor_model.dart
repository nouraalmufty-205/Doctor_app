class DoctorModel {
  final double? cardHeight;
  final String imageName;
  final bool? colored;
  final String doctorName;
  final String doctorTitle;
  final String doctorExperience;
  final String doctorSpercentage;
  final String doctorNPatient;
  final String? openingHour;
  final bool? hasBooking;

  DoctorModel({
    this.cardHeight,
    required this.imageName,
    this.colored,
    required this.doctorName,
    required this.doctorTitle,
    required this.doctorExperience,
    required this.doctorSpercentage,
    required this.doctorNPatient,
    this.openingHour,
    this.hasBooking,
  });
}
