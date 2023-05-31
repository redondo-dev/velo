<?php

namespace controllers;


use models\ProduitsModel;
use models\FactureModel;

class ProduitsController
{

    public function ajoutProduits()
    {

        $produitModel = new ProduitsModel();
        $produitModel->findAll();

        if (isset($_POST['submit'])) {
            $name = $_POST['nom'];
            $reference = $_POST['reference'];
            $price = $_POST['price_ht'];
            $stock = $_POST['stock'];
            $alerte = $_POST['alerte'];

            $data2 = new ProduitsModel();
            $data2->ajoutProduits($name, $reference, $price, $stock, $alerte);
        }

        $page = "views/formulaireProduits.phtml";
        require_once "views/base.phtml";
    }

    public function afficher()
    {
        if (isset($_SESSION['id'])) {
            $products = new ProduitsModel();
            $products->findAll();
            $stmt = $products->findAll();

            $page = "views/liste_produits.phtml";
            require_once "views/base.phtml";
        } else {
            echo " error :page produits not found";
        }
    }

}
