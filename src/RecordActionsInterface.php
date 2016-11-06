<?php

interface RecordActionsInterface
{
    public function addRecord($parameter);
    public function getRecordById($id);
    public function getAllRecords();
}