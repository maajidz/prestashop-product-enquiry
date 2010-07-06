{capture name=path}{l s='Product Enquiry' mod='productenquiry'}{/capture}
{include file=$tpl_dir./breadcrumb.tpl}

<h2>{l s='Product Enquiry' mod='productenquiry'}</h2>

<p class="bold">{l s='Enquire about a product.' mod='productenquiry'}.</p>
{include file=$tpl_dir./errors.tpl}

{if $confirm}
	<p class="success">{$confirm}</p>
{else}
	<form method="post" action="{$request_uri}" class="std">
		<fieldset>
			<h3>{l s='Product Enquiry' mod='productenquiry'}</h3>
		
			<p class="align_center">
				<a href="{$productLink}"><img src="{$link->getImageLink($product->link_rewrite, $cover.id_image, 'small')}" alt="" title="{$cover.legend}" /></a><br/>
				<a href="{$productLink}">{$product->name}</a>
			</p>
			
			<p>
			<p>
			
			<p class="submit">
				<input type="submit" name="submitAddtoafriend" value="{l s='send' mod='productenquiry'}" class="button" />
			</p>
		</fieldset>
	</form>
{/if}

<ul class="footer_links">
	<li><a href="{$productLink}" class="button_large">{l s='Back to' mod='productenquiry'} {$product->name}</a></li>
</ul>