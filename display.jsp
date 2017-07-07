<!doctype html>
<%@page import="java.sql.*"%>

<html lang="en" >
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700' rel='stylesheet' type='text/css'>

	<link rel="stylesheet" href="style/css/reset.css"> <!-- CSS reset -->
	<link rel="stylesheet" href="style/css/style.css"> <!-- Resource style -->
	<script src="style/js/modernizr.js"></script> <!-- Modernizr -->
  	
	<title>Registration Form</title>
</head>
<body background="style/img/bg.jpg">
    <%
         try
        {
            String name=request.getParameter("search");
            Class.forName("com.mysql.jdbc.Driver");
            Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3307/ajax","root","");
            Statement st=c.createStatement();
            %>

    
	<header class="cd-header">
		<h1>Registration Form</h1>
	</header>

	<div class="cd-pricing-container">
		<ul class="cd-pricing-list">
			<li>
				 <!-- .cd-pricing-header -->

				<div class="cd-pricing-body">
					<ul class="cd-pricing-features">
						
					</ul>
				</div> <!-- .cd-pricing-body -->

				 <!-- .cd-pricing-footer -->
			</li>
			<li class="cd-popular">
				<header class="cd-pricing-header">
					<h2>Register Number</h2>
                                        <%
                ResultSet rs=st.executeQuery("select * from register where regid ='"+name+"'");
                while(rs.next())
                {   
                   
                   %> 


					<div class="cd-price">
					
						<span class="cd-value"><%=rs.getString(53)%></span>
						
					</div>
				</header> <!-- .cd-pricing-header -->

				<div class="cd-pricing-body">
					<ul class="cd-pricing-features">
						<li><em>Full Name : </em> <%=rs.getString(1)%><%=rs.getString(2)%></li>
						<li><em>Gender : </em> <%=rs.getString(4)%></li>
						<li><em>Email : </em> <%=rs.getString(3)%></li>
						<li><em>Category : </em><%=rs.getString(5)%></li>
						<li><em>Are you Ex-Serviceman : </em><%=rs.getString(6)%></li>
						<li><em>Are you a Person<br /> with Disability : </em><%=rs.getString(7)%></li>
                        <li><em>Whether working in Central<br /> Government and have minimum<br /> three years of continuous service : </em><%=rs.getString(8)%></li>
                        <li><em>Father's Name : </em><%=rs.getString(9)%></li>
                        <li><em>Date of Birth : </em><%=rs.getString(13)%></li>
                        <li><em>Address : </em><%=rs.getString(14)%></li>
                        <li><em>City : </em><%=rs.getString(15)%></li>
                        <li><em>Pincode : </em><%=rs.getString(17)%></li>
                        <li><em>State : </em><%=rs.getString(16)%></li>
                        <li><em>Telephone No : </em><%=rs.getString(18)%></li>
                 
                        <li><em>Nearest Railway Station : </em><%=rs.getString(19)%></li>
                        <li><em><u>Educationl Qualifications</u></em></li>
                        <li><em><u>Quaifying Exam</u></em></li>
                        <li><em>Degree : </em><%=rs.getString(21)%></li>
                        <li><em>Branch : </em><%=rs.getString(22)%></li>
                        <li><em>Result Status : </em><%=rs.getString(23)%></li>
                        <li><em>Institute Name : </em><%=rs.getString(24)%></li>
                        <li><em>University : </em><%=rs.getString(25)%></li>
                        <li><em>Course Type : </em><%=rs.getString(26)%></li>
                        <li><em>Marks Type : </em><%=rs.getString(27)%></li>
                        <li><em>Month and Year of Passing : </em><%=rs.getString(28)%><%=rs.getString(29)%></li>
                        <li><em>Class/Division : </em><%=rs.getString(30)%></li>
                        <li><em>Rank : </em><%=rs.getString(31)%></li>
                        <li><em>Full Duration of Course : </em><%=rs.getString(32)%></li>
                        <li><em>CGPA Obtained :<br />(as awarded by<br /> University<br />/Institution) : </em>81 out of 100</li>
                        <li><em><u>Other Exams</u> </em></li>
                        <li><em>Intermediate/10+2/Pre-University<br /><br />/Diploma</em></li>
                        <li><em>Board/University :</em> <%=rs.getString(49)%></li>
                        <li><em>Month and Year of Pass : </em><%=rs.getString(50)%><%=rs.getString(51)%></li>
                        <li><em>Marks (in %) : </em><%=rs.getString(52)%></li>
                        <li><em><u>Matriculation/10th/Higher Secondary</u></em></li>
                         <li><em>Board/University :</em> TAMIL NADU BOARD</li>
                        <li><em>Month and Year of Pass : </em>Mar 2002</li>
                        <li><em>Marks (in %) : </em>84.6</li>
                         <li><em><u>Details of Written Test Center Opted</u></em></li>
                         <li><em>Opted in Registered Application : </em>Chennai</li>


 <%}%>
					</ul>


				</div> <!-- .cd-pricing-body -->

				<footer class="cd-pricing-footer">
					<a class="cd-select" href="index.html">Confirm</a>
				</footer> <!-- .cd-pricing-footer -->
			</li>
            
			<li>
				 <!-- .cd-pricing-header -->

				<div class="cd-pricing-body">
					
				</div> <!-- .cd-pricing-body -->

				  <!-- .cd-pricing-footer -->
			</li>
		</ul> <!-- .cd-pricing-list -->
	</div> <!-- .cd-pricing-container -->
    <p><font color="white">I affirm that information given in this application form is true and correct. I also fully understand

that if at any stage, it is discovered that any attempt has been made by me to willfully conceal or

misrepresent the fact, my candidature may be summarily rejected or my employment may be

terminated.</font></p>
    <%}
 catch(Exception e)
{
out.println(e);
}%>    
  

	 <!-- .cd-pricing-container -->	
<script src="style/js/jquery-2.1.1.js"></script>
<script src="style/js/main.js"></script> <!-- Resource jQuery -->
</body>
</html>