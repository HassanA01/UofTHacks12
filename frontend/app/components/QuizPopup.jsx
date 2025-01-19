import React, { useState } from "react";

import HappyKrabs from "./icons/happy-krabs.png";
import NormalKrabs from "./icons/normal-krabs.png";
import AngryKrabs from "./icons/angry-krabs.png";
import CrazyKrabs from "./icons/crazy-krabs.png";

const questions = [
   {
    question: "Ye’ve been plunderin’ too much and yer account is overdrafted! What’s the FIRST thing ye should do?",
    options: [
      { text: "Stop spending immediately!", rank: 1 },
      { text: "Take out a loan to cover it ", rank: 3 },
      { text: "Ignore it—bank fees aren’t real!", rank: 4 },
      { text: "Ask the bank to waive the overdraft fee", rank: 2 },
    ],
  },
  {
    question: "Ye find a credit card offer with 0% interest fer the first year! What’s the catch?",
    options: [
      { text: "Ye must pay off the balance before the promo ends", rank: 1 },
      { text: "Ye can use it to buy a ship and forget about payments", rank: 3 },
      { text: "There is no catch—free money!", rank: 4 },
      { text: " Ye still have to pay the minimum balance each month", rank: 2 },
    ],
  },
  {
    question: "Ye just got a paycheck! What should ye do first before spending any of it?",
    options: [
      { text: " Create a budget", rank: 1 },
      { text: "Buy somethin’ shiny!", rank: 4 },
      { text: "Pay yer bills, then plan the rest", rank: 2 },
      { text: "Take it to the Krusty Krab for a celebratory feast", rank: 3 },
    ],
  },
  {
    question: "What’s the best way to handle debt from multiple sources?",
    options: [
      { text: "Pay off the highest-interest debt first", rank: 1 },
      { text: "Pay off the smallest debt first for momentum", rank: 2 },
      { text: "Ignore the debt; maybe it’ll disappear", rank: 4 },
      { text: "Pay the minimum balance on all and wait", rank: 3 },
    ],
  },
  {
    question: "Arrr! Ye find a shiny gold doubloon (or $100), and ye don’t need it fer anything urgent. Where should ye put it to grow like a treasure chest buried in fertile sands?",
    options: [
      { text: "In a high-yield savings account", rank: 1 },
      { text: "Under yer mattress where no one can touch it!", rank: 3 },
      { text: "Spend it all on krabby patties today!", rank: 4 },
      { text: "Invest it in stocks or index funds", rank: 2 },
    ],
  },
  {
    question: "Compound interest be the magic of the financial seas! If yer bank offers 5% annual interest, how much treasure will $100 grow into after 2 years if it compounds annually?",
    options: [
      { text: "$110.25", rank: 1 },
      { text: "$105.00", rank: 2 },
      { text: "$200.00", rank: 4 },
      { text: "$115.00", rank: 3 },
    ],
  },
  {
    question: "A sale offers 20% off, but ye must pay 13% sales tax. If the original price be $100, how much doubloon should ye expect to part with?",
    options: [
      { text: "$87.60", rank: 1 },
      { text: "$80.00", rank: 4 },
      { text: "$90.40", rank: 3 },
      { text: "$84.00", rank: 2 },
    ],
  },
  {
    question: "What’s the Krabby rule when it comes to saving yer paycheck? How much should ye save fer yer long-term goals?",
    options: [
      { text: "At least 20% of yer paycheck", rank: 1 },
      { text: "10%, but only if yer feeling generous", rank: 2 },
      { text: "Spend first, save later—if there's anything left!", rank: 4 },
      { text: "Every single doubloon, no matter what!", rank: 3 },
    ],
  },
  {
    question: "What be the most important reason to track yer spending?",
    options: [
      { text: "To know where yer money is goin’", rank: 1 },
      { text: "To prove to Mr. Krabs that ye’re responsible", rank: 2 },
      { text: "So ye can make sure ye spend every single doubloon!", rank: 4 },
      { text: "So ye can tell yer friends ye’re broke ", rank: 3 },
    ],
  }
];

export default function QuizApp() {
  const [isQuizOpen, setQuizOpen] = useState(false);
  const [currentQuestionIndex, setCurrentQuestionIndex] = useState(0);
  const [krabsEmotion, setKrabsEmotion] = useState(HappyKrabs);

  const currentQuestion = questions[currentQuestionIndex];

  const handleOptionClick = (rank) => {
    // updaying krabs icon based on rank
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

  // someone make the buttons yo
}
