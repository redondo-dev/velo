<?php

namespace models;

class FormulaireModel
{

    private $bdd;
    public function __construct()
    {
        $this->bdd = new \pdo("mysql:host=localhost;dbname=velo", "root", "");
    }


    public function ajout($name, $prenom, $email, $telephone, $adresse1, $adresse2, $code_postal)
    {
        $select = $this->bdd->prepare("INSERT INTO clients( nom, prenom, email, telephone,adresse1,adresse2,code_postal) VALUES (?, ?, ?, ?, ?, ?  ,?)");
        $select->execute([$name, $prenom, $email, $telephone, $adresse1, $adresse2, $code_postal]);
    }
}
