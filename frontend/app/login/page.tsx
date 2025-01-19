import background from '@/public/background.png';
import React from 'react';

const Page = () => {
  return (
    <div
      className="h-screen bg-cover bg-center relative flex justify-center items-center"
      style={{ backgroundImage: `url(${background.src})` }}
    >
      {/* Overlay to darken background */}
      <div className="absolute inset-0 bg-black bg-opacity-60"></div>

      {/* Login Form Container */}
      <div className="relative bg-white shadow-2xl rounded-xl p-8 w-96 border border-gray-200">
        <h1 className="text-3xl font-extrabold text-center text-gray-800 mb-6">
          Login to <span className="text-orange-500">B2W</span>
        </h1>
        <form>
          {/* Email Field */}
          <div className="mb-4">
            <label htmlFor="email" className="block text-gray-700 font-medium mb-2">
              Email
            </label>
            <input
              type="email"
              id="email"
              className="w-full px-4 py-3 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-orange-400"
              placeholder="Enter your email"
              required
            />
          </div>

          {/* Password Field */}
          <div className="mb-6">
            <label htmlFor="password" className="block text-gray-700 font-medium mb-2">
              Password
            </label>
            <input
              type="password"
              id="password"
              className="w-full px-4 py-3 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-orange-400"
              placeholder="Enter your password"
              required
            />
          </div>

          {/* Login Button */}
          <button
            type="submit"
            className="w-full py-3 bg-gradient-to-r from-orange-500 to-yellow-500 text-white font-bold rounded-lg shadow-lg hover:from-orange-600 hover:to-yellow-600 transition duration-300 glow-effect"
          >
            Login
          </button>
        </form>
      </div>

      {/* Outer Glow Effect */}
      <div className="absolute inset-0 flex justify-center items-center">
        <div className="rounded-xl w-96 h-96 bg-gradient-to-r from-orange-400 via-yellow-500 to-orange-400 opacity-20 blur-3xl"></div>
      </div>
    </div>
  );
};

export default Page;
