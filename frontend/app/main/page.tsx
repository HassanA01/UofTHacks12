'use client';
import React from 'react'
import { useRouter } from 'next/navigation';

const Page = () => {
  const router = useRouter();
    
  const handlePlayClick = () => {
    router.push('/play');
  };

  return (
    <div
      className="flex h-screen justify-center items-center bg-gradient-to-br from-custom-black via-custom-black to-custom-yellow relative"
    >
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
        <div className="w-1/2 h-80 bg-neutral-900 rounded-xl flex justify-center items-start p-4">
          <h2 className="text-white text-2xl font-bold text-center w-full">Insights</h2>
        </div>

        {/* Goals Box */}
        <div className="w-1/2 h-80 bg-neutral-900 rounded-xl flex justify-center items-start p-4">
          <h2 className="text-white text-2xl font-bold text-center w-full">Goals</h2>
        </div>
      </div>
    </div>
  );
}

export default Page;