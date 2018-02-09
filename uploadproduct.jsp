<%-- 
    Document   : userhome
    Created on :AUG 28, 2017, 6:29:22 PM
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
        <form action="../uploadcode" method="post" enctype="multipart/form-data">
           
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
                        <li title="Complaint Management"><a href="#">Complain</a></li>
                        <li title="Upload File"><a href="uploadproduct.jsp">Upload</a></li>
                        <li title="Review Management"><a href="reviewmanagement.jsp">Review</a></li>
                        <li title="Enquiry Management"><a href="enquirymanagement.jsp">Enquiry</a></li>
                         <li title="Change Password"><a href="#">Change Passwd</a></li>
                          <li title="Logout of Current Session"><a href="logout.jsp">Logout</a></li>
                    </ul>
                </div>
                <div id="contain2">
                     <center>
                        <h2>Upload Product</h2>
                        <br><br>
                        <table>
                            <tr>
                                <td>Product Name</td>
                                <td><input type="text" name="pname" required=""/></td>
                            </tr>
                            <tr>
                                <td>Description</td>
                                <td><textarea name="pdescription" required=""></textarea></td>
                            </tr>
                            <tr>
                                <td>Enter Price</td>
                                <td><input type="text" name="price"/></td>
                            </tr>
                            <tr>
                                <td>Upload File</td>
                                <td><input type="file" name="filename"/></td>
                            </tr>
                            <tr>
                                <td colspan="2" align="center"><input type="submit" value="Upload"/></td>
                            </tr>
                        </table>
                        <br><br>
                        <table border="1" style="width:800px;">
                            <tr>
                                <th>S.No</th>
                                <th>Product</th>
                                <th>Description</th>
                                <th>Single Price</th>
                                <th>Upload Date</th>
                                <th>Download Product Pic</th>
                                <th>Delete</th>
                            </tr>
                            <%
                               DatabaseManager db=new DatabaseManager();
                               String q="select * from product";
                               ResultSet rs=db.selectQuery(q);
                               int n=1;
                               while(rs.next())
                               {
                            %>
                            <tr>
                                <td><%=n%></td>
                                 <td><%=rs.getString(2)%></td>
                                  <td><%=rs.getString(3)%></td>
                                   <td><%=rs.getString(4)%></td>
                                   <td><%=rs.getString(6)%></td>
                                   <td><img src="<%=request.getContextPath()+"/uploadfile/"+rs.getString(5)%>" style="width:300px;height: 200px;"></td>
                                   <td><a href="admincode/delproduct.jsp?fid=<%=rs.getInt(1)%>">Delete</a></td>               
                            </tr>
                            <%
                            n++;
                               }
                            %>
                            </table>
                    </center>
                </div>
                <div id="footer">
                    <div class="subfooter">
                         Copyright&copy; to WonderWorld
                    </div>
                    <div class="subfooter">
                        Developed By: Prashant Singh
                    </div>
                </div>
            </div>
            
        </form>
               <%}%>
    </body>
</html>
