List<Map<String, dynamic>> projects = [
  generateProject(
      tile: "SwiftPay",
      image: "assets/images/swiftPay.png",
      description:
          "SwiftPay is a sleek, beautifully designed e-wallet app that combines seamless functionality with an elegant interface. it enables users to send, receive, and manage their funds effortlessly. With intuitive navigation and a modern aesthetic, SwiftPay delivers a  digital wallet experience that makes everyday payments and enjoyable.",
      link: "https://github.com/Moussa500/SwiftPay.svg",
      techStack: "Nest.js,Flutter.js,Postgresql",
      status: "Completed"),
  generateProject(
      tile: "CareMingle",
      linkDesign:
          "https://www.figma.com/design/3D87BTQILZiFOEDM0qXVLp/Free-Babysitter-App-Screens---Simplify-Childcare-(Community)?node-id=1-529&node-type=canvas&t=YK42WoQ0KtfzYXZL-0",
      image: "assets/images/careMingle.png",
      description:
          "Caremingle is a mobile app designed to connect parents with reliable babysitters. The app allows parents to easily search for babysitters, communicate with them, and manage favorite profiles. Babysitters can register their availability and provide details to help parents make informed hiring decisions. The app provides a seamless experience for both parents and babysitters, ensuring trust and convenience.",
      link: "https://github.com/Moussa500/care_mingle",
      techStack: "Node.js,Flutter,Express.js,MongoDb",
      status: "in Progress"),
  generateProject(
      tile: "Spotify Rebuild",
      image: "assets/images/spotify.png",
      description:
          "Spotify Redesign Concept is a fresh take on the Spotify experience, reimagined with Flutter and Firebase. This concept blends smooth animations, a clean UI, and dynamic data handling to deliver a modern, engaging look and feel. Built with Flutter's expressive UI capabilities and Firebase's powerful backend, the design focuses on enhanced navigation, personalized playlists, and seamless music streaming, all crafted to elevate the Spotify experience into something visually captivating and highly responsive.",
      link: "https://github.com/Moussa500/spotify_redesign_implementation",
      techStack: "Nest.js,Flutter.js,Postgresql",
      status: "Completed"),
  generateProject(
      tile: "Etuloc",
      image: "assets/images/Etuloc.png",
      description:
          "Etuloc is a student-focused rental app designed to simplify the search for affordable and convenient housing near universities and colleges. With tailored listings, detailed property information, and user-friendly search filters, Etuloc connects students with rental options that suit their budget, location preferences, and lifestyle needs—making it easier than ever to find a place to call home during their studies.",
      link: "https://github.com/Moussa500/Etuloc",
      techStack: "Nest.js,Flutter.js,Postgresql",
      status: "in Progress"),
  generateProject(
      tile: "Supa",
      image: "assets/images/supa.png",
      description:
          "Supa is a beautifully crafted Japanese food app that brings the essence of Japanese culture and cuisine to your fingertips. Designed for enthusiasts of Japanese aesthetics and flavors, Supa offers a curated selection of traditional and modern Japanese dishes, from sushi to ramen, all displayed in a visually captivating interface. With an elegant, culture-inspired design, the app provides users an immersive experience, allowing them to explore, order, and enjoy authentic Japanese flavors in a way that feels like a journey to Japan itself.",
      link: "https://github.com/Moussa500/supa",
      techStack: "Flutter",
      status: "Completed"),
  generateProject(
      tile: "Talk Tn",
      image: "assets/images/talktn.png",
      description:
          "Talk Tn is a streamlined chat app developed with Flutter and Firebase, designed for fast, secure, and reliable messaging. With its simple and intuitive interface, Talktn enables users to connect effortlessly, making real-time communication easy and accessible. Powered by Firebase's robust backend, the app offers a smooth experience with features like instant messaging, user authentication, and data synchronization across devices.",
      link: "https://github.com/Moussa500/talk_tn",
      techStack: "Flutter,Firebase",
      status: "Completed"),
];
Map<String, String> generateProject(
    {required String tile,
    required String image,
    required String description,
    required String link,
    required String techStack,
    String? linkDesign,
    required String status}) {
  return <String, String>{
    "tile": tile,
    "image": image,
    "description": description,
    "link": link,
    "techStack": techStack,
    "linkDesign": linkDesign ?? "",
    "status": status,
  };
}
