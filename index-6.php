<?php
require('vendor/autoload.php');
$con=mysqli_connect('localhost','root','','the decor cart');
$res=mysqli_query($con,"select * from orders where pmode='cards' limit 1");
$intro.='<img width="170px" height="90px" src="miscellaneous/Untitled-3.png"/>';
$intro.='<p align=right>Contact Us: <br>Phone: 9833045326/ 9833747124 <br>Email-ID: thedecor.cart@gmail.com</p>';
if(mysqli_num_rows($res)>0){
	$html='<p>The Decor Cart</p>';
	$html='<style>table, th, td {justify-content: center; border: 1px solid black;}</style><table><caption><h2>Receipt</h2></caption>';
		$html.='<tr>
			<th align=center>ORDER ID</th>
			<th align=center>Userame</th>
			<th align=center>Email-ID</th>
			<th align=center>Phone Number</th>
			<th align=center>Address</th>
			<th align=center>Payment Mode</th>
			<th align=center>Products</th>
			<th align=center>Price</th>
			</tr>';
		while($row=mysqli_fetch_assoc($res)){
			$html.='<tr>
				<td align=center>'.$row['order_id'].'</td>
				<td align=center>'.$row['username'].'</td>
				<td align=center>'.$row['email'].'</td>
				<td align=center>'.$row['phone'].'</td>
				<td align=center>'.$row['address'].'</td>	
				<td align=center>'.$row['pmode'].'</td>
				<td align=center>'.$row['products'].'</td>
				<td align=center>'.$row['amount_paid'].'</td>
				</tr>';
		}
	$html.='</table>';
}else{
	$html="Data not found";
}
$html.='<h3 align=center><b>THANK YOU<br>VISIT AGAIN</b></h3>';
$mpdf=new \Mpdf\Mpdf();
$mpdf->WriteHTML($intro);
$mpdf->WriteHTML($html);
$file=time().'.pdf';
$mpdf->output($file,'I');
//D
//I
//F
//S
?>