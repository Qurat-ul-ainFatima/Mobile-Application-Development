## **Mobile Application Development - Lab 3**  
### **Author:** Qurat-ul-ain Fatima  
### **Enrollment:** 01-134222-121  
### **Class:** BS (CS) 6B  
### **Date:** 06/03/2025  
### **Instructor:** Sir Mohsin Javed  

### **Description**  
This repository contains the **Lab 3** project for the **Mobile Application Development (MAD)** course. The project is a **Flutter application** that displays an introduction about the developer using **Flutter widgets** such as `Text`, `Column`, `Icon`, and `AppBar`.  

### **Project Features**  
✅ **Stateless Widget (`MyApp`)** – Uses `MaterialApp` and `Scaffold` to create the basic UI structure.  
✅ **Custom App Bar** – Displays the title `"My Introduction"` with a **blue background**.  
✅ **Centered Content** – Uses `Column` and `Padding` to organize the text and icon properly.  
✅ **Text Styling** – Uses `Text.rich()` for **bold, italic, and styled** text.  
✅ **Flutter Icons** – Includes a **star icon** with a yellow color and size of `50`.  

### **Code Overview**  
The main file contains a simple Flutter UI:  
```dart
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Introduction", style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.blueAccent,
          centerTitle: true,
        ),
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star, color: Colors.yellow, size: 50),
                SizedBox(height: 10),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(text: "My name is ", style: TextStyle(fontSize: 18)),
                      TextSpan(
                        text: "Qurat-ul-Ain",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: ". I am a passionate developer who loves coding and problem-solving.",
                        style: TextStyle(fontSize: 18),
                      ),
                      TextSpan(
                        text: " hardworking, creative, and dedicated",
                        style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
                      ),
                      TextSpan(
                        text: ". I enjoy building mobile applications and learning new technologies.",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
```

### **How to Run the Project**  
1. **Ensure Flutter is Installed**  
   - Install Flutter SDK from [flutter.dev](https://flutter.dev).  
   - Run `flutter doctor` to verify installation.  

2. **Clone the Repository**  
   ```sh
   git clone <repository_url>
   cd MAD_Lab3
   ```

3. **Run the App in VS Code or Terminal**  
   ```sh
   flutter run
   ```

### **Technologies Used**  
- **Language:** Dart  
- **Framework:** Flutter  
- **IDE:** VS Code / Android Studio  

### **Screenshots**  
📌 _Add screenshots of the app UI here if needed._
