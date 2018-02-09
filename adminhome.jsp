<%-- 
    Document   : userhome
    Created on : AUG 28, 2017, 6:29:22 PM
    Author     : admin
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="MyPackage.DatabaseManager"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Zone</title>
        <link href="admincss/adminstyle.css" rel="stylesheet" type="text/css"/>
         <link href="admincss/adminmenu.css" rel="stylesheet" type="text/css"/>
         
    </head>
    <body>
         
        
             <%
                if(session.getAttribute("adminid")=="" || session.getAttribute("adminid")==null)
                    response.sendRedirect("../login.jsp");
                else
                {
            %>
            <form>
            <div id="wrapper">
                <div id="header">
                    <div id="logo">
                        <img src="../images/director.jpeg" width="150" height="150"/>
                    </div>
                    <div id="sitetitle">Customer Relationship Management</div>
                </div>
               
                <div id="menu">
                    <ul>
                        <li title="Admin Home"><a href="adminhome.jsp">Home</a></li>
                        <li title="FeedBack Management"><a href="feedbackmanagement.jsp">FeedBack</a></li>
                        <li title="Complaint Management"><a href="complainmanagement.jsp">Complain</a></li>
                        <li title="Upload File"><a href="uploadproduct.jsp">Upload</a></li>
                        <li title="Review Management"><a href="reviewmanagement.jsp">Review</a></li>
                        <li title="Enquiry Management"><a href="enquirymanagement.jsp">Enquiry</a></li>
                         <li title="Change Password"><a href="#">Change Passwd</a></li>
                          <li title="Logout of Current Session"><a href="logout.jsp">Logout</a></li>
                    </ul>
                </div>
                <div id="contain2"></div>
                <div id="footer">
                    <div class="subfooter">
                        Copyright&copy; to WonderWorld
                    </div>
                    <div class="subfooter">
                        Developed By: Prashant Singh
                    </div>
                </div>
            </div>
            <%
                }
            %>
        </form>
               
    </body>
</html>
