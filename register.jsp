<%@ page language="java" import="java.sql.*"%>

<html>
     <head>
		<link rel="stylesheet" type="text/css" href="css.css">	
	</head>	
    <body background="images/1.jpg">
        <%
          
          
           String fname=request.getParameter("firstname");
           String lname=request.getParameter("lastname");
           String email=request.getParameter("height");
           String gender=request.getParameter("gender");
           String cast=request.getParameter("category");
           String exman=request.getParameter("exser");
           String pwd=request.getParameter("epser");
           String cgov=request.getParameter("wsper");
           String father=request.getParameter("father");
           String ph=request.getParameter("health");
           String syear=request.getParameter("service");
           String smonth=request.getParameter("smonth");
           String dob=request.getParameter("birth-date");
           String address=request.getParameter("address");
           String city=request.getParameter("cname");
           String state=request.getParameter("sname");
           String pincode=request.getParameter("pincode");
           String telephone=request.getParameter("telephone");
           String station=request.getParameter("station");
           String center=request.getParameter("center");
           String degree=request.getParameter("degree");
           String branch=request.getParameter("branch");
           String rstatus=request.getParameter("rstatus");
           String iname=request.getParameter("institute");
           String university=request.getParameter("university");
           String ctype=request.getParameter("ctype");
           String score=request.getParameter("score");
           String pmonth=request.getParameter("pmonth");
           String pyear=request.getParameter("pyear");
           String classo=request.getParameter("class");
           String rank=request.getParameter("rank");
           String duration=request.getParameter("duration");
           String mark1=request.getParameter("marks1_10");
           String mt1=request.getParameter("marks1_total10");
           String mark2=request.getParameter("marks1_20");  
           String mt2=request.getParameter("marks1_total20");
           String mark3=request.getParameter("marks1_30");
           String mt3=request.getParameter("marks1_total30");
           String mark4=request.getParameter("marks1_40");
           String mt4=request.getParameter("marks1_total40");
           String mark5=request.getParameter("marks1_50");
           String mt5=request.getParameter("marks1_total50");
           String mark6=request.getParameter("marks1_60");
           String mt6=request.getParameter("marks1_total60");
           String mark7=request.getParameter("marks1_70");
           String mt7=request.getParameter("marks1_total70");
           String mark8=request.getParameter("marks1_80");
           String mt8=request.getParameter("marks1_total80");
           String buni=request.getParameter("Univ2");
           String pmonth2=request.getParameter("pmonth2");
           String pyear2=request.getParameter("pyear2");
           String bmark=request.getParameter("bmark");
          
          
     
           
    
     try
           {
               Class.forName("com.mysql.jdbc.Driver");
               Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3307/ajax","root","");
               Statement s=c.createStatement();
               ResultSet rs=s.executeQuery("SELECT regid FROM register");
                int regid=0;
                if(rs.last()){
                    regid=rs.getInt("regid")+1;
                }
               int r=s.executeUpdate("insert into register values('"+fname+"','"+lname+"','"+email+"','"+gender+"','"+cast+"','"+exman+"','"+pwd+"','"+cgov+"','"+father+"','"+ph+"','"+syear+"','"+smonth+"','"+dob+"','"+address+"','"+city+"','"+state+"','"+pincode+"','"+telephone+"','"+station+"','"+center+"','"+degree+"','"+branch+"','"+rstatus+"','"+iname+"','"+university+"','"+ctype+"','"+score+"','"+pmonth+"','"+pyear+"','"+classo+"','"+rank+"','"+duration+"','"+mark1+"','"+mt1+"','"+mark2+"','"+mt2+"','"+mark3+"','"+mt3+"','"+mark4+"','"+mt4+"','"+mark5+"','"+mt5+"','"+mark6+"','"+mt6+"','"+mark7+"','"+mt7+"','"+mark8+"','"+mt8+"','"+buni+"','"+pmonth2+"','"+pyear2+"','"+bmark+"','"+regid+"')");
              
               if(r>0)
               {
                  // response.sendRedirect("index1.html");
                   %>
    
                  
                    <br>
                   <br>
    <br><br><center> <h2><font color="white">REGISTER SUCCESSFULLY</h2><br></center>
    <br><br><center><h2 style="color:white">Your Register Number:<%=regid%></h2></center>
    <br><br>  <center><h2> <a href="card.html">OK</a></h2></center>
                      
                       
                     
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