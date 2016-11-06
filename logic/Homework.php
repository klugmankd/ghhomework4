<?php

class Homework
{
    /**
     * @var string $name
     */
    private $name;

    /**
     * @var int $subject
     */
    private $subject;

    /**
     * @var int $lecturer
     */
    private $lecturer;
    /**
     * @var bool $mark
     */
    private $mark;

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
    public function getSubject()
    {
        return $this->subject;
    }

    /**
     * @param int $subject
     */
    public function setSubject($subject)
    {
        $this->subject = $subject;
    }

    /**
     * @return boolean
     */
    public function isMark()
    {
        return $this->mark;
    }

    /**
     * @param boolean $mark
     */
    public function setMark($mark)
    {
        $this->mark = $mark;
    }

    /**
     * @return int
     */
    public function getLecturer()
    {
        return $this->lecturer;
    }

    /**
     * @param int $lecturer
     */
    public function setLecturer($lecturer)
    {
        $this->lecturer = $lecturer;
    }
}