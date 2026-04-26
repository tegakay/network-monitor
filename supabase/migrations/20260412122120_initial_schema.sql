-- create extension if not exists "uuid-ossp";
DROP EXTENSION IF EXISTS "uuid-ossp";
CREATE EXTENSION "uuid-ossp";


-- drilldown rows per outage
create table outage_drilldown (
  id          uuid primary key default uuid_generate_v4(),
  site_id     text,
  site_name   text,
  state       text,
  lga         text,
  alarm_type  text,
  severity    text,
  ticket_ref  text,
  engineer    text,
  remarks     text,
  status     text,
  technology    text not null check (technology in ('2g','3g','4g','5g')),
  rca_l1        text,
  started_at    timestamptz not null default now(),
  resolved_at   timestamptz,
  region       text not null

);



-- Indexes
create index on outage_drilldown (region, technology);

create index on outage_drilldown (started_at desc);

-- RLS
alter table outage_drilldown enable row level security;


-- Allow authenticated reads (add write policies as needed)
-- create policy "auth read outages"     on site_outages     for select to authenticated using (true);
-- create policy "auth read drilldown"   on outage_drilldown for select to authenticated using (true);
-- create policy "auth read rna"         on rna_metrics      for select to authenticated using (true);