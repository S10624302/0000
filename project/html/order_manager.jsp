<%@page contentType="text/html; charset=utf-8" language="java"%>
<%@page pageEncoding="utf-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>瀏覽訂單</title>
	<link rel="stylesheet" type="text/css" href="../css/index.css">
	
</head>

<body background="../img/125.jpg" style="background-repeat:no-repeat;background-attachment:fixed;background-position:center center;background-size: cover">

<header>
	<center><a href="index.jsp"><img src="../img/logo.jpg" class="hd_img"></a></center>
</header>

<nav>
            <ul class="flex-nav">
                <li><a href="index.jsp">首頁HOME</a></li>
                <li><a href="vip.jsp">團隊簡介</a></li>
                <li><a href="ranking.jsp">排行榜</a></li>
                <li><a href="car.jsp">購物車</a></li>
				<%
				
				   if(session.getAttribute("username")!=null)
				   {
					   if(session.getAttribute("username").equals("yy"))
					   {
						   out.println("<li><a href='administrator_out.jsp'>管理員登出</a></li>");
						   out.println("<li><a href='administrator.jsp'>管理員專區</a></li>");

					   }
					   else
					   {
						   out.println("<li><a href='vip_out.jsp'>會員登出</a></li>");
						   out.println("<li><a href='user.jsp'>會員專區</a></li>");
					   }
				   }
				   else
				   {
						out.println("<li><a href='vip_in.jsp'>會員登入</a></li>");
						out.println("<li><a href='user.jsp'>會員專區</a></li>");
						out.println("<li><a href='administrator_in.jsp'>管理員登入</a></li>");
				   }   
				%>
				<li><a href="search.jsp">商品搜尋</a></li>
            </ul>
</nav>

<div class="content2">
<br><center>
		<a href="new_product.jsp"><input type="button" value="新增商品" class="btn3"></a>
        <a href="change_product.jsp"><input type="button" value="修改商品" class="btn3"></a>
		<a href="delete_product.jsp"><input type="button" value="刪除商品" 	class="btn3"></a>
		<a href="on_product.jsp"><input type="button" value="上架商品" class="btn3"></a>
		<a href="down_product.jsp"><input type="button" value="下架商品" class="btn3"></a>
		<a href="order_manager.jsp"><input type="button" value="瀏覽訂單" class="btn3"></a>
		<a href="member_manager.jsp"><input type="button" value="會員名單" class="btn3"></a>
	</center>
<%
try{
     Class.forName("com.mysql.jdbc.Driver");
	 try{
         String url="jdbc:mysql://localhost/";
         Connection con=DriverManager.getConnection(url,"root","1234");
		 if(con.isClosed())
			 out.print("連線建立失敗");
		 else
		  {
	         con.createStatement().execute("use jsp_project");
			 String sql="SELECT * FROM order_form ";
			 ResultSet rs=con.createStatement().executeQuery(sql);
			 if(session.getAttribute("username")==null)
					out.println("<br><br><br><div style='text-align:center;'><h1>您尚未登入， <a href='vip_in.jsp'>按此</a>進入登入頁面</h1></div>");
			 else 
			 {
				%> 
				<center><font size="6" color="#4876FF"><b>【瀏覽訂單】</font></center>		
				 <br><center><table style="border:5px #4876FF groove" cellpadding="10" border='1' align="center" width="90%"></center>
				 <tr align="center">
				  <td width="70"><b><font size="4" color="#104E8B">訂單編號</td>
				  <td width="70"><b><font size="4" color="#104E8B">買家帳號</td>
				  <td width="100"><b><font size="4" color="#104E8B">購買商品</td>
				  <td width="60"><b><font size="4" color="#104E8B">總金額</td>
				  <td width="100"><b><font size="4" color="#104E8B">付款方式</td>
				  <td width="100"><b><font size="4" color="#104E8B">配送方式</td>
				  <td width="90"><b><font size="4" color="#104E8B">優惠方案</td>
				  <td width="100"><b><font size="4" color="#104E8B">收件者</td>
				  <td width="100"><b><font size="4" color="#104E8B">收件地址</td>
				  <td width="100"><b><font size="4" color="#104E8B">電話</td>
				  <td width="100"><b><font size="4" color="#104E8B">Email</td>
				  <td width="80"><b><font size="4" color="#104E8B">時間</td>
				 </tr> 
				  
				  <%
				  while(rs.next())
				  {%>
					 <tr>
					 <td align="center"><%=rs.getString(1)%></td> 
					 <td align="center"><%=rs.getString(2)%></td>
					 <td><%=rs.getString(3)%></td>
					 <td align="center"><%=rs.getString(4)%></td>
					 <td align="center"><%=rs.getString(5)%></td>
					 <td align="center"><%=rs.getString(6)%></td>
					 <td align="center"><%=rs.getString(7)%></td>
					 <td align="center"><%=rs.getString(8)%></td>
					 <td align="center"><%=rs.getString(9)%></td>
					 <td align="center"><%=rs.getString(10)%></td>
					 <td align="center"><%=rs.getString(11)%></td>
					 <td align="center"><%=rs.getString(12)%></td>
					 </tr>
					 			
				  <%}%>

				 </table></b><br>

                <%
			 }
		   }
		   con.close();
		 }
		 
	 
	catch(SQLException sExec)
	{
        out.println("SQL錯誤"+sExec.toString());
	}
}
catch(ClassNotFoundException err)
{
   out.println("class錯誤"+err.toString());
}   

%>
</div>

<div class="in_br"><span></span></div>
<footer>
	<div class="foot_left">
      <center><img src="../img/76.jpg" width="400" height="300"></center>
    </div>

    <div class="foot_right">
      <ul>
      	<b><font color="white">Play Store 遊戲銷售</b><br>
      	<br><a href="tel:09-11111111" style="text-decoration:none;color:white;">連絡電話: 09-11111111</a>
        <br><a href="https://is.gd/On7jTs" style="text-decoration:none;color:white;">地址: 桃園市中壢區中北路200號</a>
		<br><a href="mailto:PlayStore@email.com" style="text-decoration:none;color:white;">信箱: PlayStore@email.com</a>
      </ul>
	</div>
 	<div class="foot_center">
      <p>Copyright© Play Store 遊戲銷售,2019
    </div>
</footer>
</body>
</html>