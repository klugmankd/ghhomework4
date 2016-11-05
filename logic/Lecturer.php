<?php

class Lecturer
{
    /**
     * @var string $name
     */
    private $name;

    /**
     * @var string $surname
     */
    private $surname;

    /**
     * @var int $department
     */
    private $department;
    
    /**
     * @var array $students
     */
    private $students;

    /**
     * @return string
     */
    public function getName()
    {
        return $this->name;
    }

    /**
     * @param string $name
     */
    public function setName($name)
    {
        $this->name = $name;
    }

    /**
     * @return string
     */
    public function getSurname()
    {
        return $this->surname;
    }

    /**
     * @param string $surname
     */
    public function setSurname($surname)
    {
        $this->surname = $surname;
    }

    /**
     * @return int
     */
    public function getDepartment()
    {
        return $this->department;
    }

    /**
     * @param int $department
     */
    public function setDepartment($department)
    {
        $this->department = $department;
    }

    /**
     * @return array
     */
    public function getStudents()
    {
        return $this->students;
    }

    /**
     * @param array $students
     */
    public function setStudents($students)
    {
        $this->students = $students;
    }
}