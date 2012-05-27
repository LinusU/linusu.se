<?php

require (dirname(__FILE__) . '/../lib/Buzzmix/require.php');

mb_internal_encoding("UTF-8");

$site = new Buzzmix(dirname(__FILE__) . '/..');

$site->setHeader('header.tpl');
$site->setFooter('footer.tpl');

$_SERVER['REQUEST_URI'] = trim($_SERVER['REQUEST_URI'], '/');

if($_SERVER['REQUEST_URI'] == '') {
    $_SERVER['REQUEST_URI'] = 'home';
}

$islinus = ($_SERVER['HTTP_HOST'] == "linus.xn--unnebck-9wa.se");

$slides = $islinus?array('home', 'yrkessm', 'nexus', 'macbook', 'ipad'):array('home', 'web', 'android', 'contact');
$site->assign('slides', $slides);

if(in_array($_SERVER['REQUEST_URI'], $slides)) {
    
    $site->assign('pageSite', $islinus?'linus':'linusu');
    
    $site->assign('pageTitle', ucfirst($_SERVER['REQUEST_URI']));
    $site->assign('pageSlide', array_search($_SERVER['REQUEST_URI'], $slides));
    
    $site->handleRequest("home");
    
} else {
    
    $site->handleRequest($_SERVER['REQUEST_URI']);
    
}
