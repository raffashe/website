# Responsive portfolio in Flutter

This is the source code for my personal portfolio website developed with Flutter. It is designed to be an elegant and responsive visual interface, showcasing information about my skills, projects, and experience.

![cover](https://github.com/user-attachments/assets/8f36fde0-8dd0-4478-8fcd-723231ddf0f8)


## Features

- **Introduction Page:** A clear introduction with an eye-catching animation.
- **Projects Section:** Displays the most recent projects, with links for more details.
- **Skills:** Displays skills organized by categories.
- **Contact:** Includes a functional contact form and links to social media.
- **Responsive Design:** Adaptable for mobile devices, tablets, and desktops.

## Project Structure

The project structure is organized as follows:

```
lib/
├── core/
│   ├── constants/
│   ├── utils/
│   └── widgets/
├── features/
│   ├── portfolio/
│   │   └── presentation/screens/
├── splash/
└── main.dart
```

### Main Folders

- **core:** Contains global constants, styles, and utilities.
- **features:** Includes the main portfolio screens.
- **splash:** Configuration for the loading splash screen.
- **assets:** Includes fonts, images, and other resources.

## Setup

Make sure you have Flutter installed correctly. Then, follow the steps below:

1. Clone the repository:
   ```bash
   git clone https://github.com/raffashe/website.git
   ```
2. Navigate to the project directory:
   ```bash
   cd raffashe
   ```
3. Install dependencies:
   ```bash
   flutter pub get
   ```
4. Run the project:
   ```bash
   flutter run
   ```

## Dependencies

The main dependencies used in the project are:

- [flutter](https://flutter.dev/) - Core framework.
- [velocity_x](https://pub.dev/packages/velocity_x) - Helps with widgets and styles.
- [timelines](https://pub.dev/packages/timelines) - Create stylized timelines.
- [font_awesome_flutter](https://pub.dev/packages/font_awesome_flutter) - Font Awesome icons.
- [url_launcher](https://pub.dev/packages/url_launcher) - Open URLs or external apps.
- [flutter_svg](https://pub.dev/packages/flutter_svg) - Render SVG files.

---

Developed with ❤️ and Flutter.
