<?php
    require_once __DIR__ . '/vendor/autoload.php';

    include_once "includes/connection.php";
    include_once "includes/header.php";

    require "src/RecordActionsInterface.php";

    require "src/models/DepartmentActions.php";
    require "src/models/UniversityActions.php";
    require "src/models/StudentActions.php";
    require "src/models/HomeworkActions.php";

    if (isset($_GET['university']) && $_GET['university'] == "Universities") {
        $universityAction = new UniversityActions();
        $records = $universityAction->getAllRecords();
        include_once "views/universities.php";
    } else
    if (isset($_GET['department']) && $_GET['department'] == "Departments") {
        $departmentAction = new DepartmentActions();
        $records = $departmentAction->getAllRecords();
        include_once "views/departments.php";
    } else
    if (isset($_GET['student']) && $_GET['student'] == "Students") {
        $studentAction = new StudentActions();
        $records = $studentAction->getAllRecords();
        include_once "views/students.php";
    } else
    if (isset($_GET['homework']) && $_GET['homework'] == "Homeworks") {
        $homeworkAction = new HomeworkActions();
        $records = $homeworkAction->getAllRecords();
        include_once "views/homeworks.php";
    }

    include_once "includes/footer.php";

