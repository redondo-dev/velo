<?php

namespace models;


class AdminModel
{

    protected $bdd;
    public function __construct()
    {
        $this->bdd = new \pdo("mysql:host=localhost;dbname=velo", "root", "");
    }
    public function findAll()
    {
        $select = $this->bdd->prepare("SELECT * FROM produits");
        $select->execute();
        return $select->fetchAll();
    }


    public function getByUsername($pseudo)
    {

        $select = $this->bdd->prepare("SELECT * FROM personnel WHERE pseudo = ? ");
        $select->execute([$pseudo]);
        $result = $select->fetch();
        return $result;
    }
}
