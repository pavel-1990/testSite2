<?php
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: *');
header('Access-Control-Allow-Methods: *');
header('Access-Control-Allow-Credentials: true');
header('Content-type: json/application');

$method = $_SERVER['REQUEST_METHOD'];
$q = $_GET['q'];

require 'connect.php';
require 'function.php';




$params = explode('/', $q);
$type = $params[0];
$id = $params[1]; //???
switch ($method) {
    case 'GET':
        switch ($type) {
            case 'city':
                getCity($connect, $id);
                break;
            case 'product':
                getProduct($connect, $id);
                break;
            case 'feedback':
                getFeedBack($connect, $id);
                break;
        }
        break;
    case 'POST': {
        }
        switch ($type) {
            case 'callback':
                addCallBack($connect, $_POST);
                break;
            case 'orders':
                addOrder($connect, $_POST);
                break;
        }
    default:
        break;
}


mysqli_close($connect);
