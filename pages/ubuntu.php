<?php

$path = (dirname(__FILE__) . '/../Ubuntu-Regular.ttf');

header('Content-Type: font/ttf');
header('Content-Disposition: attachment; filename="Ubuntu-Regular.ttf"');
header('Content-Length: ' . filesize($path));

readfile($path);

