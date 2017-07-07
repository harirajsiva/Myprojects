<%@page import="java.sql.*"%>

<html>
     <head>
		<link rel="stylesheet" type="text/css" href="css.css">	
	</head>	
    <body background="images/1.jpg">
        <%
          
          
           String reg=request.getParameter("reg");
           String center=request.getParameter("center");
          
           
    
     try
           {
              // Class.forName("com.mysql.jdbc.Driver");
               //Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3307/ajax","root","");
               Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3307/ajax","root","");
               Statement s=c.createStatement();
               
                ResultSet rs=s.executeQuery("select * from register where regid='"+reg+"'");
                 while(rs.next())
                 {   
                    
                        PreparedStatement ps3=c.prepareStatement("update register set center='"+center+"' where regid='"+reg+"'");
			
			ps3.executeUpdate();
                
                 %>
                
                    <br>
                   <br>
    <br><br><center><h2> <font color="white">WRITTEN CENTER CHANGED <br><BR>SUCCESSFULLY</h2></center>
      <center> <h2 style="colour:red" ><a href="index.html">OK</a></h2></center>
                      
                       
                     
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