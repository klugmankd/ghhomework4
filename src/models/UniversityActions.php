<?php

class UniversityActions implements RecordActionsInterface
{

    /**
     * @param University $university
     */
    public function addRecord($university)
    {
        $record = ORM::for_table('Universities')->create();
        $record->name = $university->getName();
        $record->city = $university->getCity();
        $record->site = $university->getSite();
        $record->year_of_foundation = $university->getYearOfFoundation();
        $record->head_of_university = $university->getHeadOfUniversity();
        $record->save();
    }

    public function getRecordById($id)
    {
        $record = ORM::for_table('Universities')->where("id_university", $id)->find_one();
        return $record;
    }

    public function getAllRecords()
    {
        $records = array();
        $record = ORM::for_table('Universities')->find_many();
        foreach ($record as $value) {
            $records[] = $value;
        }
        return $records;
    }
}