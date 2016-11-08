<?php

class StudentActions implements RecordActionsInterface
{
    
    /**
     * @param Student $student
     */
    public function addRecord($student)
    {
        $record = ORM::for_table('Students')->create();
        $record->name = $student->getName();
        $record->surname = $student->getSurname();
        $record->email = $student->getEmail();
        $record->phone_number = $student->getPhoneNumber();
        $record->save();
    }

    /**
     * @param $id
     * @return bool|ORM
     */
    public function getRecordById($id)
    {
        $record = ORM::for_table('Students')->where("id_student", $id)->find_one();
        return $record;
    }

    /**
     * @return array
     */
    public function getAllRecords()
    {
        $records = array();
        $record = ORM::for_table('Students')->find_many();
        foreach ($record as $value) {
            $records[] = $value;
        }
        return $records;
    }
}