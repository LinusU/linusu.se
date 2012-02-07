
window.slides = [];
window.current = 0;

function init(n) {
    
    window.current = parseInt(n);
    
    if(!history.pushState) { return false; }
    
    $('#site').addClass("slide" + n);
    $('#line').css('left', -(window.slides.length-4)*80);
    
    $('#slide0').css({ left:    0, display: 'block' });
    $('#slide1').css({ left:  960, display: 'block' });
    $('#slide2').css({ left: 1920, display: 'block' });
    $('#slide3').css({ left: 2880, display: 'block' });
    $('#slide4').css({ left: 3840, display: 'block' });
    
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
        $(document).bind('keydown', function (e) {
            if(e.which == 37 || e.which == 39) {
                e.preventDefault();
                if(window.moving) { return ; }
                window.moving = true;
                setTimeout(function () { window.moving = false; }, 600);
                slide(parseInt(window.current) + (e.which==37?-1:1));
            }
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
