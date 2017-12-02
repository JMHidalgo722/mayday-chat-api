<?php
defined('BASEPATH') OR exit('No direct script access allowed');

$route['default_controller'] = '';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;

$route['message/get-all'] = 'ChatController/get_all';
$route['message/get/(:any)'] = 'ChatController/get/$1';
$route['message/login'] = 'ChatController/login';
$route['message/send'] = 'ChatController/send';