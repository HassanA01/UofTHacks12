'use client';
import React, { useState } from 'react';
import { useRouter } from 'next/navigation';
import axios from 'axios';

// Define the interfaces for the API responses
interface Insight {
  user_name: string;
  goal_name: string;
  target_amount: number;
  current_savings: number;
  required_savings_rate: number;
  avg_monthly_spent: number;
}

interface Goal {
  goal_name: string;
  target_amount: number;
  current_savings: number;
  days_left: number;
}

const Page = () => {
  const router = useRouter();
  const [insightsData, setInsightsData] = useState<Insight[] | null>(null);
  const [goalsData, setGoalsData] = useState<Goal[] | null>(null);
  const [loadingInsights, setLoadingInsights] = useState(false);
  const [loadingGoals, setLoadingGoals] = useState(false);
  const [errorInsights, setErrorInsights] = useState<string | null>(null);
  const [errorGoals, setErrorGoals] = useState<string | null>(null);

  const fetchInsights = async () => {
    setLoadingInsights(true);
    setErrorInsights(null);
    try {
      const response = await axios.get<Insight[]>('http://localhost:5001/insights');
      setInsightsData(response.data);
    } catch (error) {
      setErrorInsights('Error fetching insights');
      console.error('Error fetching insights:', error);
    } finally {
      setLoadingInsights(false);
    }
  };

  const fetchGoals = async () => {
    setLoadingGoals(true);
    setErrorGoals(null);
    try {
      const response = await axios.get<Goal[]>('http://localhost:5001/goals');
      setGoalsData(response.data);
    } catch (error) {
      setErrorGoals('Error fetching goals');
      console.error('Error fetching goals:', error);
    } finally {
      setLoadingGoals(false);
    }
  };

  const handlePlayClick = () => {
    router.push('/play');
  };

  return (
    <div className="flex h-screen justify-center items-center bg-gradient-to-br from-custom-black via-custom-black to-custom-yellow relative">
      {/* Outer Glow Effect */}
      <div className="absolute inset-0 flex justify-center items-center z-0">
        <div className="rounded-xl w-96 h-96 bg-gradient-to-r from-orange-400 via-yellow-500 to-orange-400 opacity-20 blur-3xl"></div>
      </div>

      {/* Welcome Message at Top Left */}
      <div className="absolute top-5 left-5">
        <h1 className="text-4xl font-bold text-white">Welcome to your Dashboard</h1>
      </div>

      {/* Play Button at Top Right */}
      <button
        onClick={handlePlayClick}
        className="absolute top-5 right-5 px-12 py-4 bg-gradient-to-r from-black to-gray-800 text-amber-400 font-extrabold rounded-full shadow-lg transition-transform duration-300 hover:scale-110 hover:shadow-amber-500/50 focus:ring-offset-2"
      >
        Financial Advisor
      </button>

      {/* Main Content with Two Boxes */}
      <div className="absolute flex space-x-4 w-3/4 justify-center z-10">
        {/* Insights Box */}
<div
  className="w-1/2 max-h-80 bg-neutral-900 rounded-xl flex flex-col items-start p-4 cursor-pointer overflow-y-auto"
  onClick={fetchInsights}
>
  <h2 className="text-white text-2xl font-bold text-center w-full">Insights</h2>
  {loadingInsights ? (
    <div className="text-white mt-4">Loading insights...</div>
  ) : errorInsights ? (
    <div className="text-white mt-4">{errorInsights}</div>
  ) : insightsData ? (
    <div className="text-white mt-4 space-y-4 w-full">
      {insightsData.map((insight, index) => (
        <div key={index} className="bg-gray-800 p-4 rounded-md">
          <h3 className="font-bold">
            {insight.user_name} - {insight.goal_name}
          </h3>
          <p>Target Amount: ${insight.target_amount}</p>
          <p>Current Savings: ${insight.current_savings}</p>
          <p>Required Savings Rate: ${insight.required_savings_rate} per day</p>
          <p>Avg Monthly Spent: ${insight.avg_monthly_spent}</p>
        </div>
      ))}
    </div>
  ) : (
    <div className="text-white mt-4">Click to fetch insights</div>
  )}
</div>

{/* Goals Box */}
<div
  className="w-1/2 max-h-80 bg-neutral-900 rounded-xl flex flex-col items-start p-4 cursor-pointer overflow-y-auto"
  onClick={fetchGoals}
>
  <h2 className="text-white text-2xl font-bold text-center w-full">Goals</h2>
  {loadingGoals ? (
    <div className="text-white mt-4">Loading goals...</div>
  ) : errorGoals ? (
    <div className="text-white mt-4">{errorGoals}</div>
  ) : goalsData ? (
    <div className="text-white mt-4 space-y-4 w-full">
      {goalsData.map((goal, index) => (
        <div key={index} className="bg-gray-800 p-4 rounded-md">
          <h3 className="font-bold">{goal.goal_name}</h3>
          <p>Target Amount: ${goal.target_amount}</p>
          <p>Current Savings: ${goal.current_savings}</p>
          <p>Days Left: {goal.days_left}</p>
        </div>
      ))}
    </div>
  ) : (
    <div className="text-white mt-4">Click to fetch goals</div>
  )}
</div>

      </div>
    </div>
  );
};

export default Page;
