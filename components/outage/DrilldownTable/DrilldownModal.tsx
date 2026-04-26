"use client"

import { AgGridReact } from 'ag-grid-react';
import { useEffect, useState } from "react";
import type { ColDef } from "ag-grid-community";
import { AllCommunityModule, ModuleRegistry } from "ag-grid-community";
import { OutageDrilldownRow } from "../../../types";

ModuleRegistry.registerModules([AllCommunityModule]);

  const colDefs: ColDef<OutageDrilldownRow>[] = [
    { field: 'site_id', headerName: 'Site ID', width: 110, pinned: 'left' },
    { field: 'site_name', headerName: 'Site Name', flex: 1, minWidth: 140 },
    {
      field: 'status',
      headerName: 'Status',
      width: 140,
    },
    {
      field: 'state',
      headerName: 'State',
      width: 170,
    },
    {
      field: 'lga',
      headerName: 'LGA',
      width: 170,
    },
    {
      field: 'alarm_type',
      headerName: 'Alarm Type',
      width: 140,

    },
    { field: 'ticket_ref', headerName: 'Ticket ID', flex: 1, minWidth: 160 },
  ]

export default function DrilldownModal({region, technology}: {region: string, technology: string}) {

  const [rowData, setRowData] = useState<any[]>([]);
  const [columnDefs, setColumnDefs] = useState<ColDef[]>(colDefs);

  useEffect(() => {
    fetch(`/api/drilldown?technology=${technology}&region=${region}`) // Fetch data from server
      .then((result) => result.json()) // Convert to JSON
      .then((rowData) => {
        setRowData(rowData);
        console.log('results', rowData);
      })
      .catch((error) => console.error('Fetch error:', error));
  }, [technology, region]);

  return (
    <div style={{ width: "100%", height: "50vh" }}>
      <AgGridReact rowData={rowData} columnDefs={columnDefs} />
    </div>
  );

}