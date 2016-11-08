<?php

class LecturerActions implements RecordActionsInterface
{

    /**
     * @param Lecturer $lecturer
     */
    public function addRecord($lecturer)
    {
        $record = ORM::for_table('Lecturers')->create();
        $record->name = $lecturer->getName();
        $record->surname = $lecturer->getSurname();
        $record->department_id = $lecturer->getDepartment();
        $record->save();
    }

    /**
     * @param $id
     * @return bool|ORM
     */
    public function getRecordById($id)
    {
        $record = ORM::for_table('Lecturers')->where("id_lecturer", $id)->find_one();
        return $record;
    }

    /**
     * @return array
     */
    public function getAllRecords()
    {
        $records = array();
        $record = ORM::for_table('Lecturers')->find_many();
        foreach ($record as $value) {
            $records[] = $value;
        }
        return $records;
    }
}