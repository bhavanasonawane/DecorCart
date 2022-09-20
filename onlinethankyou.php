<?php
require('config.php');
if(isset($_POST['action']) && isset($_POST['action']) == 'orders'){

	$username = $_POST['username'];
$email = $_POST['email'];
$phone = $_POST['phone'];
$products = $_POST['products'];
$grand_total = $_POST['grand_total'];
$order_id = $_POST['order_id'];
$address = $_POST['address'];
$pmode = $_POST['pmode'];

$data = '';
$stmt = $conn->prepare("INSERT INTO orders (username, email, phone, address, pmode, products, amount_paid, order_id) VALUES(?,?,?,?,?,?,?,?)");
		$stmt->bind_param("ssssssss",$username,$email,$phone,$address,$pmode,$products,$grand_total,$order_id);
		$stmt->execute();
	
		$data = '<div class="text-center">
		
					<h1 class="display-4 mt-2 text-danger">Thank You!</h1>
					<h2 class="text-success">Your order has been placed successfully!</h2>
					<h4 class="bg-danger text-light rounded p-2">Items Purchased : '.$products.'</h4>
					<h4>Your Name: '.$username.'</h4>
					<h4>Your Email: '.$email.'</h4>
					<h4>Your Phone: '.$phone.'</h4>
					<h4>Total Amount Paid: RS. '.number_format($grand_total,2).'</h4>
					<h4>Order ID: '.$order_id.'</h4>
					<h4>Payment Mode: '.$pmode.'</h4>
					
				  </div>';
				  echo $data;}
?>