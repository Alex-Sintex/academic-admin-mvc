<?php
// Router for PHP built-in server

// If the request is for an actual file (CSS, JS, image), serve it as-is
$uri = urldecode(
    parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH)
);

$requested = __DIR__ . $uri;

if ($uri !== '/' && file_exists($requested)) {
    return false; // serve the file directly
}

// Otherwise, route everything to index.php
require_once __DIR__ . '/index.php';
