<?php

$smarty->contentType('css');

$dir = (dirname(__FILE__) . '/../css/');
$files = glob($dir . '*.css');

foreach($files as $file) {
    readfile($file);
}
