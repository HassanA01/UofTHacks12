'use client';
import background from '@/public/Blue_Illustrative_8Bit_Pixel_Game_Presentation_1.png';
import { useRouter } from 'next/navigation';

export default function Hero() {
  const router = useRouter();

  const handlePlayClick = () => {
    router.push('/mrkrabs');
  };

  return (
    <div
      className="h-screen bg-cover bg-center flex flex-col justify-center items-center"
      style={{ backgroundImage: `url(${background.src})` }}
    >
      <div>
      <button
          onClick={handlePlayClick}
          className="items-center mt-40 px-12 py-4 bg-gradient-to-r from-black to-gray-800 text-amber-400 font-extrabold rounded-full shadow-lg transition-transform duration-300 hover:scale-110 hover:shadow-amber-500/50 focus:ring-offset-2"
        >
          Play
        </button>   
      </div>
    </div>
  );
}
