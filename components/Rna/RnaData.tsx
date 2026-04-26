import { createClient } from "@/lib/supabase/server"
import Rna from "../charts/Rna"
import { Row } from "@/types"


export default async function RnaData() {
  const supabase = await createClient()

//   const { data, error } = await supabase.rpc(
//     'get_monthly_tech_trend',
//     { p_region: 'National' }
//   )
const {data, error} = await supabase.rpc('get_monthly_tech_trend', {
  p_region: 'National',
  p_period: 'current'
})

const updatedRows = data.map(({ twog, threeg, fourg, fiveg, ...rest }: Row) => ({
  ...rest,
  "2G": twog,
  "3G": threeg,
  "4G": fourg,
  "5G": fiveg
}));

  if (error) {
    console.error(error)
    return <div>Error loading trend</div>
  }

  return <Rna data={updatedRows} />
}