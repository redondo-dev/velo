<?php

namespace models;

class VendeurModel
{

    private $bdd;
    public function __construct()
    {
        $this->bdd = new \pdo("mysql:host=localhost;dbname=velo", "root", "");
    }



    public function findAllByDayBySaler($idpersonnel)
    {
        $find = $this->bdd->prepare('SELECT COUNT(id) as "nombre", SUM(prix_ttc) as "prix_ttc", id_personnel FROM facture  WHERE DAY(date) = DAY(NOW()) AND id_personnel=? ');
        $find->execute([$idpersonnel]);
        return $find->fetchAll();
    }

    public function findAllByMonthBySaler($idpersonnel)
    {
        $find = $this->bdd->prepare('SELECT COUNT(id) as "nombre", SUM(prix_ttc) as "prix_ttc" ,id_personnel FROM facture WHERE MONTH(date) = MONTH(NOW()) AND YEAR(date) = YEAR(NOW())AND id_personnel=? ');
        $find->execute([$idpersonnel]);
        return $find->fetchAll();
    }

    public function findAllByYearBySaler($idpersonnel)
    {
        $find = $this->bdd->prepare('SELECT COUNT(id) as "nombre", SUM(prix_ttc) as "prix_ttc", id_personnel FROM facture WHERE  YEAR(date) = YEAR(NOW()) AND id_personnel=?');
        $find->execute([$idpersonnel]);
        return $find->fetchAll();
    }
}
