
class AvailableDoctor {
  final String name;
  final String sector;
  final String patients;
  final String image;
  final int experience;

  AvailableDoctor(
      {required this.name,
      required this.sector,
      required this.experience,
      required this.patients,
      required this.image});
}

List<AvailableDoctor> demoAvailableDoctors = [
  AvailableDoctor(
    name: "Dr. Serena Gome",
    sector: "Medicine Specialist",
    experience: 8 ,
    patients: '1.08K',
    image: "assets/images/serena gome.jpeg",
  ),
  AvailableDoctor(
    name: "Dr. Asma Khan",
    sector: "Medicine Specialist",
    experience: 5,
    patients: '2.7K',
    image: "assets/images/Asma Khan.jpeg",
  ),
  AvailableDoctor(
    name: "Dr. Kiran Shakia",
    sector: "Medicine Specialist",
    experience: 5,
    patients: '2.7K',
    image: "assets/images/Kiran Shakia.jpeg",
  ),
  AvailableDoctor(
    name: "Dr. Masuda Khan",
    sector: "Medicine Specialist",
    experience: 5,
    patients: '2.7K',
    image: "assets/images/masuda.jpeg",
  ),
  AvailableDoctor(
    name: "Dr. Johir Raihan",
    sector: "Medicine Specialist",
    experience: 5,
    patients: '2.7K',
    image: "assets/images/johir raihan.jpeg",
  ),
];