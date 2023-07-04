<?php

namespace controllers;


use models\VendeurModel;

class VendeurController
{
    public function vendeur()
    {

        $idpersonnel = $_SESSION["id"];
        $recette = new VendeurModel();


        $totalbysalerDay = $recette->findAllByDayBySaler($idpersonnel);
        $totalbysalerMounth = $recette->findAllByMonthBySaler($idpersonnel);
        $totalbysalerYear = $recette->findAllByYearBySaler($idpersonnel);
        $page = "views/vendeur.phtml";
        require_once "views/base.phtml";
    }
}
