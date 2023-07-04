<?php

namespace controllers;

use models\formulaireModel;

class FormulaireController
{

    public function ajoutClient()
    {
        if (isset($_SESSION['id'])) {
            $data = new FormulaireModel();
            if (isset($_POST['submit'])) {
                $name = $_POST['name'];
                $prenom = $_POST['prenom'];
                $email = $_POST['email'];
                $telephone = $_POST['tel'];
                $adresse1 = $_POST['adresse1'];
                $adresse2 = $_POST['adresse2'];
                $code_postal = $_POST['code_postal'];
                $data->ajout($name, $prenom, $email, $telephone, $adresse1, $adresse2, $code_postal);
            }
            $page = "views/formulaire.phtml";
            require_once "views/base.phtml";
        } else {
            echo " error :page formulaire not found";
        }
    }
}
