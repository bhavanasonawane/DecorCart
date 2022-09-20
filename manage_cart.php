<?php
 session_start();
 
include 'config.php';

 if($_SERVER['REQUEST_METHOD']=="POST")
    {
        if(isset($_POST['addtocart']))
        {
            $stmt = $conn->prepare("SELECT product_name FROM cart WHERE product_name=?");
            $stmt->bind_param("s",$pname);
            $stmt->execute();
            $res = $stmt->get_result();
            $r = $res->fetch_assoc();
            

            if (!$r) {
                $query = $conn->prepare("INSERT INTO cart(product_name,product_price,product_image,qty,total_price) VALUES (?,?,?,?,?)");
                $query->bind_param("sssis",$pname,$pprice,$pimage,$pqty,$pprice);
                $query->execute();
        
                  echo"<script>
                      alert('Item added');
                      window.location.href='index.php';
                      </script>";
              }
        }
        else {
                 
        
        
            echo"<script>
                      alert('Item Already Added!');
                      window.location.href='index.php';
                      </script>";
        }
            if(isset($_GET['cartItem'])&& isset($_GET['cartItem'])=='cart-item'){
                $stmt = $conn->prepare("SELECT * FROM cart");
                $stmt->execute();
                $stmt->store_result();
                $rows = $stmt->num_rows;
        
                echo $rows;
            }
            
            if(isset($_GET['remove'])){
                $pname = $_GET['remove'];
        
                $stmt = $conn->prepare("DELETE FROM cart WHERE product_name=?");
                $stmt->bind_param("s", $pname);
                $stmt->execute();
                $_SESSION['showAlert'] = 'block';
                $_SESSION['message'] = 'Item removed from the cart!';
                header('location:cart.php');
            }
        
            if(isset($_GET['clear'])){
                $stmt = $conn->prepare("DELETE FROM cart");
                $stmt->execute();
                $_SESSION['showAlert'] = 'block';
                $_SESSION['message'] = 'Item removed from the cart!';
                header('location:cart.php');
            }
        
            if(isset($_POST['qty'])){
                $qty = $_POST['qty'];
                $pname = $_POST['pname'];
                $pprice = $_POST['pprice'];
                $qty = (int) $r['qty'] + $pqty;
                $total_price = (int) $r['total_price'] + $pprice;
                
                $sql  = "UPDATE cart SET qty = '$qty',total_price = '$total_price' WHERE product_name = '$pname'";
                $stmt = $conn->prepare("UPDATE cart SET qty='$qty', total_price='$total_price' WHERE product_name='$pname'");
                $stmt->bind_param("iss", $qty, $total_price, $pname);
                $stmt->execute();
            }
        
            if(isset($_POST['action']) && isset($_POST['action']) == 'orders'){
                $username = $_POST['username'];
                $email = $_POST['email'];
                $phone = $_POST['phone'];
                $products = $_POST['products'];
                $grand_total = $_POST['grand_total'];
                $address = $_POST['address'];
                $pmode = $_POST['pmode'];
        
                $data = '';
                     if($_POST['value']=='cash'){
                $stmt = $conn->prepare("INSERT INTO orders (username, email, phone, address, pmode, products, amount_paid) VALUES(?,?,?,?,?,?,?)");
                $stmt->bind_param("sssssss",$username,$email,$phone,$address,$pmode,$products,$grand_total);
                $stmt->execute();
                $data = '<div class="text-center">
                            <h1 class="display-4 mt-2 text-danger">Thank You!</h1>
                            <h2 class="text-success">Your order has been placed successfully!</h2>
                            <h4 class="bg-danger text-light rounded p-2">Items Purchased : '.$products.'</h4>
                            <h4>Your Name: '.$username.'</h4>
                            <h4>Your Email: '.$email.'</h4>
                            <h4>Your Phone: '.$phone.'</h4>
                            <h4>TotalAmount Paid: 'RS. .number_format($grand_total,2).'</h4>
                            <h4>Payment Mode: '.$pmode.'</h4>
                          </div>';
                          echo $data;
            }
            else{};}
            ?>
        