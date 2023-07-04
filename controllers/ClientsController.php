<?php

namespace controllers;

use models\ClientsModel;

class ClientsController
{

    public function clients()
    {
        $data = new ClientsModel();
        $result = $data;

        $page = "views/liste_clients.phtml";
        require_once "views/base.phtml";
    }

    public function afficherClient()
    {
        if (isset($_SESSION['id'])) {
            $clients = new ClientsModel();
            $clients->findAll();
            $st = $clients->findAll();

            $page = "views/liste_clients.phtml";
            require_once "views/base.phtml";
        } else {
            echo " error :page clients not found";
        }
    }
}
