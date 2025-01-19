import { CohereClientV2 } from 'cohere-ai';
import dotenv from 'dotenv';

dotenv.config();

const cohere = new CohereClientV2({
  token: process.env.COHERE_AI,
});

export default async function handler(req, res) {
  if (req.method === 'POST') {
    const { message } = req.body;

    try {
      const response = await cohere.chat({
        model: 'command-light',
        messages: [
          {
            role: 'system', // Add system role for strict instructions
            content: `You are a Support bot for a bank called "MyBank", and you are 
            ONLY tasked with assisting users with basic support regarding their bank accounts. You CANNOT PROVIDE ANY INFO
            OUTSIDE OF THE USERS BANK ACCOUNT. IF the QUERY is IRRELEVANT, please respond with "I am sorry, but I cannot assist you with that query."
            If the QUERY is RELEVANT, please respond with the following format:
            "hello, this is MyBank Support. How can I help you today?"`,
          },
          {
            role: 'user',
            content: message,
          },
        ],
      });

      res.status(200).json({ content: response.message.content[0]?.text || 'No response from Cohere API' });
    } catch (error) {
      console.error('Error:', error);
      res.status(500).json({ error: 'Error processing request' });
    }
  } else {
    res.status(405).json({ error: 'Method not allowed' });
  }
}