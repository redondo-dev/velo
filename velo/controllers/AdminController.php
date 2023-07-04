<?php


namespace controllers;

use models\AdminModel;


class AdminController
{
    public function index()
    {

        $page = "views/AdminUsers.phtml";
        require_once "views/base.phtml";
    }

    public function users()
    {
        $data = new AdminModel();
        $result = $data;
        require_once "views/AdminUsers.phtml";
    }

    public function login()
    {
        if (isset($_POST['submit'])) {
            $pseudo = $_POST['pseudo'];
            $password = $_POST['password'];
            $error = "";



            $user = new AdminModel();
            $result = $user->getByUsername($pseudo);

            if ($result) {
                if ($result['password'] == $password) {
                    $_SESSION['pseudo'] = $result['pseudo'];
                    $_SESSION['id'] = $result['id'];
                    $_SESSION['admin'] = $result['admin'];
                    header("Location:/velo/produits/ajoutProduits");
                } else {

                    $error = "mauvais mot de pass";
                }
            } else {
                $error = "mauvais pseudo";
            }
        }

        $page = "views/AdminUsers.phtml";
        require_once "views/base.phtml";
    }
}
