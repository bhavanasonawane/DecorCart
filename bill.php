<?php
require 'config.php';
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
$order_id=uniqid();

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE-EDGE">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Checkout</title>
    <link rel="stylesheet" href="style.css">
    <script src="js/JQuery.js"></script>
    <script src="js/lightslider.js" type="text/javascript"></script>
    <link rel="shortcut icon" href="miscellaneous/Untitled-3.png"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://kit.fontawesome.com/c8e4d183c2.js" crossorigin="anonymous"></script>
</head>
<body class="main my-2">
<!--navigation------------------------------------------------------------------------------------>
<nav class="m-auto text-center nav-dark ">
    <!--social-link-and-phone-number------------------------------------------------------------------>
    <div class="social-call">
        <!--social-links---------------------------------------------------------------------------------->
        <div class="social">
            <a href="https://www.facebook.com/Thedecorcart-102415515156793">
                <i class="fab fa-facebook-f">
                </i>
            </a>
            <a href="https://www.instagram.com/the.decor_cart">
                <i class="fab fa-instagram">
                </i>
            </a>
            <a href="#">
                <i class="fas fa-inbox" title="thedecor.cart@gmail.com">
                </i>
            </a>
        </div>
        <!--phone-number---------------------------------------------------------------------------------->
        <div class="phone">
                    <span>
                        Call +91-98330 45326 / +91-98337-47124
                    </span>
        </div>
    </div>
</nav>
<nav class="navbar navbar-expand-sm  navbar-light">
    <!-- Brand -->
    <a class="navbar-brand" href="#"><img src="miscellaneous/Untitled-3.png" width="200px" height="100px"></a>

    <!-- Links -->
    
</nav>

<?php
$sql = "SELECT * FROM orders where username='$username',email='$email',phone='$phone',products='$products',pmode='$pmode',amount_paid='$grand_total',order_id='$order_id',address='$address'";
$res = mysqli_query($conn,$sql);
while($row = mysqli_fetch_assoc($res)){
    ?>
   <div class="text-center">
		
        <h1 class="display-4 mt-2 text-danger">Thank You!</h1>
        <h2 class="text-success">Your order has been placed successfully!</h2>
        <h4 class="bg-danger text-light rounded p-2">Items Purchased : <?php echo $products ?></h4>
        <h4>Your Name: <?php echo $username ?></h4>
        <h4>Your Email: <?php echo $email ?></h4>
        <h4>Your Phone: <?php echo $phone ?></h4>
        <h4>Total Amount Paid: RS. <?php echo number_format($grand_total,2)?>'</h4>
        <h4>Order ID:<?php echo $order_id ?></h4>
        <h4>Payment Mode: <?php echo $pmode ?></h4>
        <div class="form-group">
        <input type="submit" name="submit" value="View Invoice" class="btn btn-danger btn-block">
    </div>
      </div>
<?php
}
?>

<!--footer---------------------------------------------------------------------------------------->
<footer class="text-center">
    <!--copyright------------------------------------------------------------------------------------->
    <span class="copyright ">
                Copyright 2021 Reserved - The Decor cart
            </span>
</footer>
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src="js/JQuery.js">
</script>
<!--script---------------------------------------------------------------------------------------->
<script type="text/javascript">
    /-login-signup-form-----------------------------------------------------------------------------/
    $(document).on('click', '.user', function(){
        $('.form').addClass('login-active')
    });

    $(document).on('click', '.sign-up-btn', function(){
        $('.form').addClass('signup-active').removeClass('login-active')
    });

    $(document).on('click', '.form-cancel', function(){
        $('.form').removeClass('login-active').removeClass('signup-active')
    });

    $(document).on('click', '.already-account', function(){
        $('.form').addClass('login-active').removeClass('signup-active')
    });

</script>
<script src="js/lightslider.js">
</script>
<script type="text/javascript">
    /--full-slider-script---------------------------------------------------------------------------/
    $(document).ready(function(){
        $('#adative').lightSlider({
            adaptiveHeight:true,
            item:1,
            slideMargin:0,
            loop:true
        });
    });
</script>
<script src="js/lightslider.js">
</script>
<script type="text/javascript">
    /--Feature-slider-------------------------------------------------------------------------------/
    $(document).ready(function(){
        $('#autoWidth').lightSlider({
            autoWidth:true,
            loop:true,
            onSliderLoad: function(){
                $('#autoWidth').removeClass('cs-hidden');
            }
        });
    });

    /--for-fix-menu-when-scroll---------------------------------------------------------------------/
    $(window).scroll(function(){
        if($(document).scrollTop() > 50){
            $('.navigation').addClass('fix-nav');
        }
        else{
            $('.navigation').removeClass('fix-nav');
        }
    });
    /--for-responsive-menu--------------------------------------------------------------------------/
    $(document).ready(function(){
        $('.toggle').click(function(){
            $('.toggle').toggleClass('active')
            $('.navigation').toggleClass('active')
        })
    });
    $(".addtocart").click(function(e) {
        e.preventDefault();
        var $form = $(this).closest(".submit");
        var pid = $form.find(".pid").val();
        var pname = $form.find(".pname").val();
        var pprice = $form.find(".pprice").val();
        var pimage = $form.find(".pimage").val();
        var pcode = $form.find(".pcode").val();

        var pqty = $form.find(".pqty").val();

        $.ajax({
            url: 'manage_cart.php',
            method: 'post',
            data: {
                pid: pid,
                pname: pname,
                pprice: pprice,
                pqty: pqty,
                pimage: pimage,
                pcode: pcode,
            },
            success: function(response) {
                $("#message").html(response);
                window.scrollTo(0, 0);
                load_cart_item_number();
            }
        });
    });

    $(document).ready(function() {
        $(document).on('submit', "#placeOrder", function(e){
            e.preventDefault()
            $.ajax({
                url: 'thankyou.php',
                method: 'post',
                data: $('form').serialize()+"&action=order",
                success: function(response){
                    console.log(response)
                    console.log($('form').serialize()+"&action=order");
                    $("#order").html(response);
                }
            });
        });
        load_cart_item_number();


        function load_cart_item_number() {
            $.ajax({
                url: 'manage_cart.php',
                method: 'get',
                data: {cartItem: "cart_item"},
                success: function(response){
                    $("#cart-item").html(response);
                }
            });
        }
    });
</script>
</body>
</html>