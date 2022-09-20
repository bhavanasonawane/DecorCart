<?php
require 'config.php';

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
		$order_id=uniqid();
    if(strcmp($pmode,'cod') == 0)
    {
      

		$stmt = $conn->prepare("INSERT INTO orders (username, email, phone, address, pmode, products, amount_paid, order_id) VALUES(?,?,?,?,?,?,?,?)");
		$stmt->bind_param("ssssssss",$username,$email,$phone,$address,$pmode,$products,$grand_total,$order_id);
		$stmt->execute();
		
				  echo "<script>
				  window.location.href='cod.php';
				  </script>";

       
    }
    else if(strcmp($pmode,'cards') == 0) 
    {
		$stmt = $conn->prepare("INSERT INTO orders (username, email, phone, address, pmode, products, amount_paid, order_id) VALUES(?,?,?,?,?,?,?,?)");
		$stmt->bind_param("ssssssss",$username,$email,$phone,$address,$pmode,$products,$grand_total,$order_id);
		$stmt->execute();
	
		echo"<script>
                    window.location.href='payment.php';
                    </script>";
	
    }
}


?>
