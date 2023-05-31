<?php

namespace models;

class ClientsModel
{

    private $bdd;
    public function __construct()
    {
        $this->bdd = new \pdo("mysql:host=localhost;dbname=velo", "root", "");
    }
    public function findAll()
    {
        $select = $this->bdd->prepare("SELECT * FROM clients");
        $select->execute();
        return $select->fetchAll();
    }


    public function Create()
    {
    }
    public function Delete()
    {
    }
    public function Update()
    {
    }
}
