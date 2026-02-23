<?php
// Load libraries
require_once('config/config.php');

require_once('helpers/session_helper.php');

// Include Composer autoloader
require_once('libraries/vendor/autoload.php');

// Autoload php
spl_autoload_register(function ($nameClass) {

    $directories = [
        'Core/',
        'Controllers/',
        'Models/',
        'Libraries/'
    ];

    foreach ($directories as $directory) {
        $file = __DIR__ . '/' . $directory . $nameClass . '.php';

        if (file_exists($file)) {
            require_once $file;
            return;
        }
    }
});
