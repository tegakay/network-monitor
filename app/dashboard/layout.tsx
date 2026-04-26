export default function DashboardLayout({ children }: { children: React.ReactNode }) {
  return (
    <div className="min-h-screen bg-gray-50 flex flex-col">
      <header className="h-14 border-b bg-white flex items-center px-6 gap-4">
        <span className="font-semibold text-sm">Network Monitor</span>
        <span className="ml-auto text-xs text-gray-400">Live</span>
      </header>
      <main className="flex-1 p-6 grid grid-cols-2 gap-4 items-start">
        {children}
      </main>
    </div>
  )
}