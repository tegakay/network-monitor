'use client'

'use client'

import {
  PieChart,
  Pie,
  Cell,
  Label,
  LabelList,
  Tooltip,
  ResponsiveContainer,
  Legend,
  LabelProps
} from 'recharts'

type RCAData = {
  rca_l1: string
  total_count: number
}

// Define a color palette
const COLORS = [
  '#0088FE',
  '#00C49F',
  '#FFBB28',
  '#FF8042',
  '#A28EFF',
  '#FF6699',
  '#33CC99',
  '#FF4444'
]

const MyCustomLabel = (props: LabelProps) => (
  <Label {...props} fill={COLORS[(props.index ?? 0) % COLORS.length]} position="outside"  />
);

export default function RCAPieChart({ data }: { data: RCAData[] }) {
  return (
    <div style={{ width: '100%', height: 230 }}>
      <ResponsiveContainer>
        <PieChart>
          <Pie
            data={data}
            dataKey="total_count"
            nameKey="rca_l1"
            cx="50%"
            cy="40%"
            // outerRadius={120}
            label
          >
            {data.map((entry, index) => (
              <Cell
                key={`cell-${index}`}
                fill={COLORS[index % COLORS.length]}
              />
            ))}
             {/* <LabelList content={MyCustomLabel} /> */}
          </Pie>

          <Tooltip />
          <Legend />
        </PieChart>
      </ResponsiveContainer>
    </div>
  )
}

// import {
//   BarChart,
//   Bar,
//   XAxis,
//   YAxis,
//   Tooltip,
//   ResponsiveContainer,
//   CartesianGrid,
//   PieChart as RechartsPieChart,
//   Pie,
// } from 'recharts'


// type RCAData = {
//   rca_l1: string
//   total_count: number
// }

// export default function PieChart({ data }: { data: RCAData[] }) {

//   return (
//     <div>
//       <RechartsPieChart width={400} height={400}>
//       <Pie
//         data={data}
//         dataKey="total_count"
//         nameKey="rca_l1"
//       />
//       <Tooltip />
//     </RechartsPieChart>
//     </div>
//   )
// }