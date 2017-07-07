<%@ page language="java" import="java.sql.*"%>

<html>
     <head>
		<link rel="stylesheet" type="text/css" href="css.css">	
	</head>	
        <body background="images/1.jpg">
        <%
          
          
           String email=request.getParameter("mail");
           String fname=request.getParameter("fname");
           String cname=request.getParameter("cname");
           String cnumber=request.getParameter("cnumber");
           String ename=request.getParameter("ename");
           String enumber=request.getParameter("enumber");
           String cvnumber=request.getParameter("cvnumber");
           
     
           
    
     try
           {
               Class.forName("com.mysql.jdbc.Driver");
               Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3307/ajax","root","");
               Statement s=c.createStatement();
               int r=s.executeUpdate("insert into ecregister values('"+email+"','"+fname+"','"+cname+"','"+cnumber+"','"+ename+"','"+enumber+"','"+cvnumber+"')");
              
               if(r>0)
               {
                  // response.sendRedirect("index1.html");
                   %>
    
                  
                    <br>
                   <br>
                   <br><br><center> <h2><font color="white">REGISTER SUCCESSFULLY</h2><br></center>
    <br><br>  <center><h2> <a href="index.html">OK</a></h2></center>
                      
       
                       
                     
                      <%
                      }
           }
           catch(Exception e)
           {
               out.print(e);
           }
        %>   
</body>
</html>