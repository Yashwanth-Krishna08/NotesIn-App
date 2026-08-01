# 📝 Qt Quick Notes

A simple and modern **Notes Application** built using **Qt Quick (QML)**. The application allows users to create and view notes through a clean multi-page interface while demonstrating the fundamentals of QML development.

## ✨ Features

* 🏠 Home screen with simple navigation
* ➕ Add new notes with a subject and detailed description
* 📖 View all saved notes in a scrollable list
* 📂 Custom note cards using reusable QML components
* 🔄 Expand/collapse notes to show or hide details
* 🎨 Clean and responsive user interface
* 📱 Built entirely with Qt Quick Controls and Layouts

## 🛠️ Technologies Used

* Qt 6
* Qt Quick (QML)
* Qt Quick Controls
* Qt Quick Layouts

## 📁 Project Structure

```text
.
├── main.qml          # Application entry point
├── Home.qml          # Home page
├── Add.qml           # Add new note page
├── See.qml           # View notes page
├── Note.qml          # Reusable note delegate/component
└── assets/           # Images and other resources (if any)
```

## 📸 Screens

* Home page
* Add Note page
* My Notes page
* Expandable Note component

*(Add screenshots here after uploading them to the repository.)*

## 📚 Concepts Demonstrated

* Multi-page navigation using `StackView`
* Reusable QML components
* `ListView` and `ListModel`
* Custom delegates
* States and transitions
* MouseArea interactions
* Responsive layouts using `ColumnLayout` and `RowLayout`
* TextField and TextArea input handling

## 🚀 Future Improvements

* Save notes to a JSON file
* Load saved notes on startup
* Edit existing notes
* Delete notes
* Search and filter notes
* Sort notes by date or title
* Dark mode support

## ▶️ Running the Project

1. Open the project in **Qt Creator**.
2. Build the project using a Qt 6 kit.
3. Run the application.

## 🎯 Purpose

This project was created to practice Qt Quick (QML) concepts such as navigation, layouts, reusable components, models, delegates, states, and animations while building a functional notes application.

## 👨‍💻 Author

**Yashwanth Krishna**

If you found this project helpful, feel free to ⭐ the repository.
