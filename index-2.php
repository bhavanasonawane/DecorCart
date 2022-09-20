<?php
date_default_timezone_set('Asia/Kolkata');
include('database.inc.php');
?>
<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="utf-8">
      <meta name="robots" content="noindex, nofollow">
    <meta http-equiv="X-UA-Compatible" content="IE-EDGE">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
      <title>Track Order</title>
	<link rel="stylesheet" href="style.css">
	<link rel="shortcut icon" href="miscellaneous/Untitled-3.png"/>
      <meta name="viewport" content="width=device-width, initial-scale=1">
   
    <script src="js/JQuery.js"></script>
    <script src="js/lightslider.js" type="text/javascript"></script>
    <link rel="shortcut icon" href="miscellaneous/Untitled-3.png"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://kit.fontawesome.com/c8e4d183c2.js" crossorigin="anonymous"></script>
      <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	  <link href="style2.css" rel="stylesheet">
      <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
      <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
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


	
      <div>
         <div class="row justify-content-md-center mb-4">
            <div class="col-md-6">
			<h3 class="text-center my-2 mt-5 mb-5"> TRACK ORDER</h3 >
               <!--start code-->
               <div class="card">
                  <div class="card-body messages-box">
					 <ul class="list-unstyled messages-list">
							<?php
							$res=mysqli_query($con,"select * from message");
							if(mysqli_num_rows($res)>0){
								$html='';
								while($row=mysqli_fetch_assoc($res)){
									$message=$row['message'];
									$added_on=$row['added_on'];
									$strtotime=strtotime($added_on);
									$time=date('h:i A',$strtotime);
									$type=$row['type'];
									if($type=='user'){
										$class="messages-me";
										$imgAvatar="user_avatar.png";
										$name="Me";
									}else{
										$class="messages-you";
										$imgAvatar="bot_avatar.png";
										$name="Chatbot";
									}
									}
								echo $html;
							}else{
								?>
								<li class="messages-me clearfix start_chat">
								   Please start
								</li>
								<?php
							}
							?>
                    
                     </ul>
                  </div>
                  <div class="card-header">
                    <div class="input-group">
					   <input id="input-me" type="text" name="messages" class="form-control input-sm" placeholder="Type your message here..." required>
					   <span class="input-group-append">
					   <input type="button" class="btn btn-primary" value="Send" onclick="send_msg()">
					   </span>
					</div> 
                  </div>
               </div>
               <!--end code-->
            </div>
         </div>
      </div>
      <script type="text/javascript">
		 function getCurrentTime(){
			var now = new Date();
			var hh = now.getHours();
			var min = now.getMinutes();
			var ampm = (hh>=12)?'PM':'AM';
			hh = hh%12;
			hh = hh?hh:12;
			hh = hh<10?'0'+hh:hh;
			min = min<10?'0'+min:min;
			var time = hh+":"+min+" "+ampm;
			return time;
		 }
		 function send_msg(){
			jQuery('.start_chat').hide();
			var txt=jQuery('#input-me').val();
			var html='<li class="messages-me clearfix"><span class="message-img"><img src="image/user_avatar.png" class="avatar-sm rounded-circle"></span><div class="message-body clearfix"><div class="message-header"><strong class="messages-title">Me</strong> <small class="time-messages text-muted"><span class="fas fa-time"></span> <span class="minutes">'+getCurrentTime()+'</span></small> </div><p class="messages-p">'+txt+'</p></div></li>';
			jQuery('.messages-list').append(html);
			jQuery('#input-me').val('');
			if(txt){
				jQuery.ajax({
					url:'get_bot_message.php',
					type:'post',
					data:'txt='+txt,
					success:function(result){
						var html='<li class="messages-you clearfix"><span class="message-img"><img src="image/bot_avatar.png" class="avatar-sm rounded-circle"></span><div class="message-body clearfix"><div class="message-header"><strong class="messages-title">Chatbot</strong> <small class="time-messages text-muted"><span class="fas fa-time"></span> <span class="minutes">'+getCurrentTime()+'</span></small> </div><p class="messages-p">'+result+'</p></div></li>';
						jQuery('.messages-list').append(html);
						jQuery('.messages-box').scrollTop(jQuery('.messages-box')[0].scrollHeight);
					}
				});
			}
		 }
      </script>
<form action="index.php">
		
  		<div>
		  <div class="row justify-content-md-center mb-4">
            <div class="col-md-6">
   			 <button>GO TO HOME</button>
				</div></div>
		</div>
	</form>
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
   </body>
</html>