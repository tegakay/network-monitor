"use client"

import {
  Table,
  TableBody,
  TableCaption,
  TableCell,
  TableHead,
  TableHeader,
  TableRow,
} from "@/components/ui/table"

import { TableProps, TableColumn } from "@/types"
import { useState } from "react";
import Modal from "../DrilldownTable/Modal"
import DrilldownModal from "../DrilldownTable/DrilldownModal";



export function DynamicTable<T>({ data, columns }: TableProps<T>) {
  let rowKey: string | undefined = 'region'
  const [isModalOpen, setIsModalOpen] = useState(false);
  const [modalData, setModalData] = useState<{region: string, technology: string} | null>(null)
  const getClickedRow = (row: any, col: any) => {
    console.log("Clicked row:", row, col);
    setIsModalOpen(true)
    setModalData({region: row, technology: col})
  }
  if(!data || !columns) {
    return <div>An Error Occured</div>
  }
  return (
    <>
      <div className="w-full rounded-md">
        <Table>
          <TableHeader>
            <TableRow>
              {columns.map((col) => (
                <TableHead key={col.key as string}>
                  {col.label}
                </TableHead>
              ))}
            </TableRow>
          </TableHeader>

          <TableBody>
            {data.map((row) => (
              <TableRow key={row.region}>
                {columns.map((col) => (
                  <TableCell key={col.key as string} onClick={() => getClickedRow(row.region, col.label)} className="cursor-pointer bg-transparent hover:bg-gray-300">
                    {col.render
                      ? col.render(row as T)
                      : (row as any)[col.key]}
                  </TableCell>
                ))}
              </TableRow>
            ))}
          </TableBody>
        </Table>
      </div>

      {/* for the modal */}
      <Modal isOpen={isModalOpen} onClose={() => setIsModalOpen(false)}>
        <DrilldownModal region={modalData?.region || ''} technology={modalData?.technology || ''} />
      </Modal>

    </>
  );
}