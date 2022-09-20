<?php
session_start();

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE-EDGE">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Bedroom</title>
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
    <ul class="navbar-nav m-auto">
        <li class="nav-item">
            <a class="nav-link active" href="index.php">Home</a>
        </li>
        <!-- Dropdown -->
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
                 Wall Decor
             </a>
        <div class="dropdown-menu">
            <a class="dropdown-item" href="clocks.php">Clocks</a>
            <a class="dropdown-item" href="photo frames.php">Photo Frames</a>
            <a class="dropdown-item" href="wall mirror.php">Wall Mirror</a>
            <a class="dropdown-item" href="wall plates.php">Wall Plates</a>
            <a class="dropdown-item" href="wind chimes.php">Wind Chimes</a>
        </div>
        </li>
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
                Lightings
            </a>
        <div class="dropdown-menu">
            <a class="dropdown-item" href="ceiling And wall lights.php">Ceiling And Wall lights</a>
            <a class="dropdown-item" href="figurine lamps.php">Figurine Lamps</a>
            <a class="dropdown-item" href="table lamps.php">Table Lamps</a>
            <a class="dropdown-item" href="chandelier.php">Chandelier</a>
        </div>
        </li>
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
                Decor
            </a>
        <div class="dropdown-menu">
            <a class="dropdown-item" href="bookend.php">Bookends</a>
            <a class="dropdown-item" href="candle ware.php">Candle Ware</a>
            <a class="dropdown-item" href="carpet and rugs.php">Carpet And Rugs</a>
            <a class="dropdown-item" href="garden stools.php">Garden Stools</a>
            <a class="dropdown-item" href="jars.php">Jars</a>
            <a class="dropdown-item" href="objects and figurines.php">Object and Figurines</a>
            <a class="dropdown-item" href="vases.php">Vases</a>
        </div>
        </li>
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
                Furniture
            </a>
        <div class="dropdown-menu">
            <a class="dropdown-item" href="bedroom.php">Bedroom</a>
            <a class="dropdown-item" href="living room.php">Living Room</a>
        </div>
        </li>
        <li class="nav-item">
            <a class="nav-link active" href="consultation confirmation.php">Consultation</a>
        </li>
        <li class="nav-item">
            <a class="nav-link active" href="index-2.php">Track Order</a>
        </li>
    </ul>
    <ul class="navbar-nav ml-auto">
    <div class="right-menu">
<!--user------------------------------------------------------------------------------------------>
<p><a href="login.php" style="color: red;">Logout</a></p>
        <li class="nav-item">
            <a class="btn btn-outline-success" href="cart.php">My Cart<i class="fas fa-shopping-cart"></i></a>
        </li>

    </ul>
</nav>

        </div>
        <div class="container">

            <div class="row mt-2 pb-3">
                <?php
                    include 'config.php';
                    $stmt = $conn->prepare("SELECT * FROM product_bedroom");
                    $stmt->execute();
                    $result = $stmt->get_result();
                     while($row = $result->fetch_assoc()):
                ?>

                <div class="col-sm-6 col-md-4 col-lg-3 mb-2 display-flex">
                <form action="action.php" class="submit" method="POST">
                    <div class="card-deck">
                        <div class="card p-2 border-secondary mb-2 mt-2" >
                            <img src="<?= $row['product_image']?>" class="card-img-top" height="250">

                            <div class="card-body p-1 m-auto">
                                <h4 class="card-title text-center text-dark"><?= $row['product_name']?></h4>
                                <h5 class="card-text text-center text-info"><?= $row['product_price']?>/-</h5>
                                <h5 class="card-text text-center text-info"><?= $row['product_description']?></h5>
                                </div>
                                <div class="card-footer m-auto p-1">
                                    <input type="hidden" name="product_price" class="pprice"
                                           value="<?= $row['product_price']?>">
                                    <input type="hidden" name="product_name" class="pname" value="<?= $row['product_name']?>">
                                    <input type="hidden" name="product_price" class="pprice" value="<?= $row['product_price']?>">
                                    <input type="hidden" name="product_image" class="pimage" value="<?= $row['product_image']?>">
                                    <button type="submit" name="addtocart" class=" btn btn-info">Add to Cart</button>
                                </div>
                        </div>
                    </div>
                </form>
                </div>
                <?php endwhile; ?>
            </div>
        </div>

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
/*-login-signup-form-----------------------------------------------------------------------------*/
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
/*--full-slider-script---------------------------------------------------------------------------*/
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
/*--Feature-slider-------------------------------------------------------------------------------*/
        $(document).ready(function(){
            $('#autoWidth').lightSlider({
                autoWidth:true,
                loop:true,
                onSliderLoad: function(){
                    $('#autoWidth').removeClass('cs-hidden');
                }
            });
        });

/*--for-fix-menu-when-scroll---------------------------------------------------------------------*/
        $(window).scroll(function(){
            if($(document).scrollTop() > 50){
                $('.navigation').addClass('fix-nav');
            }
            else{
                $('.navigation').removeClass('fix-nav');
            }
        });
/*--for-responsive-menu--------------------------------------------------------------------------*/
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
        };
        $pname = <?= $row['product_name']?>;
        $pprice = <?= $row['product_price']?>;



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
          success: function(response) {
          $("#message").html(response);
          window.scrollTo(0, 0);
          load_cart_item_number();
        }
    });
    $(document).ready(function){
        $("#placeOrder").submit(function(e){
            e.preventDefault()
            $.ajax({
                url: 'action.php',
                method: 'post',
                data: $('form').serialize()+"&action=order",
                success: function(response){
                    $("#order").html(response);
                }
            });
        });   

    load_cart_item_number();


        function load_cart_item_number(){
            $.ajax({
                url: 'manage_cart.php';
                method: 'get';
                data: {cartItem: "cart_item"},
                success: function(response){
                    $("#cart-item").html(response);
                }
            });
        }
        </script>
</body>
</html>
