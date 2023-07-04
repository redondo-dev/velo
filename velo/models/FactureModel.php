<?php

namespace models;

class FactureModel
{

    private $bdd;
    public function __construct()
    {
        $this->bdd = new \pdo("mysql:host=localhost;dbname=velo", "root", "");
    }


    public function facturer($price, $price_ttc, $id_clients, $id_personel)
    {
        $select = $this->bdd->prepare("INSERT INTO facture(date,prix_ht, prix_ttc,id_clients,id_personnel) VALUES (NOW(),?, ?, ?, ? )");
        $select->execute([$price, $price_ttc, $id_clients, $id_personel]);
        $last = $this->bdd->lastInsertId();
        return $last;
    }

    public function addProductToInvoice($quantite, $product, $facture)
    {
        $select = $this->bdd->prepare("INSERT INTO ligne_facture (quantite,id_produits,id_facture) VALUES (?, ?, ? )");

        $select->execute([$quantite, $product, $facture]);
    }

    public function getFacture($factureId)
    {

        $select = $this->bdd->prepare("SELECT * FROM facture JOIN clients ON clients.id=facture.id_clients WHERE facture.id=?");
        $select->execute([$factureId]);
        $facture = $select->fetch();
        return $facture;
    }
}
