# **MamiMate**  
> *A compassionate companion for a seamless and supported pregnancy journey.*  

![MamiMate Banner](https://github.com/jyotsna030/Mami-Mate/blob/main/assets/images/1.png)  
*Empowering expecting mothers and their caregivers with cutting-edge features and seamless connectivity.*  

---

## **Table of Contents**  
1. [About the Project](#about-the-project)  
2. [Features](#features)  
3. [Screenshots](#screenshots)  
4. [Tech Stack](#tech-stack)  
5. [Installation](#installation)  
6. [Usage](#usage)  
7. [API Details](#api-details)  
8. [Roadmap](#roadmap)  
9. [Contributing](#contributing)  
10. [License](#license)  

---

## **About the Project**  
MamiMate is a feature-rich mobile application built to enhance the pregnancy journey for expecting mothers and their caregivers. By combining AI-powered tools, real-time reminders, and connectivity with healthcare professionals and loved ones, MamiMate bridges the gap between convenience and care.  

---

## **Features**  
- **Symptom Analysis:** AI-powered insights for better health tracking.  
- **Reminders:** Medication and appointment notifications tailored to your schedule.  
- **AI ChatBot:** A friendly assistant for 24/7 guidance.  
- **Direct Connections:** Chat with your healthcare providers and loved ones.  
- **Partner Linking:** Enable caregivers to stay informed and assist in your care.  
- **Community Support:** Connect with fellow mothers for tips and advice.  

---

## **Screenshots and Working Demo**  
Below are some visuals showcasing MamiMate’s interface and functionality:  

1. **Home Screen**  
   ![Home Screen](https://github.com/jyotsna030/Mami-Mate/blob/main/assets/images/2.png)  

2. **Symptom Analysis**  
   ![Symptom Analysis](https://github.com/jyotsna030/Mami-Mate/blob/main/assets/images/3.png)  

3. **Medication Reminder**  
   ![Medication Reminder](https://github.com/jyotsna030/Mami-Mate/blob/main/assets/images/4.png) 

4. **Partner Linking**  
   ![Partner Linking](https://github.com/jyotsna030/Mami-Mate/blob/main/assets/images/5.png)


---

### **Demo Video**  

[Watch the Demo Video](https://youtu.be/rYRAOQJTUCE?si=Y9pobikV_nXJs5zN)  

---

## **Tech Stack**  
MamiMate leverages modern tools and technologies to deliver a smooth user experience:  
- **Frontend:** Flutter (Dart)  
- **Backend & Services:** Firebase  
- **AI Integration:** Python-based AI Model API  
- **Push Notifications:** Firebase Cloud Messaging (FCM)  
- **Communication:** Twilio API for SOS messaging

- **Flow Chart**  
   ![Flow Chart](https://github.com/jyotsna030/Mami-Mate/blob/main/assets/images/2.png) 

---

## **Installation**  

### **Prerequisites**  
1. Flutter SDK installed on your system.  
2. Firebase project set up with authentication and Firestore enabled.  
3. API keys for:  
   - Google APIs (Geolocation & Notifications)  
   - Twilio (SOS Messaging)  
4. IDE like VS Code or Android Studio for Flutter development.  

### **Steps**  
1. Clone this repository:  
   ```bash  
   git clone https://github.com/yourusername/MamiMate.git  
   cd MamiMate  
   ```  

2. Install dependencies:  
   ```bash  
   flutter pub get  
   ```  

3. Configure Firebase:  
   - Add `google-services.json` (Android) and `GoogleService-Info.plist` (iOS) to respective folders.  

4. Run the app on an emulator or device:  
   ```bash  
   flutter run  
   ```  

---

## **Usage**  
- Register as a new user (mother or caregiver).  
- Add healthcare providers and family members to your contact list.  
- Use the partner linking feature to invite a caregiver.  
- Monitor your health and receive notifications directly.  

---

## **API Details**  

### **Symptom Analysis API**  
- **Endpoint:** `/analyze_symptoms`  
- **Method:** POST  
- **Description:** Accepts symptoms as input and provides insights or recommendations.  

### **Partner Linking API**  
- **Endpoint:** `/generate_partner_link`  
- **Method:** GET  
- **Description:** Generates a secure link for caregivers.  

*(Add more APIs as required.)*  

---

## **Roadmap**  
- [x] Symptom analysis integration.  
- [x] Medication reminder system.  
- [x] AI chatbot deployment.  
- [ ] Enhanced SOS messaging with live location sharing.  
- [ ] Add multilingual support.  
- [ ] Launch community forum for mothers.  

---

## **Contributing**  
Contributions are welcome!  
1. Fork the repository.  
2. Create a new branch: `git checkout -b feature-name`.  
3. Commit changes: `git commit -m "Added new feature"`.  
4. Push to the branch: `git push origin feature-name`.  
5. Create a Pull Request.  

---

## **License**  
This project is licensed under the MIT License. See `LICENSE` for details.  

---

## **Contact**  
For queries or support, reach out to:  
- **Author:** Jyotsna Shrivastava  
- **Email:** [your.email@example.com](jyotsnas0306@gmail.com)  
- **LinkedIn:** [Your LinkedIn Profile](https://www.linkedin.com/in/jyotsna-shrivastava-78b5192b2)  


