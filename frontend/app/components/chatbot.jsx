"use client";
import React, { useState } from "react";
import axios from "axios";

const Hero = () => {
  // State to hold the chat messages
  const [messages, setMessages] = useState([]);
  
  // State to manage the current input from the user
  const [input, setInput] = useState("");

  // State to track whether the chat box is minimized
  const [isMinimized, setIsMinimized] = useState(false);

  // Function to handle sending a message
  const handleSendMessage = async () => {
    if (input.trim() === "") return;

    const userMessage = { role: "user", content: input };
    setMessages([...messages, userMessage]);

    try {
      const response = await axios.post("/api/cohere-chat", { message: input });
      const aiMessage = { role: "ai", content: response.data.content };
      setMessages((prevMessages) => [...prevMessages, aiMessage]);
    } catch (error) {
      console.error("Error sending message:", error);
    }

    setInput("");
  };

  return (
    <div
      className="fixed bottom-4 right-4 bg-white text-black shadow-lg rounded-lg w-64" // Reduced width
    >
      {/* Header for the chat tool */}
      <div
        className="bg-blue-600 text-white px-3 py-1 rounded-t-lg cursor-pointer" // Reduced padding
        onClick={() => setIsMinimized(!isMinimized)} // Toggle the minimized state
      >
        <h1 className="text-sm font-semibold"> {/* Reduced font size */}
          {isMinimized ? "Chat (Click to Expand)" : "MyBank Support"}
        </h1>
      </div>

      {/* Show content only if not minimized */}
      {!isMinimized && (
        <div className="flex flex-col h-72"> {/* Reduced height */}
          {/* Container to display chat messages */}
          <div className="flex-1 p-3 overflow-y-auto"> {/* Reduced padding */}
            {messages.map((msg, index) => (
              <div key={index} className="mb-2 text-sm"> {/* Reduced font size */}
                <strong className="block">
                  {msg.role === "user" ? "You" : "MyBank Support"}:
                </strong>
                <span>{msg.content}</span>
              </div>
            ))}
          </div>

          {/* Input and send button container */}
          <div className="flex items-center gap-2 border-t p-2">
            <input
              type="text"
              value={input}
              onChange={(e) => setInput(e.target.value)}
              placeholder="Enter Message..."
              className="flex-1 px-3 py-1 border rounded-lg text-sm" // Reduced padding and font size
            />
            <button
              onClick={handleSendMessage}
              className="px-3 py-1 bg-blue-600 text-white rounded-lg hover:bg-blue-700 transition text-sm" // Reduced padding and font size
            >
              Send
            </button>
          </div>
        </div>
      )}
    </div>
  );
};

export default Hero;