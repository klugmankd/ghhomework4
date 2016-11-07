<?php
    require_once __DIR__ . '../vendor/autoload.php';

    include_once "../includes/connection.php";

    require "../logic/Department.php";
    require "../logic/University.php";
    require "../logic/Student.php";
    require "../logic/Lecturer.php";
    require "../logic/Homework.php";

    require "../src/RecordActionsInterface.php";

    require "../src/models/DepartmentActions.php";
    require "../src/models/UniversityActions.php";
    require "../src/models/StudentActions.php";
    require "../src/models/LecturerActions.php";
    require "../src/models/HomeworkActions.php";

    use logic\Student;
    use logic\Department;
    use logic\Lecturer;
    use logic\University;
    use logic\Homework;

    $faker = Faker\Factory::create();

    $university = new University();
    $department = new Department();
    $student = new Student();
    $lecturer = new Lecturer();
    $homework = new Homework();

    $da = new DepartmentActions();
    $una = new UniversityActions();
    $sta = new StudentActions();
    $la = new LecturerActions();
    $ha = new HomeworkActions();

// HOMEWORK
    $homework->setName($faker->word);
    $homework->setMark($faker->boolean);
    $homework->setLecturer($faker->numberBetween(1, 50));
    $homework->setSubject($faker->numberBetween(45, 66));

    $ha->addRecord($homework);
//    echo $homework->getName().": ".$homework->getSubject().", ".$homework->getLecturer().", ".$homework->isMark();

// LECTURER
    $lecturer->setName($faker->firstName);
    $lecturer->setSurname($faker->lastName);
    $lecturer->setDepartment($faker->numberBetween(16, 42));

    $la->addRecord($lecturer);
    echo $lecturer->getName()." ".$lecturer->getSurname();

// DEPARTMENT
    $department->setName($faker->jobTitle);
    $department->setHeadOfDepartment($faker->name);
    $department->setYearOfFoundation($faker->year);
    $department->setAddress($faker->address);

    $da->addRecord($department);

// UNIVERSITY
    $university->setName($faker->company);
    $university->setYearOfFoundation($faker->year);
    $university->setCity($faker->city);
    $university->setHeadOfUniversity($faker->name);
    $university->setSite($faker->domainName);

    $una->addRecord($university);

// STUDENT
    $student->setName($faker->firstName);
    $student->setSurname($faker->lastName);
    $student->setEmail($faker->email);
    $student->setPhoneNumber($faker->phoneNumber);

    $sta->addRecord($student);
//    echo $student->getName()." ".$student->getSurname()."<br>";


//    $record = $da->getRecordById(1);
//    echo $record->name . " - " . $record->year_of_foundation;

//    $records = $da->getAllRecords();
//    foreach ($records as $record) {
//        echo $record->name." - ".$record->year_of_foundation."<br>";
//    }