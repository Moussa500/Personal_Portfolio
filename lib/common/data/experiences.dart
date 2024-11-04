List<Map<String, String>> professionalExperiences = [
  generateExperience(
      position: "Flutter Developer",
      location: "Monastir",
      state: "Internship",
      date: "August 2022",
      company: "NeuralBey"),
  generateExperience(
      position: "Flutter Developer",
      location: "Monastir",
      state: "Internship",
      date: "July 2024 - August 2024",
      company: "NeuralBey"),
  generateExperience(
      position: "Node.js Developer",
      location: "Tunis",
      state: "Internship",
      date: "August 2024",
      company: "9antra.tn"),
];
List<Map<String, String>> associativeExper = [
  generateExperience(
      position: "Video Editor",
      location: "Sfax",
      state: "Core-Team",
      date: "2022",
      company: "Google Developer Student Clubs-FSS"),
  generateExperience(
      position: "Video Editor",
      location: "Kairouan",
      state: "Organizer",
      date: "2022",
      company: "E-Game Club"),
  generateExperience(
      position: "Media Manager",
      location: "Sfax",
      state: "Core-Team",
      date: "2023",
      company: "Google Developer Student Clubs-FSS"),
  generateExperience(
      position: "Video Editor",
      location: "Sfax",
      state: "Organizer",
      date: "Current",
      company: "Google Developer Groups-GDG Sfax"),
];
List<Map<String, String>> education = [
  generateExperience(
      position: "Bachelor in Computer Science",
      location: "Sfax",
      state: "Full Time",
      date: "Current",
      company: "Faculty Of Sciences Of Sfax"),
];
Map<String, String> generateExperience(
    {required String position,
    required String location,
    required String state,
    required String date,
    required String company}) {
  return <String, String>{
    "position": position,
    "location": location,
    "company": company,
    "date": date,
    "state": state
  };
}
