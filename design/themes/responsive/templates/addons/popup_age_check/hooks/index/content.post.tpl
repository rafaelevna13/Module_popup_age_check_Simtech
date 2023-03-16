{$verified = $auth.verified_age}

{capture name="age_check_form"}
        <form name="popup_age_check" action="{"popup_age_check.verify_age"|fn_url}" method="post" class="cm-ajax">
            <div class="ty-control-group">
                <label class="ty-control-group__title cm-required" for="date_of_birth">
                    {__("popup_age_check_date_of_birth")}
                </label>
                    {include "common/calendar.tpl"
                        date_id="date_of_birth"
                        date_name="popup_age_check[date_of_birth]"
                        date_val=$auth.birthday
                        is_changeable_range=false
                    }
            </div>
            <input type="hidden" name="result_ids" value="popup_age_check_content">
                <div class="buttons-container">
                    <div class="ty-float-left">
                        {include "buttons/button.tpl" 
                            but_name="dispatch[popup_age_check.verify_age]" 
                            but_text=__("submit")
                            but_role="submit" 
                            but_meta="ty-btn__primary ty-btn__big cm-form-dialog-closer ty-btn"
                        }
                    </div>
                </div>
        </form>
{/capture}

{capture name="content_unavailable"}
    <p>
        {__("popup_age_check_content_unavailable_verbose")}
    </p>
{/capture}

<div class="ty-popup-age-check" id="popup_age_check_content">
    {if $auth.verified_age !== "YesNo::YES"|enum}
        {include "addons/popup_age_check/views/components/non_closing_popup.tpl"
            title=($verified === "YesNo::NO"|enum) ?
                {__("popup_age_check_content_unavailable")} :
                {__("popup_age_check_age_verification")}
            content=($verified === "YesNo::NO"|enum) ?
                $smarty.capture.content_unavailable :
                $smarty.capture.age_check_form}
    {/if} 
<!--popup_age_check_content--></div>
