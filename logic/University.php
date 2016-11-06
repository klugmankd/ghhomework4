<?php

namespace logic;

class University
{
    /**
     * @var string $name
     */
    private $name;

    /**
     * @var string $city
     */
    private $city;

    /**
     * @var string $site
     */
    private $site;

    /**
     * @var int $yearOfFoundation
     */
    private $yearOfFoundation;

    /**
     * @var int $headOfUniversity
     */
    private $headOfUniversity;
    
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
    public function getCity()
    {
        return $this->city;
    }

    /**
     * @param string $city
     */
    public function setCity($city)
    {
        $this->city = $city;
    }

    /**
     * @return string
     */
    public function getSite()
    {
        return $this->site;
    }

    /**
     * @param string $site
     */
    public function setSite($site)
    {
        $this->site = $site;
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
    public function getHeadOfUniversity()
    {
        return $this->headOfUniversity;
    }

    /**
     * @param int $headOfUniversity
     */
    public function setHeadOfUniversity($headOfUniversity)
    {
        $this->headOfUniversity = $headOfUniversity;
    }
}