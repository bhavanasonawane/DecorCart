<?php
session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE-EDGE">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Cart</title>
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
    </ul>
    <ul class="navbar-nav ml-auto">
    <div class="right-menu">
<!--user------------------------------------------------------------------------------------------>  
                    <a href="javascript:void(0);" class="user">
                        <i class="fas fa-user-edit">
                        </i>
                    </a>
                    
<!--cart-icon------------------------------------------------------------------------------------->  
                </div>    
        <li class="nav-item">
            <a class="btn btn-outline-success" href="cart.php">My Cart<i class="fas fa-shopping-cart"></i></a>
        </li>
        
    </ul>
</nav>
<div class="form">
<!--login----------------------------------------------------------------------------------------->
            <div class="login-form">
<!--cancel-btn------------------------------------------------------------------------------------>
                <a href="javascript:void(0);" class="form-cancel">
                    <i class="fas fa-times">
                    </i>
                </a>
<!--heading--------------------------------------------------------------------------------------->
                <strong>
                    Log In
                </strong>
<!--inputs---------------------------------------------------------------------------------------->
                <form>
                    <input type="email" placeholder="Example@example.com" name="email">
                    <input type="password" placeholder="Password" name="password">
<!--submit-btn------------------------------------------------------------------------------------>
                    <input type="submit" value="Log In">
                </form>
<!--forget-and-sign-up-btn------------------------------------------------------------------------>
                <div class="form-btns">
                    <a href="javascript:void(0);" class="sign-up-btn">
                        Create Account
                    </a>
                </div>
            </div>    
<!---Sign-up-------------------------------------------------------------------------------------->
            <div class="signup-form">
<!---cancel-btn----------------------------------------------------------------------------------->
                <a href="javascript:void(0);" class="form-cancel">
                    <i class="fas fa-times">
                    </i>
                </a>
<!---heading-------------------------------------------------------------------------------------->
                <strong>
                    Sign Up
                </strong>
<!--inputs---------------------------------------------------------------------------------------->
                <form>
                    <input type="text" placeholder="Full Name" name="fullname" required>
                    <input type="email" placeholder="Example@example.com" name="email" required>
                    <input type="password" placeholder="Password" name="password" required>
<!--submit-btn------------------------------------------------------------------------------------>
                    <input type="submit" value="Sign Up">
                </form>
<!--forget-and-sign-up-btn------------------------------------------------------------------------>
                <div class="form-btns">
                    <a href="javascript:void(0);" class="already-account">
                        Existing User? 
                    </a>
                </div>    
            </div>   
        </div>
       <div class="container">
           <div class="row justify-content-center">
               <div class="col-lg-10">
                   <div class="table-responsive mt-2">
                       <table class="table table-bordered table-striped text-center">
                          <thead>
                          <tr>
                               <td colspan="7">
                                   <h4 class="text-center text-info m-0">Products in your cart</h4>
                               </td>
                           </tr>
                           <tr>
                              
                               <th>Name</th>
                               <th>Image</th>
                               <th>Price</th>
                               <th>Quantity</th>
                               <th>Total Price</th>
                               <th>
                                   <a href="action.php?clear=all" class="badge-danger badge p-2" onclick="return confirm('Are you sure?');"><i class="fas fa-trash"></i>&nbsp;&nbsp; Clear Cart</a>
                               </th>
                           </tr>
                          </thead>
                          <tbody>
                              <?php
                                require 'config.php';
                                $stmt = $conn->prepare("SELECT * FROM cart");
                                $stmt->execute();
                                $result = $stmt->get_result();
                                $grand_total = 0;
                                while($row = $result->fetch_assoc()):
                              ?>
                              <tr>
                              

                                  <td><?= $row['product_name']?></td>
                                  <input type="hidden" class="pname" value="<?= $row['product_name']?>">
                                  <td><img src="<?= $row['product_image']?>" width="50"></td>

                                  <td>RS. <?= number_format($row['product_price'],2);?></td>
                                  <input type="hidden" class="pprice" value="<?= $row['product_price']?>">
                                  <td><input type="number" class="  text-center itemQty" value="<?= $row['qty']?>" style="width:50px;"></td>
                                  <td>RS. <?= number_format($row['total_price'],2);?></td>
                                  <td>
                                      <a href="action.php?remove=<?= $row['product_name']?>" class="text-danger lead" onclick="return confirm('Are you sure?');"><i class="fas fa-trash-alt"></i></a>
                                  </td>
                              </tr>
                              <?php $grand_total += $row['total_price']; ?>
                              <?php endwhile;?>
                              <tr>
                                  <td colspan="2">
                                      <a href="index.php" class="btn btn-success">Continue Shopping <i class="fas fa-arrow-right"></i></a>
                                  </td>
                                  <td colspan="2"><b>Grand Total</b></td>
                                  <td><b>RS. <?= number_format($grand_total,2);?></b></td>
                                  <td>
                                      <a href="checkout.php" class="btn btn-info <?= ($grand_total>1)?"":"disabled"; ?>"><i class="far fa-credit-card"></i>&nbsp; Checkout</a>
                                  </td>
                              </tr>
                          </tbody>
                       </table>
                   </div>
               </div>
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
            });

            $(".itemQty").on('change', function(){
                var $el = $(this).closest('tr');
                var pname  = $el.find(".pname").val();
                var pprice  = $el.find(".pprice").val();
                var qty  = $el.find(".itemQty").val();
               

                $.ajax({
                    url: 'action.php',
                    method: 'post',
                    cache: false,
                    data: {pname:pname, qty:qty, pprice:pprice},
                    success: function(response){
                        console.log(response);
                    }
                });
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
        });
    
            
        
        </script>  
</body>
</html>