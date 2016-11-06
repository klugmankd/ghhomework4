<?php

class HomeworkActions implements RecordActionsInterface
{
    /**
     * @param Homework $homework
     */
    public function addRecord($homework)
    {
        $record = ORM::for_table('Homeworks')->create();
        $record->name = $homework->getName();
        $record->subject_id = $homework->getSubject();
        $record->lecturer_id = $homework->getLecturer();
        $record->mark = $homework->isMark();
        $record->save();
    }

    /**
     * @param $id
     * @return bool|ORM
     */
    public function getRecordById($id)
    {
        $record = ORM::for_table('Homeworks')->where("id_homework", $id)->find_one();
        return $record;
    }

    /**
     * @return array
     */
    public function getAllRecords()
    {
        $records = array();
        $record = ORM::for_table('Homeworks')->find_many();
        foreach ($record as $value) {
            $records[] = $value;
        }
        return $records;
    }
}