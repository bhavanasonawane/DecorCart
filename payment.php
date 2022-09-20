<?php
require('config.php');
$grand_total = 0;
$allItems = '';
$items = array();

$sql = "SELECT CONCAT(product_name, '(',qty,')') AS ItemQty, total_price FROM cart";
$stmt = $conn->prepare($sql);
$stmt->execute();
$result = $stmt->get_result();
while($row = $result->fetch_assoc()){
    $grand_total += $row['total_price'];
    $items[] = $row['ItemQty'];
}
$allItems = implode(",",$items);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.2/css/all.css">
<link rel="shortcut icon" href="miscellaneous/Untitled-3.png"/>
    <link rel="stylesheet" href="style-4.css">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet">
    
</head>
<body>

<div class="wrapper">
	
		
    <form action="loader.htm" method="POST" id="placeOrder">

	<h1>CREDIT/DEBIT CARD PAYMENT</h1>
	<div class="card-header">
        <div class="row text-center">
            <div class="col-md-6 text-right" style="margin-top: -5px; "> 
                <img src="https://img.icons8.com/color/36/000000/visa.png">
                <img src="https://img.icons8.com/color/36/000000/mastercard.png">
                <img src="https://img.icons8.com/color/36/000000/amex.png"> 
            </div>
        </div>
    </div><br>
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-lg-6 px-4 pb-4" id="order">
        <div class="jumbotron p-3 mb-2 text-center">
          <h3 class="lead"><b>Delivery Charge : </b>Free </h3><br>
          <h3><b>Total Price:</b> ₹<?= number_format($grand_total,2)?>/-</h3><br>
        </div>
        <div class="form">
          <div class="card space icon-relative">
            <label class="label">Card holder:</label>
            <input type="text" class="input" placeholder="Name" required>
            <i class="fas fa-user"></i>
          </div>
          <div class="card space icon-relative">
            <label class="label">Card number:</label>
            <input type="text" class="input" data-mask="0000 0000 0000 0000" placeholder="Card Number" required>
            <i class="far fa-credit-card"></i>
          </div>
          <div class="card-grp space">
            <div class="card-item icon-relative">
              <label class="label">Expiry date:</label>
              <input type="text" name="expiry-data" class="input" data-mask="00 / 00"  placeholder="00 / 00" required>
              <i class="far fa-calendar-alt"></i>
            </div>
            <div class="card-item icon-relative">
              <label class="label">CVC:</label>
              <input type="text" class="input" data-mask="000" placeholder="000" required>
              <i class="fas fa-lock"></i>
            </div>
          </div>
          <button class="btn" type="submit"> Pay Now</button>
        </div>
      </form>
      </div>
    </div>
  </div>

	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js"></script>
</div>
</body><br><br><br>
</html>
