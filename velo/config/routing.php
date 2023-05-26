<?php

namespace config;

use controllers\AdminController;

class Routing
{

    public function get()
    {


        if (isset($_GET["ctrl"])) {

            $url = htmlspecialchars($_GET["ctrl"]);
            $newUrl  = explode("/", $url);
            $controllerName = "controllers\\" . ucfirst($newUrl[0]) . "Controller";


            $controller = new $controllerName();

            if (isset($newUrl[1])) {

                $methodName = strtolower($newUrl[1]);
                $controller = new $controllerName();

                if (isset($newUrl[2])) {


                    $controller->$methodName($newUrl[2]);
                } else {
                    $controller->$methodName();
                }
            } else {

                $controller->index();
            }
        } else {

            $admin = new AdminController();
            $admin->index();
        }
    }
}
