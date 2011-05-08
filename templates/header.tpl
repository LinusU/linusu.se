<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
    
    <title>{$pageTitle}</title>
    
    <link rel="shortcut icon" href="img/favicon.png" />
    <link rel="stylesheet" type="text/css" href="css" />
    <link rel="apple-touch-icon" href="img,AppleIcon.png" />
    
    <script type="text/javascript" src="scripts"></script>
    
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="viewport" content="user-scalable=no, width=1024" />
    <meta name="google-site-verification" content="N4K-j3kKAghi9-IWV0_VyFqQWO0q7y6mooHGiT2oqVg" />
    
</head>
<body>

<div id="notice">
    <b>Linus Unnebäck</b> har inte gjort <span style="text-decoration: underline; color: blue;">opencore.org</span> men han har däremot gjort <a href="http://opencores.org/">opencores.org</a>
    <div class="close" onclick="$('#notice').slideUp();$(this).fadeOut();">x</div>
</div>

<div id="site">
    
    <div id="menu" class="container_12">
        
        {if $pageSite == "linusu"}
        
        <div class="grid_8"> <h1>LinusU AB</h1> </div>
        
        <a href="home" class="grid_1" onclick="return !slide(0);"> <img src="img,help-about.png" /> <br /> Home </a>
        <a href="web" class="grid_1" onclick="return !slide(1);"> <img src="img,applications-webbrowser.png" /> <br /> Web </a>
        <a href="android" class="grid_1" onclick="return !slide(2);"> <img src="img,applications-java.png" /> <br /> Android </a>
        <a href="contact" class="grid_1" onclick="return !slide(3);"> <img src="img,mail-send.png" /> <br /> Contact </a>
        
        <div id="line" style="left: -{math equation="80*(3-x)" x=$pageSlide}px;"></div>
        
        {elseif $pageSite == "linus"}
        
        <div class="grid_7"> <h1>Linus Unnebäck</h1> </div>
        
        <a href="home" class="grid_1" onclick="return !slide(0);"> <img src="img,go-home.png" /> <br /> Home </a>
        <a href="yrkessm" class="grid_1" onclick="return !slide(1);"> <img src="img,help-about.png" /> <br /> Yrkes SM </a>
        <a href="nexus" class="grid_1" onclick="return !slide(2);"> <img src="img,phone48.png" /> <br /> Nexus </a>
        <a href="macbook" class="grid_1" onclick="return !slide(3);"> <img src="img,computer.png" /> <br /> MacBook </a>
        <a href="ipad" class="grid_1" onclick="return !slide(4);"> <img src="img,tablet-apple-ipad.png" /> <br /> iPad </a>
        
        <div id="line" style="left: -{math equation="80*(4-x)" x=$pageSlide}px;"></div>
        
        {/if}
        
    </div>
    
    <div id="main" class="container_12">
