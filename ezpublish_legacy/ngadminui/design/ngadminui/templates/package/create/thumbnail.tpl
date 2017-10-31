{* DO NOT EDIT THIS FILE! Use an override template instead. *}
{let class_list=fetch( class, list )}
<div id="package" class="create">
    <div id="sid-{$current_step.id|wash}" class="pc-{$creator.id|wash} panel">
        <div class="row">
            <div class="col-sm-6 col-lg-4">

                <form enctype="multipart/form-data" method="post" action={'package/create'|ezurl}>

                    {include uri="design:package/create/error.tpl"}

                    {include uri="design:package/header.tpl"}
                    <p>{'Please select a thumbnail file to be included in the package,
                    if you do not want to have a thumbnail simply click Next.'|i18n('design/standard/package')|break}</p>

                    <div class="form-group">
                        <input type="hidden" name="MAX_FILE_SIZE" value="32000000" />
                        <input class="box form-control" name="PackageThumbnail" type="file" />
                    </div>

                    {include uri="design:package/navigator.tpl"}
                </form>
            </div>
        </div>

    </div>
</div>
{/let}
