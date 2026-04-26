import RcaChart from '@/components/outage/RcaChart'
import SummaryTable from '@/components/outage/SummaryTable/SummaryTable'
import RnaData from '@/components/Rna/RnaData'
import { createClient } from '@/lib/supabase/server'

export default async function DashboardPage() {
  const supabase = await createClient()



  return (
    <>
      <div className="col-span-1 bg-white border rounded-xl p-4">
        <h2 className="text-sm font-semibold mb-3">Regional Site Outages</h2>
        {/* // SummaryTable goes here (Phase 2) */}
        <SummaryTable/>
      </div>
      <div className="col-span-1 bg-white border rounded-xl p-4">
        <h2 className="text-sm font-semibold mb-3">Pie Chart of RCA L1</h2>
        {/* // RcaPieChart goes here (Phase 3) */}
        <RcaChart/>
      </div>
      <div className="col-span-2 bg-white border rounded-xl p-4">
        <h2 className="text-sm font-semibold mb-3">RNA Chart by Technology</h2>
        <RnaData/>
      </div>
      {/* <div className="col-span-1 bg-white border rounded-xl p-4">
        <h2 className="text-sm font-semibold mb-3">Hourly RNA</h2>
        
      </div> */}
    </>
  )
}