{$title = $title|default:""}
{$content = $content|default:""}

<div class="ui-widget-overlay ui-front" style="z-index:100;"></div>
<div tabindex="-1" role="dialog" class="ui-dialog ui-corner-all ui-widget ui-widget-content
                                        ui-front ty-popup-age-check-non-closing-popup"
                                        aria-describedby="popup_age_verification" aria-labelledby="ui-id-1">
    <div class="ui-dialog-titlebar ui-corner-all ui-widget-header ui-helper-clearfix">
        <span id="ui-id-1" class="ui-dialog-title">{$title}</span>
    </div>
    <div class="hidden cm-dialog-auto-size ui-dialog-content ui-widget-content" id="popup_age_verification" tabindex="-1"
            style="display: block; width: auto; min-height: 0px; max-height: none; height: auto;">
            <div class="object-container ">
                <div class="cm-notification-container-dialog notification-container-dialog"></div>
                {$content nofilter}
            </div>
    </div>
</div>
