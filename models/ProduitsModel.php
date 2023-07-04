<?php

namespace models;

class ProduitsModel
{

    private $bdd;
    public function __construct()
    {
        $this->bdd = new \pdo("mysql:host=localhost;dbname=velo", "root", "");
    }


    public function ajoutProduits($name, $reference, $price, $stock, $alerte)
    {
        $select = $this->bdd->prepare("INSERT INTO produits( name,reference, price_ht, stock, alerte) VALUES (?, ?, ?, ?,? )");
        $select->execute([$name, $reference, $price, $stock, $alerte]);
    }

    public function findAll()
    {
        $select = $this->bdd->prepare("SELECT * FROM produits p join tva t on p.id_tva = t.id");
        $select->execute();
        return  $select->fetchAll();
    }



    public function Delete()
    {
        $select = $this->bdd->prepare("DELETE FROM produits WHERE id=?");
        $select->execute();
    }
    //     public function Update()
    //     {
    //         $select = $this->bdd->prepare("UPDATE produits SET name=?,reference=?,price_ht=?,stock=?,alerte=?,id_tva=? WHERE id=?");
    //         $select->execute();
    //         return $select->fetchAll();
    //     }
    // }
}
