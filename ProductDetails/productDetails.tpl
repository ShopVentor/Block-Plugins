<div id="details">
    <div>	
	<div class="content">
	    
		{$image = explode(",",$rowproduct[image]) }
	    
	    <div class="left">
		<div class="image">
		    <a href="{$themeView->image_product($image[0])}" title="{$row.name}" style="display:block;">
			<img src="{$themeView->image_product($image[0])}" class="resize" title="{$row[name]}"/>
		    </a>
		</div>
		{if($image[1] != 0) }
		    <ul class="aclear">
			 {for $i=0 to sizeof($image) }
				{if $image[$i] != 0)}
				    <li".($i==0?" class='this'":"").">
					<img big-src='".{$themeView->image_product($image[$i])}."' src='".{$themeView->image_product($image[$i],"thumb")}."'/>
				    </li>
				{/if}
			 {/f}or}
			
		    </ul>
		{/if}
	    </div>            
	    <div class="right">
		<ul>
                    <li class="header">
                        {$rowproduct[name]}
                    </li>
                    <li class="price">			
			<div>
			    {if $siteinfo.settings.currency."Default".showType == '1'}
				<b>				    
					{$price = priceShow({$rowproduct.price},{$rowproduct.tax},{$rowproduct[currency]})}
					{$price[0]}." ".{$price[1]}
				    
				</b>
			    {elseif $siteinfo.settings.currency."Default".showType == '2'}
				<b>
				    
					{$price = priceShow({$rowproduct.price},{$rowproduct.tax},{$rowproduct[currency]},1)}
					{$price[0]}." ".{$price[1]}
				    
				</b>
			    {elseif $siteinfo.settings.currency."Default".showType == '3'}
				<b>
				    <span>
					
					    {$price = priceShow({$rowproduct.price},{$rowproduct.tax},{$rowproduct[currency]},1)}
					    {$price[0]}." ".{$price[1]}." ".{$price[3]}
					
				    </span>
				</b><br>
				<b>
				    
					{$price = priceShow({$rowproduct.price},{$rowproduct.tax},{$rowproduct[currency]})}
					{$price[0]}." ".{$price[1]}
				    
				</b>
			    {/if}
			    
				{switch $rowproduct.unitsType }
				    {case 0}
					{$type = "Adet"}
					{break}
				    case 1:
					{$type = "Paket"}
					{break}
				    case 3:
					{$type = "Koli"}
					{break}
				{/switch}
			    
			    <span>" / ".{$type}</span>
			</div>
		    </li>
		    <li class="description">
                        {$rowproduct.description..}
                    </li>
		    <li style="display: none;" >
                        <ul>
                                {if $rowproduct.iscargo == 1 }
                                        <li>Ücretsiz Kargo</li>
                                {/if}
                                {if $rowproduct.cargo == 1}
                                        <li>Ayný Gün Kargo</li>
                                {elseif $rowproduct.cargo != 0}
                                {/if}
                                {if $rowproduct.units > 0}
                                endif; ?>
                                {if $rowproduct.whole == 1}
                                {/if}
                                {if ($rowproduct.ptype == "Yeni, Açýlmamýþ Ambalajlý") || ($rowproduct.ptype == "Yeni, Açýlmamýþ Kutulu") ||($rowproduct.ptype == "Yeni, Kutusuz Ambalajsýz")}
                                        <li>Yeni/Sýfýr</li>			   
                                {elseif $rowproduct.ptype != ""}
                                {/if}
                                {if $rowproduct.canorder == 1 && $rowmember.creditcardpay == 1}

                                {/if}
                        </ul>
		    </li>
                    <li class="choices aclear">
                        <div class="color">
                            <div>Renk seçimi</div>
                            <div>
                                <ul class="aclear">
                                    <li></li>
                                    <li></li>
                                    <li></li>
                                    <li></li>
                                    <li></li>
                                </ul>
                            </div>
                        </div>
                        <div class="size">
                            <div>Ölçü seçimi</div>
                            <div>
                                <ul class="aclear">
                                    <li></li>
                                    <li></li>
                                    <li></li>
                                    <li></li>
                                    <li></li>
                                </ul>
                            </div>
                        </div>
                    </li>
		    <li class="addcart aclear">                        
			<div pid="{$rowproductid}" onClick="!isset($_SESSION.id)?"window.location='{$siteurl?page=login}'":"addcartblock(this)">Sepete Ekle</div>
                        <div>
                            2
                        </div>
                    </li>
		</ul>
	    </div>
	    <div class="clear"></div>
	</div>	
    </div>
</div>