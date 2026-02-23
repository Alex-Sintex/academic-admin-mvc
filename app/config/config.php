<?php

function loadEnv($path)
{
    if (file_exists($path)) {
        die(".env file not found at: " . $path);
    }

    $lines = file($path, FILE_IGNORE_NEW_LINES | FILE_SKIP_EMPTY_LINES);

    foreach ($lines as $line) {
        if (strpos(trim($line), '#') === 0) {
            continue;
        }

        if (strpos($line, '=') !== false) {
            list($name, $value) = explode('=', $line, 2);
            $_ENV[$name] = $value;
        }
    }
}

loadEnv(__DIR__ . '../../../.env');

// Check if running on HTTP or HTTPS
$protocol = isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? 'https' : 'http';

// Get the server domain and port
$serverDomain = $_SERVER['HTTP_HOST'];

// Get the base path
$basePath = rtrim(dirname($_SERVER['SCRIPT_NAME']), '/');

// Define the base URL
define('BASE_URL', $protocol . '://' . $serverDomain . $basePath . '/');

// Set session timeout to 30 minutes
//ini_set('session.gc_maxlifetime', 1800);

// Set the cookie lifetime to match the session lifetime
//ini_set('session.cookie_lifetime', 1800);

// Configuration of database access
define('DB_HOST', $_ENV['DB_HOST']);
define('DB_USER', $_ENV['DB_USER']);
define('DB_PASSWORD', $_ENV['DB_PASS']);
define('DB_NAME', $_ENV['DB_NAME']);

// Path of application
define('PATH_APP', dirname(dirname(__FILE__)));
define('PATH_ROOT', dirname(PATH_APP));
// Define the constant with the full file path for word template
define('WORD_TEMPLATE', PATH_ROOT . '/public/template/F-DC-15.docx');
define('ACTA_TEMPLATE', PATH_ROOT . '/public/template/acta_template.docx');

// Define a custom name for tab in the website
define('LOGIN', 'Login');
define('REGISTER', 'Register');
define('ERROR', 'Error page');
