<?php

function getCity($connect, $id = false)
{
    $city = mysqli_query($connect, "SELECT * FROM `city`");

    $cityList = [];
    while ($item = mysqli_fetch_assoc($city)) {
        $cityList[] = $item;
    }

    if (!$city) {
        http_response_code(404);
        echo json_encode($res = [
            "status" => false,
            "message" => "city not found"
        ]);
        return false;
    } else {
        echo json_encode([
            "status" => true,
            "city" => $cityList
        ]);
    }
}


function getProduct($connect, $id = false)
{
    $product = mysqli_query($connect, "SELECT * FROM `product`");

    $productList = [];
    while ($item = mysqli_fetch_assoc($product)) {
        $productList[] = $item;
    }

    if (!$product) {
        http_response_code(404);
        echo json_encode($res = [
            "status" => false,
            "message" => "product not found"
        ]);
        return false;
    } else {
        echo json_encode([
            "status" => true,
            "product" => $productList
        ]);
    }
}


function getFeedBack($connect, $id = false)
{
    $feedback = mysqli_query($connect, "SELECT * FROM `feedback`");

    $feedbackList = [];
    while ($item = mysqli_fetch_assoc($feedback)) {
        $feedbackList[] = $item;
    }

    if (!$feedback) {
        http_response_code(404);
        echo json_encode($res = [
            "status" => false,
            "message" => "feedback not found"
        ]);
        return false;
    } else {
        echo json_encode([
            "status" => true,
            "feedback" => $feedbackList
        ]);
    }
}

function addCallBack($connect, $data, $return = false)
{
    $mail = $data['mail'];
    $phone = $data['phone'];
    $type = $data['type'];
    $name = $data['name'];

    if (!$phone && !$mail) {
        echo json_encode([
            "status" => false,
            "message" => "не указаны контактные данные"
        ]);
        exit();
    }


    $call = mysqli_query($connect, "INSERT INTO `callback` (`name`,`phone`,`mail`,`type`) 
    VALUES('$name','$phone','$mail','$type')");

    http_response_code(201);

    $res = [
        "status" => true,
    ];

    echo json_encode($res);
}
function addOrder($connect, $data, $return = false)
{

    $name = $data['name'];
    $phone = $data['phone'];
    $product = $data['product'];
    $pieces = $data['pieces'];

    if (!$phone || !$product || !$pieces) {
        echo json_encode([
            "status" => false,
            "message" => "недостаточно данных для формирования заказа"
        ]);
        exit();
    }


    $call = mysqli_query($connect, "INSERT INTO `orders` (`name`,`phone`,`product_id`,`pieces`) 
    VALUES('$name','$phone','$product','$pieces')");

    http_response_code(201);

    $res = [
        "status" => true,
    ];

    echo json_encode($res);
}
