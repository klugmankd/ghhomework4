<?php

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
}