<form>
	{if $USER.logged }
            <div>
                    <b>�sim Soyisim</b>
                    <div>
                            <input  class="delete" type="text" name="fullname"/>
                    </div>
            </div>
            <div>
                    <b>Email</b>
                    <div>
                            <input class="delete" type="text" name="email"/>
                    </div>
            </div>
	{/if}

	<div>
            	<b>Konu</b>
            	<div>
                    <input class="delete" type="text" name="caption"/>
            	</div>
        </div>
        <div>
            	<b>Mesaj</b>
            	<div>
               	    	<textarea class="delete" name="message"></textarea>                        
        	</div>
        </div>
       	<div class="recaptcha">
		<b>G�venlik kodu</b>
		recaptcha_get_html({$publickey})
	</div>
        <input class="Button" type="submit" value="G�nder"/>
</form>