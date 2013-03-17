<div id="contactinfo">
	<div class="block war contact" style="margin-top:15px;">
		{if $siteinfo.settings.info.address.0 != ''}
			<h2>Adres</h2>
			<p>$siteinfo.settings.info.address.0</p>
		{/if}

		<h2>Ýletiþim</h2>
		<ul>
			{if $settings.email. != '' }
				<li>
					<span class="icon mail21"></span>
					<div>$settings.email</div>
				</li>
			{/if}
			{if $settings.phone != '' }
				<li>
					<span class="icon phone21"></span>
					<div>phoneFormat($settings.phone)</div>
				</li>
			{/if}
		</ul>
		<h2>Sosyal Að</h2>
		<ul>
			{if $settings.facebook. != '' }
				<li>
					<span class="icon facebook21"></span>
					<div><a href="#">/$settings.facebook</a></div>
				</li>
			{/if}
			{if $settings.twitter != '' }
				<li>
					<span class="icon twitter21"></span>
					<div><a href="#">/$settings.twitter</a></div>
				</li>
			{/if}
			{if $settings.status > "0" }
				<li>
					<span class="icon vubuu21"></span>
					<div><a class="transform" target="_blank" href="http://www.vubuu.com/$settings.nickname">/$settings.nickname</a></div>
				</li>
			{/if}
		</ul>
	</div>
</div>