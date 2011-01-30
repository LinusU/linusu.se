<?php

require "smarty3/Smarty.class.php";
require "/opt/Buzzmix/require.php";

mb_internal_encoding("UTF-8");

$site = new Buzzmix(dirname(__FILE__) . '/..');

$site->header_tpl = 'header.tpl';
$site->footer_tpl = 'footer.tpl';

if(strpos($_SERVER['REQUEST_URI'], basename(__FILE__)) !== false) {
    $_SERVER['REQUEST_URI'] = substr($_SERVER['REQUEST_URI'], strpos($_SERVER['REQUEST_URI'], basename(__FILE__)) + 10);
}

if($_SERVER['REQUEST_URI'] == '') {
    $_SERVER['REQUEST_URI'] = 'home';
}

$slides = array('home', 'web', 'android', 'contact');
$site->assign('slides', $slides);

if(in_array($_SERVER['REQUEST_URI'], $slides)) {
    
    $site->assign('pageTitle', ucfirst($_SERVER['REQUEST_URI']));
    $site->assign('pageSlide', array_search($_SERVER['REQUEST_URI'], $slides));
    
    $site->handle_request("home");
    
} elseif($site->handle_request($_SERVER['REQUEST_URI']) === false) {
    
    header('x', true, 404);
    
}
