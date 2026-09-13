// Data model structure
class DoctorModel {
  final String name;
  final String specialty;
  final String imagePath;
  final bool? isFavorite;

  DoctorModel({
    required this.name,
    required this.specialty,
    required this.imagePath,
    this.isFavorite,
  });
}

// Sample dummy data matching your mockups
final List<DoctorModel> favoriteDoctorsList = [
  DoctorModel(
    name: "Dr. Shouey",
    specialty: "Specialist Cardiology",
    imagePath: "assets/circledoctor1.png",
  ),
  DoctorModel(
    name: "Dr. Christenfeld N",
    specialty: "Specialist Cancer",
    imagePath: "assets/mydoctor2.png",
  ),
  DoctorModel(
    name: "Dr. Shouey",
    specialty: "Specialist Medicine",
    imagePath: "assets/mydoctor3.png",
  ),
  DoctorModel(
    name: "Dr. Shouey",
    specialty: "Specialist Dentist",
    imagePath: "assets/circledoctor2.png",
  ),
];
