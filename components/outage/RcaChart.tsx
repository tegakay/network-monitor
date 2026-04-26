import { createClient } from '@/lib/supabase/server'
import PieChart from '../charts/PieChart'

export default async function DashboardPage() {
  const supabase = await createClient()

  const { data, error } = await supabase.rpc('get_rca_summary')
  
  if (error) {
    console.error(error)
    return <div>Error loading dashboard</div>
  }

  return <PieChart data={data} />
}