<?php

class Autoloader
{
    public static function Autoload()
    {
        spl_autoload_register(function ($className) {



            str_replace("\\", "/", $className);

            if (file_exists($className . ".php")) {
                require $className . ".php";
            } else {
                echo 'erreur 404';
                exit();
            }
        });
    }
}
