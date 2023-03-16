<?php

defined('BOOTSTRAP') or die('Access denied');

use Tygh\Enum\YesNo;

/**
 * Function to calculate age from date of birth
 *
 * @param string $dob Date of birth
 *
 * @return int Age
 */
function calculate_age($dob) 
{
    fn_print_r(date_create($dob));
    $age = date_diff(date_create($dob), date_create('today'))->y;
    return $age;
}

/**
 * Function to calculate age based on date of birth
 *
 * @param string $dob Date of birth in YYYY-MM-DD format
 *
 * @return int Age in years
 */
function fn_popup_age_check_verify_age($dob)
{
    $auth = & Tygh::$app['session']['auth'];

    $age = calculate_age($dob);
    $auth['verified_age'] = $age > 18 ? YesNo::YES : YesNo::NO;
}
