'use client';
import React, { useState } from 'react';
import Chat from '@/app/components/chatbot';
import Image from 'next/image'; // Import the Next.js Image component
import background from "@/public/background.png";
import normal from "@/public/normal-krabs.png";
import HappyKrabs from "@/public/happy-krabs.png";
import AngryKrabs from "@/public/angry-krabs.png";
import CrazyKrabs from "@/public/crazy-krabs.png";
import { useRouter } from 'next/navigation';

// Quiz Questions
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
    question: "What’s the safest way to protect your phone from unauthorized access?",
    options: [
      { text: "Use a strong PIN or biometric authentication (fingerprint, face recognition).", rank: 1 },
      { text: "Leave it unlocked when not in use.", rank: 4 },
      { text: "Share your PIN with close friends for convenience.", rank: 3 },
      { text: "Write your PIN down and store it in your phone case.", rank: 2 },
    ],
  },
  {
    question: "What should you do when using public Wi-Fi for browsing?",
    options: [
      { text: "Avoid accessing sensitive accounts like banking and emails.", rank: 1 },
      { text: "Use a VPN to protect your data.", rank: 2 },
      { text: "It’s safe to use public Wi-Fi for anything.", rank: 4 },
      { text: "Turn off your device's firewall for better connectivity.", rank: 3 },
    ],
  },
  {
    question: "How can you make sure your devices stay secure from malware?",
    options: [
      { text: "Install antivirus software and keep it updated.", rank: 1 },
      { text: "Download apps from unofficial sources to get free versions.", rank: 4 },
      { text: "Disable automatic updates to avoid system changes.", rank: 3 },
      { text: "Only visit trusted websites and avoid clicking on unknown links.", rank: 2 },
    ],
  },
];

const Page = () => {

  const router = useRouter();
const handlePlayClick = () => {
  router.push('/main');
};
  const [isQuizOpen, setQuizOpen] = useState(false);
  const [currentQuestionIndex, setCurrentQuestionIndex] = useState(0);
  const [krabsEmotion, setKrabsEmotion] = useState(HappyKrabs);
  const [score, setScore] = useState(0);  // Track the score

  const currentQuestion = questions[currentQuestionIndex];

  const handleOptionClick = (rank) => {
    // Check if the answer is correct
    if (rank === 1) {
      setKrabsEmotion(HappyKrabs);
      setScore(score + 1); // Increment score for correct answer
    } else if (rank === 3) {
      setKrabsEmotion(AngryKrabs);
    }
    else if (rank === 4) {
      setKrabsEmotion(CrazyKrabs);
    }

    if (currentQuestionIndex < questions.length - 1) {
      setCurrentQuestionIndex(currentQuestionIndex + 1);
    } else {
      setQuizOpen(false); // Close quiz when all questions are done
      setScore(0); // Reset score when quiz closes
      setCurrentQuestionIndex(0); // Optionally reset the question index
    }
  };

  const handleCloseQuiz = () => {
    setQuizOpen(false); // Close the quiz
    setScore(0); // Reset score
    setCurrentQuestionIndex(0); // Reset question index
  };

  return (
    <div className="relative">
      <div
        className="h-screen bg-cover bg-center"
        style={{ backgroundImage: `url(${background.src})` }}
      >
        {/* You can add content here */}
      </div>

      {/* krabs */}
      <div className="absolute top-1/2 left-1/4 transform -translate-x-1/2 -translate-y-1/2 items-center justify-center flex">
        <Image
          src={normal}
          alt="krabs"
          width={700}  // Set appropriate width
          height={700} // Set appropriate height
        />
      </div>

      {/* Start Quiz Button */}
      <div className="absolute top-[13rem] left-[56rem] transform z-10">
        <button
          className="bg-blue-500 text-white px-4 py-2 rounded"
          onClick={() => setQuizOpen(true)}
        >
          Start Quiz
        </button>
      </div>

      {/* Quiz Popup */}
      {isQuizOpen && (
        <div className="absolute top-0 left-0 w-full h-full bg-gray-800 bg-opacity-75 flex items-center justify-center z-20">
          <div className="bg-white p-8 rounded-lg max-w-lg">
            <div>
              <Image src={krabsEmotion} alt="Krabs Emotion" width={100}  // Set appropriate width
          height={100} />
            </div>
            <p className="text-xl font-bold mb-4">{currentQuestion.question}</p>
            {currentQuestion.options.map((option, index) => (
              <button
                key={index}
                className="bg-blue-500 text-white px-4 py-2 rounded block mb-2 w-full"
                onClick={() => handleOptionClick(option.rank)}
              >
                {option.text}
              </button>
            ))}
            <div className="mt-4">
              <p>Score: {score}</p>
            </div>
            {/* Close Quiz Button */}
            <button
              className="bg-red-500 text-white px-4 py-2 rounded mt-4 w-full"
              onClick={handleCloseQuiz}
            >
              Close Quiz
            </button>
          </div>
        </div>
      )}

      {/* ChatBot */}
      {/* Play Button at Top Right */}
      <button
        onClick={handlePlayClick}
        className="absolute top-5 right-5 px-12 py-4 bg-gradient-to-r from-black to-gray-800 text-amber-400 font-extrabold rounded-full shadow-lg transition-transform duration-300 hover:scale-110 hover:shadow-amber-500/50 focus:ring-offset-2"
      >
        Return to Dashboard
      </button>
      <div className="absolute top-[18rem] left-0 z-10">
        <Chat />
      </div>
    </div>
  );
};

export default Page;
