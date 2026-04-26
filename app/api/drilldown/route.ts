import { NextResponse } from 'next/server';
import {createClient} from '@/lib/supabase/server'


export async function GET(request: Request) {
  const { searchParams } = new URL(request.url);
  console.error('searchParams', searchParams)
  const region = searchParams.get('region');
  let technology = searchParams.get('technology');
    technology = technology? technology.toLowerCase() : technology

  if (!region || !technology) {
    return NextResponse.json({ error: 'Region and technology are required' }, { status: 400 });
  }
  const supabase = await createClient()
    const { data, error } = await supabase
    .from('outage_drilldown')
    .select('*')
    .eq('technology', technology)
    .eq('region', region)
    .order('started_at', { ascending: false });

    console.log('data ',data)

    if (error) {
        console.error(error)
        return NextResponse.json({ error: 'Failed to fetch drilldown data' }, { status: 500 });
    }
    
    return NextResponse.json(data);
}