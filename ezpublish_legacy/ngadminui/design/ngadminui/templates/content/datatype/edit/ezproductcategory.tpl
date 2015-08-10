{* DO NOT EDIT THIS FILE! Use an override template instead. *}
{default attribute_base=ContentObjectAttribute}

{def $product_categories = fetch( 'shop', 'product_category_list' )}
{def $cat_id = $attribute.data_int}
<select id="ezcoa-{if ne( $attribute_base, 'ContentObjectAttribute' )}{$attribute_base}-{/if}{$attribute.contentclassattribute_id}_{$attribute.contentclass_attribute_identifier}" class="form-control ezcc-{$attribute.object.content_class.identifier} ezcca-{$attribute.object.content_class.identifier}_{$attribute.contentclass_attribute_identifier}" name="{$attribute_base}_category_id_{$attribute.id}" size="1">
    <option  value="">{'None'|i18n( 'design/standard/content/datatype' )}</option>
{foreach $product_categories as $current_cat}
    <option {if $cat_id|eq( $current_cat.id )}selected="selected"{/if} value="{$current_cat.id}">{$current_cat.name}</option>
{/foreach}
</select>

{/default}