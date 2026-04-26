-- ─────────────────────────────────────────────
-- outage_drilldown seed
-- All summary views derive from these rows.
-- ─────────────────────────────────────────────

insert into outage_drilldown (
  site_id, site_name, region, state, lga,
  technology, alarm_type, severity, status,
  rca_l1, ticket_ref, engineer,
  started_at, resolved_at
) values

-- ── NORTH ────────────────────────────────────
('NG-KN-001', 'Kano Central',        'North', 'Kano',    'Kano Municipal', '3g',  'No Power',        'high',     'active',       'Power',        'TKT-1001', 'Auwal Musa',     now()-interval'2h',   null),
('NG-KN-002', 'Kano North',          'North', 'Kano',    'Fagge',          '3g',  'Low Battery',     'medium',   'active',       'Power',        'TKT-1002', 'Auwal Musa',     now()-interval'3h',   null),
('NG-KN-003', 'Kano South',          'North', 'Kano',    'Nasarawa',       '3g',  'Rectifier Fault', 'medium',   'investigating', 'Power',        'TKT-1003', 'Auwal Musa',     now()-interval'5h',   null),
('NG-KN-004', 'Kano East',           'North', 'Kano',    'Tarauni',        '4g',  'Link Down',       'critical', 'resolved',     'Transmission', 'TKT-1004', 'Bello Kabir',    now()-interval'6h',   now()-interval'4h'),
('NG-KN-005', 'Kano West',           'North', 'Kano',    'Dala',           '4g',  'MW Fade',         'high',     'resolved',     'Transmission', 'TKT-1005', 'Bello Kabir',    now()-interval'10h',  now()-interval'7h'),
('NG-KD-001', 'Kaduna North',         'North', 'Kaduna',  'Kaduna North',   '3g',  'Shelter Damage',  'low',      'resolved',     'Civil',        'TKT-1006', 'Suleiman Danjuma',now()-interval'8h',   now()-interval'2h'),
('NG-KD-002', 'Kaduna South',         'North', 'Kaduna',  'Chikun',         '5g',  'No Power',        'high',     'active',       'Power',        'TKT-1007', 'Suleiman Danjuma',now()-interval'1h',   null),
('NG-SO-001', 'Sokoto Central',       'North', 'Sokoto',  'Sokoto North',   '2g',  'No Power',        'medium',   'active',       'Power',        'TKT-1008', 'Ibrahim Waziri', now()-interval'4h',   null),
('NG-ZM-001', 'Zamfara Central',      'North', 'Zamfara', 'Gusau',          '2g',  'Antenna Misalign','low',      'investigating', 'Civil',        'TKT-1009', 'Ibrahim Waziri', now()-interval'12h',  null),
('NG-KT-001', 'Katsina Central',      'North', 'Katsina', 'Katsina',        'vip', 'Tx Fault',        'critical', 'active',       'Transmission', 'TKT-1010', 'Nuhu Garba',     now()-interval'30m',  null),
('NG-BN2-001','Bauchi Central',       'North', 'Bauchi',  'Bauchi',         '4g',  'Link Down',       'high',     'active',       'Transmission', 'TKT-1011', 'Nuhu Garba',     now()-interval'2h',   null),
('NG-JG-001', 'Jos North',            'North', 'Plateau', 'Jos North',      '4g',  'MW Fade',         'medium',   'resolved',     'Transmission', 'TKT-1012', 'Yakubu Pam',     now()-interval'9h',   now()-interval'6h'),

-- ── SOUTH ────────────────────────────────────
('NG-LG-001', 'Lagos Island',         'South', 'Lagos',   'Lagos Island',   '2g',  'No Power',        'high',     'active',       'Power',        'TKT-2001', 'Tunde Adeyemi',  now()-interval'1h',   null),
('NG-LG-002', 'Lagos Mainland',       'South', 'Lagos',   'Surulere',       '2g',  'No Power',        'medium',   'active',       'Power',        'TKT-2002', 'Tunde Adeyemi',  now()-interval'90m',  null),
('NG-LG-003', 'Victoria Island',      'South', 'Lagos',   'Eti-Osa',        '5g',  'Fibre Cut',       'critical', 'resolved',     'Civil',        'TKT-2003', 'Emeka Okonkwo', now()-interval'12h',  now()-interval'10h'),
('NG-LG-004', 'Ikeja',                'South', 'Lagos',   'Ikeja',          '4g',  'No Power',        'high',     'active',       'Power',        'TKT-2004', 'Emeka Okonkwo', now()-interval'2h',   null),
('NG-LG-005', 'Lekki Phase 1',        'South', 'Lagos',   'Eti-Osa',        '5g',  'Tx Fault',        'critical', 'active',       'Transmission', 'TKT-2005', 'Femi Ojo',      now()-interval'45m',  null),
('NG-LG-006', 'Badagry',              'South', 'Lagos',   'Badagry',        '3g',  'Antenna Misalign','low',      'resolved',     'Civil',        'TKT-2006', 'Femi Ojo',      now()-interval'24h',  now()-interval'20h'),
('NG-PH-001', 'Port Harcourt Main',   'South', 'Rivers',  'Obio-Akpor',     '4g',  'No Power',        'high',     'active',       'Power',        'TKT-2007', 'Chidi Nwosu',   now()-interval'4h',   null),
('NG-PH-002', 'Port Harcourt GRA',    'South', 'Rivers',  'Port Harcourt',  'vip', 'Low Battery',     'high',     'investigating', 'Power',        'TKT-2008', 'Chidi Nwosu',   now()-interval'2h',   null),
('NG-BN-001', 'Benin City Central',   'South', 'Edo',     'Oredo',          '4g',  'Link Down',       'medium',   'investigating', 'Transmission', 'TKT-2009', 'Victor Osagie', now()-interval'1h',   null),
('NG-BN-002', 'Benin City North',     'South', 'Edo',     'Egor',           '3g',  'MW Fade',         'medium',   'resolved',     'Transmission', 'TKT-2010', 'Victor Osagie', now()-interval'14h',  now()-interval'11h'),
('NG-WR-001', 'Warri Central',        'South', 'Delta',   'Warri',          '2g',  'No Power',        'high',     'active',       'Power',        'TKT-2011', 'Ovie Efe',      now()-interval'3h',   null),
('NG-AS-001', 'Asaba Central',        'South', 'Delta',   'Oshimili South', '4g',  'Fibre Cut',       'critical', 'active',       'Civil',        'TKT-2012', 'Ovie Efe',      now()-interval'1h',   null),

-- ── EAST ─────────────────────────────────────
('NG-EN-001', 'Enugu Central',        'East',  'Enugu',   'Enugu East',     '4g',  'No Power',        'high',     'active',       'Power',        'TKT-3001', 'Ngozi Chukwu',  now()-interval'5h',   null),
('NG-EN-002', 'Enugu North',          'East',  'Enugu',   'Igbo-Eze North', '3g',  'Rectifier Fault', 'medium',   'resolved',     'Power',        'TKT-3002', 'Ngozi Chukwu',  now()-interval'18h',  now()-interval'14h'),
('NG-AB-002', 'Abakaliki Central',    'East',  'Ebonyi',  'Abakaliki',      '2g',  'No Power',        'medium',   'active',       'Power',        'TKT-3003', 'Chisom Eze',    now()-interval'6h',   null),
('NG-OW-001', 'Owerri Central',       'East',  'Imo',     'Owerri',         '4g',  'Link Down',       'critical', 'active',       'Transmission', 'TKT-3004', 'Ifeanyi Mbah',  now()-interval'2h',   null),
('NG-OW-002', 'Owerri North',         'East',  'Imo',     'Owerri North',   '5g',  'MW Fade',         'high',     'investigating', 'Transmission', 'TKT-3005', 'Ifeanyi Mbah',  now()-interval'3h',   null),
('NG-CB-001', 'Calabar Central',      'East',  'C/River', 'Calabar South',  '3g',  'No Power',        'high',     'active',       'Power',        'TKT-3006', 'Bassey Edet',   now()-interval'7h',   null),
('NG-CB-002', 'Calabar North',        'East',  'C/River', 'Calabar North',  'vip', 'Fibre Cut',       'critical', 'resolved',     'Civil',        'TKT-3007', 'Bassey Edet',   now()-interval'20h',  now()-interval'16h'),
('NG-UM-001', 'Umuahia Central',      'East',  'Abia',    'Umuahia North',  '2g',  'Shelter Damage',  'low',      'resolved',     'Civil',        'TKT-3008', 'Chukwuma Orji', now()-interval'30h',  now()-interval'26h'),

-- ── WEST ─────────────────────────────────────
('NG-IB-001', 'Ibadan North',         'West',  'Oyo',     'Ibadan North',   'vip', 'Tx Fault',        'critical', 'active',       'Transmission', 'TKT-4001', 'Rasheed Fatai', now()-interval'2h',   null),
('NG-IB-002', 'Ibadan South',         'West',  'Oyo',     'Ibadan South',   '4g',  'No Power',        'high',     'active',       'Power',        'TKT-4002', 'Rasheed Fatai', now()-interval'3h',   null),
('NG-IB-003', 'Ibadan Central',       'West',  'Oyo',     'Ibadan North East','3g', 'MW Fade',         'medium',   'resolved',     'Transmission', 'TKT-4003', 'Kunle Adisa',   now()-interval'16h',  now()-interval'12h'),
('NG-AK-001', 'Akure Central',        'West',  'Ondo',    'Akure South',    '4g',  'No Power',        'high',     'active',       'Power',        'TKT-4004', 'Dele Adesanya', now()-interval'4h',   null),
('NG-IL-001', 'Ilorin Central',       'West',  'Kwara',   'Ilorin West',    '3g',  'No Power',        'medium',   'active',       'Power',        'TKT-4005', 'Abdulrahman O.',now()-interval'5h',   null),
('NG-IL-002', 'Ilorin East',          'West',  'Kwara',   'Ilorin East',    '5g',  'Link Down',       'critical', 'resolved',     'Transmission', 'TKT-4006', 'Abdulrahman O.',now()-interval'22h',  now()-interval'18h'),
('NG-OS-001', 'Osogbo Central',       'West',  'Osun',    'Olorunda',       '2g',  'Antenna Misalign','low',      'resolved',     'Civil',        'TKT-4007', 'Yinka Bamidele',now()-interval'48h',  now()-interval'44h'),
('NG-AE-001', 'Ado Ekiti Central',    'West',  'Ekiti',   'Ado Ekiti',      '4g',  'Rectifier Fault', 'medium',   'investigating', 'Power',        'TKT-4008', 'Yinka Bamidele',now()-interval'6h',   null),

-- ── CENTRAL ──────────────────────────────────
('NG-AB-001', 'Abuja Central',        'Central','FCT',    'AMAC',            'vip', 'Tx Fault',        'critical', 'active',       'Transmission', 'TKT-5001', 'Hassan Idris',  now()-interval'3h',   null),
('NG-AB-003', 'Abuja Wuse',           'Central','FCT',    'AMAC',            'vip', 'No Power',        'high',     'active',       'Power',        'TKT-5002', 'Hassan Idris',  now()-interval'1h',   null),
('NG-AB-004', 'Abuja Garki',          'Central','FCT',    'AMAC',            '4g',  'Link Down',       'high',     'resolved',     'Transmission', 'TKT-5003', 'Musa Tanko',    now()-interval'8h',   now()-interval'5h'),
('NG-AB-005', 'Abuja Maitama',        'Central','FCT',    'AMAC',            '5g',  'MW Fade',         'medium',   'resolved',     'Transmission', 'TKT-5004', 'Musa Tanko',    now()-interval'11h',  now()-interval'8h'),
('NG-LK-001', 'Lokoja Central',       'Central','Kogi',   'Lokoja',         '3g',  'No Power',        'high',     'active',       'Power',        'TKT-5005', 'Abubakar Sani', now()-interval'4h',   null),
('NG-MN-001', 'Minna Central',        'Central','Niger',  'Chanchaga',      '2g',  'Shelter Damage',  'low',      'resolved',     'Civil',        'TKT-5006', 'Abubakar Sani', now()-interval'36h',  now()-interval'32h'),
('NG-MK-001', 'Makurdi Central',      'Central','Benue',  'Makurdi',        '4g',  'No Power',        'medium',   'active',       'Power',        'TKT-5007', 'Tersoo Agber',  now()-interval'6h',   null),
('NG-LF-001', 'Lafia Central',        'Central','Nasarawa','Lafia',          '3g',  'Fibre Cut',       'critical', 'resolved',     'Civil',        'TKT-5008', 'Tersoo Agber',  now()-interval'28h',  now()-interval'24h');

-- -- ─────────────────────────────────────────────
-- -- RNA metrics  (unchanged from previous seed)
-- -- ─────────────────────────────────────────────
-- insert into rna_metrics (recorded_at, granularity, technology, rna_value, threshold)
-- select
--   now() - (n || ' days')::interval,
--   'daily', tech,
--   round((random() * 20 + 75)::numeric, 2), 90.00
-- from generate_series(0,13) n,
--      unnest(ARRAY['2g','3g','4g','5g','vip']) tech;

-- insert into rna_metrics (recorded_at, granularity, technology, rna_value, threshold)
-- select
--   date_trunc('day', now()) + (h || ' hours')::interval,
--   'hourly', tech,
--   round((random() * 15 + 78)::numeric, 2), 90.00
-- from generate_series(0,23) h,
--      unnest(ARRAY['2g','3g','4g','5g']) tech;