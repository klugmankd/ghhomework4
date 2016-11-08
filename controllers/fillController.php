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

    use \logic\Student;
    use \logic\Department;
    use \logic\Lecturer;
    use \logic\University;
    use \logic\Homework;

    $faker = Faker\Factory::create();

    if (isset($_POST['universities']) && !empty($_POST['universities'])) {
        $count = $_POST['universities'];
        for ($i = 1; $i <= $count; $i++) {
            $university = new University();
            $una = new UniversityActions();

            $university->setName($faker->company);
            $university->setYearOfFoundation($faker->year);
            $university->setCity($faker->city);
            $university->setHeadOfUniversity($faker->name);
            $university->setSite($faker->domainName);

            $una->addRecord($university);
        }
    } else
    if (isset($_POST['departments']) && !empty($_POST['departments'])) {
        $count = $_POST['departments'];
        for ($i = 1; $i <= $count; $i++) {
            $department = new Department();
            $da = new DepartmentActions();

            $department->setName($faker->jobTitle);
            $department->setHeadOfDepartment($faker->name);
            $department->setYearOfFoundation($faker->year);
            $department->setAddress($faker->address);

            $da->addRecord($department);
        }
    } else
    if (isset($_POST['students']) && !empty($_POST['students'])) {
        $count = $_POST['students'];
        for ($i = 1; $i <= $count; $i++) {
            $student = new Student();
            $sta = new StudentActions();

            $student->setName($faker->firstName);
            $student->setSurname($faker->lastName);
            $student->setEmail($faker->email);
            $student->setPhoneNumber($faker->phoneNumber);

            $sta->addRecord($student);
        }
    } else
    if (isset($_POST['lecturers']) && !empty($_POST['lecturers'])) {
        $count = $_POST['lecturers'];
        for ($i = 1; $i <= $count; $i++) {
            $lecturer = new Lecturer();
            $la = new LecturerActions();

            $lecturer->setName($faker->firstName);
            $lecturer->setSurname($faker->lastName);
            $lecturer->setDepartment($faker->numberBetween(16, 42));

            $la->addRecord($lecturer);
        }
    } else
    if (isset($_POST['homeworks']) && !empty($_POST['homeworks'])) {
        $count = $_POST['homeworks'];
        for ($i = 1; $i <= $count; $i++) {
            $homework = new Homework();
            $ha = new HomeworkActions();

            $homework->setName($faker->word);
            $homework->setMark($faker->boolean);
            $homework->setLecturer($faker->numberBetween(1, 50));
            $homework->setSubject($faker->numberBetween(45, 66));

            $ha->addRecord($homework);
        }
    }

    header("Location: index.php");