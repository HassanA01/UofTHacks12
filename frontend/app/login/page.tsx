'use client';
import React, { useState } from 'react';
import { useRouter } from 'next/navigation'; // Import useRouter
import Link from 'next/link';

const Page = () => {
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const [error, setError] = useState('');
  const router = useRouter(); // Initialize router

  const handleSubmit = async (e) => {
    e.preventDefault(); // Prevent form from refreshing the page

    setError(''); // Clear any previous error

    try {
      // API call to log in the user
      const response = await fetch('http://localhost:5000/api/auth/login', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify({ email, password }),
      });

      const data = await response.json();

      if (response.ok) {
        // Redirect to /mrkrabs on successful login
        router.push('/main');
      } else {
        // Handle API errors
        setError(data.errors?.[0]?.msg || 'Invalid email or password.');
      }
    } catch (err) {
      console.error('Error during login:', err);
      setError('Failed to connect to the server. Please try again later.');
    }
  };

  return (
    <div
      className="flex h-screen justify-center items-center bg-gradient-to-br from-custom-black via-custom-black to-custom-yellow"
    >
      {/* Outer Glow Effect */}
      <div className="absolute inset-0 flex justify-center items-center z-0">
        <div className="rounded-xl w-96 h-96 bg-gradient-to-r from-orange-400 via-yellow-500 to-orange-400 opacity-20 blur-3xl"></div>
      </div>

      {/* Login Form Container */}
      <div className="relative bg-white shadow-2xl rounded-xl p-8 w-96 border border-gray-200 z-10">
        <h1 className="text-3xl font-extrabold text-center text-gray-800 mb-6">
          Login to <span className="text-orange-500">B2W</span>
        </h1>
        <form onSubmit={handleSubmit}>
          {/* Email Field */}
          <div className="mb-4">
            <label htmlFor="email" className="block text-gray-700 font-medium mb-2">
              Email
            </label>
            <input
              type="email"
              id="email"
              value={email}
              onChange={(e) => setEmail(e.target.value)}
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
              value={password}
              onChange={(e) => setPassword(e.target.value)}
              className="w-full px-4 py-3 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-orange-400"
              placeholder="Enter your password"
              required
            />
          </div>

          {/* Error Message */}
          {error && <p className="text-red-500 text-sm mb-4">{error}</p>}

          <div className="text-center mb-4">
            <h2>
              Don't have an account? <Link href="/signup">Sign up</Link>
            </h2>
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
    </div>
  );
};

export default Page;
