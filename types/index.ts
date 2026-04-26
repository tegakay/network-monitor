export type Technology = '2g' | '3g' | '4g' | '5g' 
export type Severity   = 'low' | 'medium' | 'high' | 'critical'
export type Status     = 'active' | 'resolved' | 'investigating'
export type Granularity = 'daily' | 'hourly'
export type RcaL1      = 'Power' | 'Transmission' | 'Civil' | 'Unknown'

export interface OutageDrilldownRow {
  id:            string        // uuid
  site_id:       string
  site_name:     string
  region:        string
  state:         string | null
  lga:           string | null
  technology:    Technology
  alarm_type:    string | null
  severity:      Severity
  status:        Status
  rca_l1:        string | null
  ticket_ref:    string | null
  engineer:      string | null
  remarks:       string | null
  started_at:    string        // ISO timestamptz
  resolved_at:   string | null // ISO timestamptz — null when still active
  duration_min:  number | null // generated column: null when resolved_at is null
  created_at:    string
}

//Summary Table Types
export type TableColumn<T> = {
  key: keyof T | string;
  label: string;
  render?: (row: T) => React.ReactNode;
};

export type summaryfield ={
  region: string;
  two2g: number;
  three3g: number;
  four4g: number;
  five5g: number;
}

export type TableProps<T> = {
  data: summaryfield[];
  columns: TableColumn<T>[];
  rowKey?: (row: T) => string | number;
};

export type Row = {
  summary_date: string
  twog: number
  threeg: number
  fourg: number
  fiveg: number
}

