List<Map<String, String>> techStack = [
  generateTech("flutter", "Flutter"),
  generateTech("android", "Android"),
  generateTech("nodejs", "Node.js"),
  generateTech("express", "Express.js"),
  generateTech("nestjs", "Nest.js"),
  generateTech("mongodb", "MongoDB"),
  generateTech("postgresql", "postgresql"),
  generateTech("github_vector", "Github"),
  generateTech("git", "Git"),
  generateTech("postman", "Postman"),
  generateTech("vscode", "VsCode"),
  generateTech("androidstudio", "Android Studio"),
];
Map<String, String> generateTech(String asset, String techName) {
  return <String, String>{
    "asset": "assets/icons/$asset.svg",
    "name": techName,
  };
}
