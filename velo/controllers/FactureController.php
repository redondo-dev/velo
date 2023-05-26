<?php

namespace controllers;

use models\ProduitsModel;
use models\FactureModel;

class FactureController
{

    public function facture($id_client = "")
    {
        var_dump($id_client);

        if (isset($_SESSION['id'])) {

            $products = new ProduitsModel();
            $products->findAll();
            $stmt = $products->findAll();

            if (!isset($_SESSION['panier'])) {
                $_SESSION['panier'] = [];
            } else {
                if (isset($_POST['submit'])) {
                    $idproduit = $_POST['idproduit'];
                    $name = $_POST['name'];
                    $price = $_POST['price'];
                    $quantity = $_POST['nombre'];
                    $tva = $_POST['taux'];


                    $panier = [
                        "id" => $idproduit,
                        "nom" => $name,
                        "prix" => $price,
                        "quantite" => $quantity,
                        "taux" => $tva,
                    ];
                    $_SESSION['panier'][] = $panier;
                }
            }

            $page = "views/facture.phtml";
            require_once "views/base.phtml";
        } else {
            echo " error :page facture  not found";
        }
    }

    public function panierDestroy($id_client = "")
    {
        $_SESSION['panier'] = array();

        header("Location: /velo/facture/facture");
    }


    public function newfacture($id_client = "")
    {
        $price = $_POST['prix_ht'];
        $price_ttc = $_POST['prix_ttc'];
        $id_personel = $_SESSION['id'];

        $facture = new FactureModel();
        $facture->facturer($price, $price_ttc, $id_client, $id_personel);

        $newfacture = new FactureModel();
        foreach ($_SESSION['panier'] as $select) {
            $quantite = $select['quantite'];
            $product = $select['id'];
            $facture = 3;
            $newfacture->addProductToInvoice($quantite, $product, $facture);
        }
    }
}
