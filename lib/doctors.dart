class Doctor {
  final String name;
  final String image;
  final String speciality;
  final String institute;

  Doctor({
    required this.speciality,
    required this.image,
    required this.institute,
    required this.name,
  });
}

List<Doctor> getDoctor = [
    Doctor(
      name: 'Dr. Salina Zaman',
      image: 'assets/images/Salina Zaman.jpeg',
      speciality: 'Medicine & Heart Specialist',
      institute: 'Good Health Clinic',
    ),
    Doctor(
      name: 'Dr. Serena Gome',
      image: 'assets/images/serena gome.jpeg',
      speciality: 'Cardiologist',
      institute: 'Heart Center',
    ),
    Doctor(
      name: 'Dr. John Doe',
      image: 'assets/images/John Doe.jpeg',
      speciality: 'General Practitioner',
      institute: 'Family Clinic',
    ),
  ];