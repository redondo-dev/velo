<?php

namespace controllers;


use models\RecetteModel;

class RecetteController
{
    public function recettePage()
    {

        if ($_SESSION['admin'] == 1) {


            $idpersonnel = $_SESSION["id"];
            $recette = new RecetteModel();
            $totalDay = $recette->findAllByDay();
            $totalMounth = $recette->findAllByMonth($idpersonnel);
            $totalYear = $recette->findAllByYEAR($idpersonnel);

            $totalbysalerDay = $recette->findAllByDayBySaler();
            $totalbysalerMounth = $recette->findAllByMonthBySaler();
            $totalbysalerYear = $recette->findAllByYearBySaler();
            $page = "views/recette.phtml";
            require_once "views/base.phtml";
        } else {
            echo "pas autorisé....erreur 401";
        }
    }
}
