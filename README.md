# Network Monitoring Dashboard

A comprehensive web application for monitoring network outages and performance metrics, built with Next.js, React, and Supabase.

## Features

- **Real-time Dashboard**: Interactive dashboard displaying network status and metrics
- **Outage Monitoring**: Track and analyze network outages with drilldown capabilities
- **RNA Metrics**: Monitor RNA (Radio Network Analytics) performance data
- **Interactive Charts**: Visualize data using pie charts and other chart components
- **Drilldown Tables**: Detailed outage information with AG Grid tables
- **Export Functionality**: Export outage data to various formats
- **Responsive Design**: Built with Tailwind CSS for mobile and desktop compatibility

## Tech Stack

- **Frontend**: Next.js 16, React 19, TypeScript
- **Styling**: Tailwind CSS, Radix UI components
- **Charts**: Recharts
- **Tables**: AG Grid React
- **Database**: Supabase (PostgreSQL)
- **State Management**: Zustand
- **Icons**: Lucide React

## Prerequisites

- Node.js 18+
- npm or yarn
- Supabase account and project

## Installation

1. Clone the repository:
   ```bash
   git clone <repository-url>
   cd network-monitoring-dashboard
   ```

2. Install dependencies:
   ```bash
   npm install
   ```

3. Set up Supabase:
   - Create a new Supabase project
   - Copy your project URL and anon key
   - Update `lib/supabase/client.ts` and `lib/supabase/server.ts` with your credentials
   - Run the database migrations:
     ```bash
     npx supabase db push
     ```
   - Seed the database (if needed):
     ```bash
     npx supabase db reset
     ```

4. Configure environment variables (if any) in `.env.local`

## Running the Application

Start the development server:

```bash
npm run dev
```

Open [http://localhost:3000](http://localhost:3000) to view the application.

## Build for Production

```bash
npm run build
npm start
```

## API Endpoints

- `GET /api/drilldown?technology=<tech>&region=<region>` - Fetch outage drilldown data

## Project Structure

```
├── app/                    # Next.js app directory
│   ├── api/               # API routes
│   ├── dashboard/         # Dashboard pages
│   └── globals.css        # Global styles
├── components/            # React components
│   ├── charts/           # Chart components
│   ├── outage/           # Outage-related components
│   └── ui/               # UI components (shadcn/ui)
├── hooks/                # Custom React hooks
├── lib/                  # Utility libraries
│   └── supabase/         # Supabase configuration
├── store/                # Zustand state stores
├── supabase/             # Supabase configuration and migrations
└── types/                # TypeScript type definitions
```

## Key Components

- **Dashboard**: Main overview page with metrics and charts
- **Outage Components**: Summary tables, drilldown modals, export functionality
- **RNA Components**: RNA metrics visualization
- **Charts**: Pie charts and other data visualizations

## Database Schema

The application uses Supabase with the following main tables:
- `outage_drilldown`: Detailed outage information
- Other tables as defined in migrations

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Run linting: `npm run lint`
5. Test your changes
6. Submit a pull request

## License

This project is private and proprietary.
