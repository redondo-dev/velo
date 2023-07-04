<?php

namespace models;

class RecetteModel
{

    private $bdd;
    public function __construct()
    {
        $this->bdd = new \pdo("mysql:host=localhost;dbname=velo", "root", "");
    }



    public function findAllByDay()
    {
        $find = $this->bdd->prepare('SELECT COUNT(id) as "nombre", SUM(prix_ttc) as "prix_ttc" FROM facture WHERE DAY(date) = DAY(NOW()) ');
        $find->execute([]);
        return $find->fetch();
    }

    public function findAllByMonth($idpersonel)
    {
        $find = $this->bdd->prepare('SELECT COUNT(id) as "nombre", SUM(prix_ttc) as "prix_ttc" FROM facture WHERE MONTH(date) = MONTH(NOW()) AND YEAR(date) = YEAR(NOW()) AND id_personnel = ?');
        $find->execute([$idpersonel]);
        return $find->fetch();
    }



    public function findAllByYear($idpersonel)
    {
        $find = $this->bdd->prepare('SELECT COUNT(id) as "nombre", SUM(prix_ttc) as "prix_ttc" FROM facture WHERE  YEAR(date) = YEAR(NOW()) AND id_personnel = ?');
        $find->execute([$idpersonel]);
        return $find->fetch();
    }

    public function findAllByDayBySaler()
    {
        $find = $this->bdd->prepare('SELECT COUNT(id) as "nombre", SUM(prix_ttc) as "prix_ttc", id_personnel FROM facture WHERE DAY(date) = DAY(NOW()) ');
        $find->execute([]);
        return $find->fetchAll();
    }

    public function findAllByMonthBySaler()
    {
        $find = $this->bdd->prepare('SELECT COUNT(id) as "nombre", SUM(prix_ttc) as "prix_ttc" ,id_personnel FROM facture WHERE MONTH(date) = MONTH(NOW()) AND YEAR(date) = YEAR(NOW())  GROUP BY id_personnel ');
        $find->execute([]);
        return $find->fetchAll();
    }

    public function findAllByYearBySaler()
    {
        $find = $this->bdd->prepare('SELECT COUNT(id) as "nombre", SUM(prix_ttc) as "prix_ttc", id_personnel FROM facture WHERE  YEAR(date) = YEAR(NOW()) GROUP BY id_personnel ');
        $find->execute([]);
        return $find->fetchAll();
    }
}
