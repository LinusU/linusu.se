<?php

if(isset($_SERVER['HTTP_USER_AGENT']) && !preg_match('/MSIE [1-6]\./', $_SERVER['HTTP_USER_AGENT'])) {
    ini_set("zlib.output_compression", "On");
}

header('Content-Type: text/javascript; charset=utf-8');

$base = dirname(__FILE__) . '/../js';

readfile("$base/jquery-1.6.1.min.js");
readfile("$base/jquery.mousewheel.min.js");

readfile("$base/main.js");
