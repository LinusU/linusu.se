
    </div>
    
    <div id="legal">
        © LinusU AB 2010 - {$smarty.now|date_format:"%Y"}, All Rights Reserved,
        icons used on this site are avaible under the GPL license.
    </div>
    
</div>

<script type="text/javascript">
    window.slides = {$slides|json_encode};
    init({$pageSlide});
</script>

</body>
</html>