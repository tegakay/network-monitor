import { createClient } from '@/lib/supabase/server'
import { DynamicTable } from './DynamicTable';

export default async function SummaryTable() {
  const supabase = await createClient()

  const { data, error } = await supabase.rpc('get_outage_counts')
 
  const columns = [
    { key: "region", label: "Region" },
    { key: "two2g", label: "2G" },
    { key: "three3g", label: "3G" },
    { key: "four4g", label: "4G" },
    { key: "five5g", label: "5G" },
  ];
  

  
  if (error) {

    console.error(error)
    return <div>Error loading data</div>
  }

  return <DynamicTable data={data} columns={columns} />
}