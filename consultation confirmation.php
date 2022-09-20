
<!DOCTYPE html>
<html>
    <head>
    <link rel="stylesheet" href="style.css">
    <script src="js/JQuery.js"></script>
    <script src="js/lightslider.js" type="text/javascript"></script>
    <link rel="shortcut icon" href="miscellaneous/Untitled-3.png"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://kit.fontawesome.com/c8e4d183c2.js" crossorigin="anonymous"></script>
    </head>
    <body class="main">
        <div class="conbox">
            
            <strong>
                <font face= "italic">
                With the help of our expert advisors, you can get solutons to design a high-end lifestyle home.
            </font>
            </strong>
            <p>RS. 499.00</p>
            <p>Do you want to continue?</p>
            <form action="payment-1.php">
            <div class="form-group">
                  <input type="submit" name="submit" value="Proceed to Payment" class="btn btn-danger btn-block">
                </div>
           </form> 
           <form action="index.php">
            <div class="form-group">
                  <input type="submit" name="submit" value="Cancel" class="btn btn-danger btn-block">
                </div>
           </form> 
       
            <script src="js/JQuery.js">
            </script>
            <script type="text/javascript">
                $(document).on('click', ".productviewbtn", function(){
                    $(".product-view").addClass('.productviewbox');
                });
                $(document).on('click', '.productviewbox-closebtn', function(){
                    $('.productviewbox').removeClass('.productviewbox')
                })
                var btn = document.getElementById('btn');
                var btn = document.getElementById('span');
                let count =0;
                function cot(){
                    count += 1;
                    document.getElementById('span').innerHTML=count;
                    console.log(count);
                }
            </script>
        </div>
    </body>
</html>

