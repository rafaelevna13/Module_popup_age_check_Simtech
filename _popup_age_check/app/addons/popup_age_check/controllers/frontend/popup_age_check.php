<?php

if ($mode === 'verify_age') {
    $auth = & Tygh::$app['session']['auth'];
    $params = $_REQUEST['popup_age_check'];

    $dob = $params['date_of_birth'];
    fn_popup_age_check_verify_age($dob);
}
