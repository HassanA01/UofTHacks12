'use client';
import background from '@/public/Blue_Illustrative_8Bit_Pixel_Game_Presentation_1.png';
import { useRouter } from 'next/navigation';

export default function Hero() {
  const router = useRouter();

  const handlePlayClick = () => {
    router.push('/login');
  };

  return (
    <div
      className="h-screen bg-cover bg-center flex flex-col justify-center items-center"
      style={{ backgroundImage: `url(${background.src})` }}
    >
      <div>
        <button
          onClick={handlePlayClick}
          className="items-center mt-20 px-10 py-2 bg-neutral-900 text-amber-400 font-extrabold rounded-2xl hover:bg-neutral-600"
        >
          Play
        </button>
      </div>
    </div>
  );
}
