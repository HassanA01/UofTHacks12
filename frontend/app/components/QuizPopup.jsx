import React, { useState } from "react";

import HappyKrabs from "./icons/happy-krabs.png";
import NormalKrabs from "./icons/normal-krabs.png";
import AngryKrabs from "./icons/angry-krabs.png";
import CrazyKrabs from "./icons/crazy-krabs.png";


const questions = [
  {
    question: "What’s the best practice for creating a secure password?",
    options: [
      { text: "Use a combination of upper and lower case letters, numbers, and symbols.", rank: 1 },
      { text: "Use your name and birthdate for easy memorization.", rank: 4 },
      { text: "Reuse the same password across multiple accounts.", rank: 3 },
      { text: "Write your password on a sticky note and keep it near your computer.", rank: 2 },
    ],
  },
  {
    question: "What should you do if you receive an email from an unknown sender asking for personal information?",
    options: [
      { text: "Delete the email and report it as phishing.", rank: 1 },
      { text: "Click the link to see what it’s about.", rank: 4 },
      { text: "Respond with your information to see if it's a real request.", rank: 3 },
      { text: "Forward the email to your friends to check if they think it’s suspicious.", rank: 2 },
    ],
  },
  {
    question: "When should you enable two-factor authentication (2FA) on your accounts?",
    options: [
      { text: "Always, especially for accounts with sensitive information.", rank: 1 },
      { text: "Only for social media accounts.", rank: 3 },
      { text: "Never, it’s too much trouble.", rank: 4 },
      { text: "Only for accounts with financial transactions.", rank: 2 },
    ],
  },
  {
    question: "What’s the best way to protect your device from malware?",
    options: [
      { text: "Install and update reliable antivirus software regularly.", rank: 1 },
      { text: "Download software from any source that looks trustworthy.", rank: 3 },
      { text: "Disable all software updates to prevent changes to your device.", rank: 4 },
      { text: "Open suspicious email attachments to see what they contain.", rank: 2 },
    ],
  },
  {
    question: "What should you do if you suspect your account has been hacked?",
    options: [
      { text: "Change your password immediately and enable 2FA.", rank: 1 },
      { text: "Wait and see if the hacker loses interest.", rank: 4 },
      { text: "Contact customer support and report the issue.", rank: 2 },
      { text: "Try logging in again and hope everything returns to normal.", rank: 3 },
    ],
  },
  {
    question: "What’s the safest way to handle public Wi-Fi?",
    options: [
      { text: "Use a virtual private network (VPN) to encrypt your connection.", rank: 1 },
      { text: "Access sensitive information like banking without any extra security.", rank: 4 },
      { text: "Turn off your device’s Wi-Fi when not in use.", rank: 2 },
      { text: "Always accept any connection to public Wi-Fi networks.", rank: 3 },
    ],
  },
  {
    question: "What’s the most effective way to protect your online privacy?",
    options: [
      { text: "Use strong, unique passwords for every account and enable 2FA.", rank: 1 },
      { text: "Share your passwords with trusted people for convenience.", rank: 4 },
      { text: "Keep your login credentials in your browser’s password manager.", rank: 3 },
      { text: "Avoid using encryption on personal communications.", rank: 2 },
    ],
  },
  {
    question: "How should you manage your devices and accounts in the event of a security breach?",
    options: [
      { text: "Log out of all accounts and monitor your accounts for suspicious activity.", rank: 1 },
      { text: "Ignore the breach and continue using the devices as usual.", rank: 4 },
      { text: "Only change passwords for accounts you use frequently.", rank: 3 },
      { text: "Format your device and reinstall everything without further investigation.", rank: 2 },
    ],
  },
  {
    question: "What is the best method for ensuring your mobile device is secure?",
    options: [
      { text: "Use a PIN or fingerprint to lock your device and keep it updated.", rank: 1 },
      { text: "Leave your device unlocked for easier access.", rank: 4 },
      { text: "Share your PIN with a trusted friend in case you forget it.", rank: 3 },
      { text: "Install apps from any source without reviewing their permissions.", rank: 2 },
    ],
  }
];


export default function QuizApp() {
  const [isQuizOpen, setQuizOpen] = useState(false);
  const [currentQuestionIndex, setCurrentQuestionIndex] = useState(0);
  const [krabsEmotion, setKrabsEmotion] = useState(HappyKrabs);

  const currentQuestion = questions[currentQuestionIndex];

  const handleOptionClick = (rank) => {
    // updating krabs icon based on rank
    switch (rank) {
      case 1:
        setKrabsEmotion(HappyKrabs);
        break;
      case 2:
        setKrabsEmotion(NormalKrabs);
        break;
      case 3:
        setKrabsEmotion(AngryKrabs);
        break;
      case 4:
        setKrabsEmotion(CrazyKrabs);
        break;
      default:
        break;
    }

    if (currentQuestionIndex < questions.length - 1) {
      setCurrentQuestionIndex(currentQuestionIndex + 1);
    } else {
      setQuizOpen(false); // close quiz when all questions are done
    }
  };

  return (
    <div>
      <div>
        <img src={krabsEmotion} alt="Krabs Emotion" />
      </div>
      {isQuizOpen && (
        <div>
          <p>{currentQuestion.question}</p>
          {currentQuestion.options.map((option, index) => (
            <button key={index} onClick={() => handleOptionClick(option.rank)}>
              {option.text}
            </button>
          ))}
        </div>
      )}
    </div>
  );
}