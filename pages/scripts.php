<?php

header('Content-Type: text/javascript; charset=utf-8');

$base = dirname(__FILE__) . '/../js';

readfile("$base/jquery-1.4.4.min.js");
//readfile("$base/jquery-ui-1.8.7.min.js");
readfile("$base/jquery.mousewheel.min.js");

readfile("$base/main.js");
