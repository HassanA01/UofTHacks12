"use client";
import React, { useState } from "react";
import axios from "axios";

const Hero = () => {
  // State to hold the chat messages
  const [messages, setMessages] = useState([]);
  
  // State to manage the current input from the user
  const [input, setInput] = useState("");

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
      className="fixed top-[29rem] left-[60rem] transform -translate-x-1/2 -translate-y-1/2 bg-transparent text-white shadow-lg rounded-lg w-[48rem] p-3"
      style={{
        fontFamily: "Monocraft, monospace", // Use custom pixelated font here
      }}
    >
      {/* Header for the chat tool */}
      <div className="bg-black text-white px-4 py-2 rounded-t-lg border-b border-gray-400">
        <h1 className="text-xs font-semibold text-center">Your Financial Advisor (Mr. Krabs)</h1>
      </div>

      {/* Container to display chat messages */}
      <div className="flex flex-col h-80">
        <div className="flex-1 p-2 overflow-y-auto space-y-3">
          {messages.map((msg, index) => (
            <div key={index} className="text-sm w-full">
              {/* Style for user messages */}
              <div
                className={`${
                  msg.role === "user" ? "bg-blue-600" : "bg-gray-700"
                } p-2 rounded-lg w-full text-white shadow-md`}
                style={{
                  alignSelf: msg.role === "user" ? "flex-end" : "flex-start",
                  borderRadius: "12px",
                  position: "relative",
                  fontFamily: "Monocraft, monospace", // Apply pixelated font here as well
                  wordBreak: "break-word", // Ensure the text wraps and doesn't overflow
                }}
              >
                <span>{msg.content}</span>
                {/* Tail for the bubble */}
                <div
                  className={`${
                    msg.role === "user" ? "right-0" : "left-0"
                  } absolute bottom-[-8px] w-0 h-0 border-l-8 border-r-8 border-t-8 border-transparent border-t-${
                    msg.role === "user" ? "blue" : "gray"
                  }`}
                />
              </div>
            </div>
          ))}
        </div>

        {/* Input and send button container */}
        <div className="flex items-center gap-2 mt-2 border-t border-gray-400 pt-2">
          <input
            type="text"
            value={input}
            onChange={(e) => setInput(e.target.value)}
            placeholder="Enter Message..."
            className="flex-1 px-3 py-1 bg-transparent border-b border-gray-400 text-white text-sm"
            style={{
              fontFamily: "Monocraft, monospace", // Apply pixelated font to input
            }}
          />
          <button
            onClick={handleSendMessage}
            className="px-3 py-1 bg-blue-600 text-white rounded-lg hover:bg-blue-700 transition text-sm"
          >
            Send
          </button>
        </div>
      </div>
    </div>
  );
};

export default Hero;
