
<%@page import="MyPackage.DatabaseManager"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%
    String capcode=request.getParameter("capcode");
    String captchacode=request.getParameter("captchacode");
    if(capcode.equals(captchacode)==true)
    {
//Process the Request
    String customer_name = request.getParameter("customer_name");
    String gender = request.getParameter("gender");
    String address = request.getParameter("address");
    Long contactno = Long.parseLong(request.getParameter("contactno"));
    String emailaddress = request.getParameter("emailaddress");
    String occupation = request.getParameter("occupation");
    String nationality = request.getParameter("nationality");
    String username = request.getParameter("username");
    String passwd = request.getParameter("passwd");
    SimpleDateFormat df = new SimpleDateFormat("dd/MM/yyyy");
    String registration_dt = df.format(new Date());
    String usertype = "customer";
    String status = "no";
    
    DatabaseManager dm = new DatabaseManager();
    String query1 = "insert into customer_registration values('" + customer_name + "','" + gender + "','" + address + "'," + contactno + ",'" + emailaddress + "','" + occupation + "','" + nationality + "','" + username + "','" + passwd + "','" + registration_dt + "')";
    String query2 = "insert into login values('" + username + "','" + passwd + "','" + usertype + "','" + status + "')";
    if (dm.executeNonQuery(query1) == true) {
        if (dm.executeNonQuery(query2) == true) {
            out.print("<script>alert('Registration is Successfull');window.location.href='../customerregistration.jsp'</script>");
           
        } else {
            out.println("Registration is done but login details are not saved");
        }
    } else {
        out.println("Database Error");
    }
    }
    else
    {
        out.print("<script>alert('Invalid Captcha....');window.location.href='../customerregistration.jsp'</script>");
        
    }
    
%>
