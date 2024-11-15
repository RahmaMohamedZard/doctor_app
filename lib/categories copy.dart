class Categories {
  final String icon;
  final String title;

  Categories({
    required this.icon,
    required this.title,
  });
}

List <Categories> getCategories =[
  Categories(
    icon: 'assets/icons/Pediatrician.jpeg', 
    title: 'Pediatrician'),

    Categories(
    icon: 'assets/icons/Neurosurgeon.jpeg', 
    title: 'Neurosurgeon'),

    Categories(
    icon: 'assets/icons/cardiologist.jpeg', 
    title: 'Cardiologist'),

    Categories(
    icon: 'assets/icons/psychiatrist.jpeg', 
    title: 'Psychiatrist'),
];