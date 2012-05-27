<?php

if(isset($_SERVER['HTTP_USER_AGENT']) && !preg_match('/MSIE [1-6]\./', $_SERVER['HTTP_USER_AGENT'])) {
    ini_set("zlib.output_compression", "On");
}

$smarty->contentType('javascript');

$base = dirname(__FILE__) . '/../js';

readfile("$base/jquery-1.6.1.min.js");
readfile("$base/main.js");
