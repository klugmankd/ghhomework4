<?php

class Department
{
    /**
     * @var string $name;
     */
    private $name;

    /**
     * @var int $yearOfFoundation
     */
    private $yearOfFoundation;

    /**
     * @var int $headOfDepartment
     */
    private $headOfDepartment;

    /**
     * @var string $address
     */
    private $address;

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
     * @return int
     */
    public function getYearOfFoundation()
    {
        return $this->yearOfFoundation;
    }

    /**
     * @param int $yearOfFoundation
     */
    public function setYearOfFoundation($yearOfFoundation)
    {
        $this->yearOfFoundation = $yearOfFoundation;
    }

    /**
     * @return int
     */
    public function getHeadOfDepartment()
    {
        return $this->headOfDepartment;
    }

    /**
     * @param int $headOfDepartment
     */
    public function setHeadOfDepartment($headOfDepartment)
    {
        $this->headOfDepartment = $headOfDepartment;
    }

    /**
     * @return string
     */
    public function getAddress()
    {
        return $this->address;
    }

    /**
     * @param string $address
     */
    public function setAddress($address)
    {
        $this->address = $address;
    }
}