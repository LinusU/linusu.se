
    </div>
    
    <div id="legal">
        © {if $pageSite == "linusu"}LinusU AB{elseif $pageSite == "linus"}Linus Unnebäck{/if}
        2010 - {$smarty.now|date_format:"%Y"}, All Rights Reserved,
        icons used on this site are made by the Tango! team
        and avaible under the GPL license.
    </div>
    
</div>

<script type="text/javascript">
    
    window.slides = {$slides|json_encode};
    init({$pageSlide});
    
    $('img.image').load(function () {
        
        var $div = $('<div class="image" />');
        $div.attr('style', $(this).attr('style'));
        $div.css({
            'width': $(this).width(),
            'height': $(this).height(),
            'display': 'inline-block',
            'background-image': "url(" + $(this).attr('src') + ")"
        }).replaceAll(this);
        
    });
    
</script>

</body>
</html>