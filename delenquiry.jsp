<%@page import="MyPackage.DatabaseManager"%>
<%
    String fid=request.getParameter("fid");
    DatabaseManager db=new DatabaseManager();
    String q="delete from enquiry where id='"+fid+"'";
    String msg=(db.executeNonQuery(q)==true)?"Enquiry is deleted":"Enquiry is not deleted";
%>
<script>
    alert('<%=msg%>');
    window.location.href="../enquirymanagement.jsp";
</script>