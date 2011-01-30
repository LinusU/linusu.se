
window.slides = [];
window.current = 0;

function init(n) {
    
    window.current = n;
    
    if(!history.pushState) { return false; }
    
    var s = n*960;
    
    $('#slide0').css({ left: (   0-s), display: 'block' });
    $('#slide1').css({ left: ( 960-s), display: 'block' });
    $('#slide2').css({ left: (1920-s), display: 'block' });
    $('#slide3').css({ left: (2880-s), display: 'block' });
    
    return true;
}

function slide(n) {
    
    if(n == window.current) { return true; }
    if(!history.pushState) { return false; }
    
    var name = window.slides[n];
    var title = name.charAt(0).toUpperCase() + name.substr(1);
    
    history.pushState(name, title, name);
    
    _slide(n);
    
    return true;
}

function _slide(n) {
    
    var name = window.slides[n];
    var title = name.charAt(0).toUpperCase() + name.substr(1);
    
    window.current = n;
    document.title = title;
    
    $('#menu, .slide').stop(true, false);
    
    $('#menu').animate({ backgroundPosition: '-' + ((3-n) * 80) + 'px bottom' });
    
    var s = n*960;
    
    $('#slide0').animate({ left: (   0-s) });
    $('#slide1').animate({ left: ( 960-s) });
    $('#slide2').animate({ left: (1920-s) });
    $('#slide3').animate({ left: (2880-s) });
    
}

if(history.pushState) {
    
    window.onpopstate = function(event) {
        
        var page = event.state || window.location.href;
        
        if(page.search(/\//) > 0) {
            page = page.substring(page.lastIndexOf("/") + 1);
        }
        
        for(i in window.slides) {
            if(window.slides[i] == page) {
                _slide(i);
                return ;
            }
        }
        
        _slide(0);
        
    };
    
}
