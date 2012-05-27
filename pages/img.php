<?php

if(strpos($parts[1], '..') !== false) {
    return 404;
}

switch(substr($parts[1], -4)) {
    case '.jpg':
        $smarty->contentType('image', 'jpeg');
        break;
    case '.png':
        $smarty->contentType('image', 'png');
        break;
    case '.gif':
        $smarty->contentType('image', 'gif');
        break;
    default:
        return 500;
}

$file = (dirname(__FILE__) . '/../images/' . $parts[1]);

header('Content-Length: ' . filesize($file));

readfile($file);
