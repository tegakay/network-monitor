// components/Modal.tsx
"use client";

interface ModalProps {
  isOpen: boolean;
  onClose: () => void;
  children: React.ReactNode;
}

export default function Modal({ isOpen, onClose, children }: ModalProps) {
  if (!isOpen) return null;

  return (
    <div className="fixed inset-0 z-50 flex items-center  justify-center bg-black bg-opacity-50 backdrop-blur-sm py-8">
      <div className="relative w-full max-w-lg rounded-lg bg-white p-6 shadow-xl dark:bg-gray-800">
        {/* Close Button */}
        <button
          onClick={onClose}
          className="absolute right-4 top-4 bg-gray text-red-500 hover:text-red-700"
        >
          ✕
        </button>
        
        <div className="mt-2">
          {children}
        </div>
      </div>
    </div>
  );
}