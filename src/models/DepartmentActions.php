<?php

class DepartmentActions implements RecordActionsInterface
{

    /**
     * @param Department $department
     */
    public function addRecord($department)
    {
        $record = ORM::for_table('Departments')->create();
        $record->name = $department->getName();
        $record->year_of_foundation = $department->getYearOfFoundation();
        $record->head_of_department = $department->getHeadOfDepartment();
        $record->address = $department->getAddress();
        $record->save();
    }

    /**
     * @param int $id
     * @return bool|ORM
     */
    public function getRecordById($id)
    {
        $record = ORM::for_table('Departments')->where("id_department", $id)->find_one();
        return $record;
    }

    /**
     * @return array
     */
    public function getAllRecords()
    {
        $records = array();
        $record = ORM::for_table('Departments')->find_many();
        foreach ($record as $value) {
            $records[] = $value;
        }
        return $records;
    }
}