
{if $pageSite == "linusu"}

<div id="slide0" class="slide" {if $pageSlide!=0}style="display: none;"{/if}> {include file="pages/home.tpl"} </div>
<div id="slide1" class="slide" {if $pageSlide!=1}style="display: none;"{/if}> {include file="pages/web.tpl"} </div>
<div id="slide2" class="slide" {if $pageSlide!=2}style="display: none;"{/if}> {include file="pages/android.tpl"} </div>
<div id="slide3" class="slide" {if $pageSlide!=3}style="display: none;"{/if}> {include file="pages/contact.tpl"} </div>

{elseif $pageSite == "linus"}

<div id="slide0" class="slide" {if $pageSlide!=0}style="display: none;"{/if}> {include file="linus/home.tpl"} </div>
<div id="slide1" class="slide" {if $pageSlide!=1}style="display: none;"{/if}> {include file="linus/yrkessm.tpl"} </div>
<div id="slide2" class="slide" {if $pageSlide!=2}style="display: none;"{/if}> {include file="linus/nexus.tpl"} </div>
<div id="slide3" class="slide" {if $pageSlide!=3}style="display: none;"{/if}> {include file="linus/macbook.tpl"} </div>
<div id="slide4" class="slide" {if $pageSlide!=4}style="display: none;"{/if}> {include file="linus/ipad.tpl"} </div>

{/if}
