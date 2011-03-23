
window.slides = [];
window.current = 0;

function init(n) {
    
    window.current = parseInt(n);
    
    if(!history.pushState) { return false; }
    
    $('#site').addClass("slide" + n);
    
    $('#slide0').css({ left:    0, display: 'block' });
    $('#slide1').css({ left:  960, display: 'block' });
    $('#slide2').css({ left: 1920, display: 'block' });
    $('#slide3').css({ left: 2880, display: 'block' });
    
    return true;
}

function slide(n) {
    
    if(n == window.current) { return true; }
    if(!history.pushState) { return false; }
    
    if(n < 0 || n >= window.slides.length) {
        return false;
    }
    
    var name = window.slides[n];
    var title = name.charAt(0).toUpperCase() + name.substr(1);
    
    history.pushState(name, title, name);
    
    _slide(n);
    
    return true;
}

function _slide(n) {
    
    var name = window.slides[n];
    var title = name.charAt(0).toUpperCase() + name.substr(1);
    
    $('#site').removeClass('slide' + window.current);
    $('#site').addClass('slide' + n);
    
    window.current = n;
    document.title = title;
    
}

if(history.pushState) {
    
    window.moving = false;
    
    $(function () {
        $('body').bind('mousewheel', function (event, delta, deltaX, deltaY) {
            if(deltaY != 0) { return true; }
            if(window.moving) { return false; }
            window.moving = true;
            setTimeout(function () { window.moving = false; }, 500);
            slide(window.current - deltaX);
            return false;
        });
    });
    
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
