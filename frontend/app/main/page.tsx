'use client';
import React, { useState } from 'react'
import { useRouter } from 'next/navigation';
import axios from 'axios';

const Page = () => {
  const router = useRouter();
  const [insightsData, setInsightsData] = useState(null);
  const [goalsData, setGoalsData] = useState(null);

  // Function to handle the API request for insights
  const fetchInsights = async () => {
    try {
      const response = await axios.get('http://localhost:5001/insights'); // Make sure the backend server is running
      setInsightsData(response.data);
    } catch (error) {
      console.error("Error fetching insights:", error);
    }
  };

  // Function to handle the API request for goals
  const fetchGoals = async () => {
    try {
      const response = await axios.get('http://localhost:5001/goals'); // Make sure the backend server is running
      setGoalsData(response.data);
    } catch (error) {
      console.error("Error fetching goals:", error);
    }
  };

  // Handle play button click
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
          className="w-1/2 h-80 bg-neutral-900 rounded-xl flex justify-center items-start p-4 cursor-pointer"
          onClick={fetchInsights} // Fetch insights on click
        >
          <h2 className="text-white text-2xl font-bold text-center w-full">Insights</h2>
          {/* Display insights data */}
          {insightsData ? (
            <div className="text-white mt-4">
              <pre>{JSON.stringify(insightsData, null, 2)}</pre> {/* Displaying the response */}
            </div>
          ) : (
            <div className="text-white mt-4">Click to fetch insights</div>
          )}
        </div>

        {/* Goals Box */}
        <div
          className="w-1/2 h-80 bg-neutral-900 rounded-xl flex justify-center items-start p-4 cursor-pointer"
          onClick={fetchGoals} // Fetch goals on click
        >
          <h2 className="text-white text-2xl font-bold text-center w-full">Goals</h2>
          {/* Display goals data */}
          {goalsData ? (
            <div className="text-white mt-4">
              <pre>{JSON.stringify(goalsData, null, 2)}</pre> {/* Displaying the response */}
            </div>
          ) : (
            <div className="text-white mt-4">Click to fetch goals</div>
          )}
        </div>
      </div>
    </div>
  );
}

export default Page;
