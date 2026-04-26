'use client'

import {
  LineChart,
  Line,
  XAxis,
  YAxis,
  Tooltip,
  ResponsiveContainer,
  CartesianGrid,
  Legend
} from 'recharts'

type Row = {
  summary_date: string
  twog: number
  threeg: number
  fourg: number
  fiveg: number
}

export default function Rna({ data }: { data: Row[] }) {

  return (
    <div style={{ width: '100%', height: 400 }}>
      <ResponsiveContainer>
        <LineChart data={data}>
          {/* <CartesianGrid strokeDasharray="3 3" /> */}

          <XAxis
            dataKey="summary_date"
            // tickFormatter={(d) => new Date(d).getDate()}
          />

          <YAxis type="number" domain={[89, 100]} />
          <Tooltip />
          <Legend />

          <Line type="monotone" dataKey="2G" stroke="#8884d8" />
          <Line type="monotone" dataKey="3G" stroke="#82ca9d" />
          <Line type="monotone" dataKey="4G" stroke="#ff7300" />
          <Line type="monotone" dataKey="5G" stroke="#ff0000" />
        </LineChart>
      </ResponsiveContainer>
    </div>
  )
}