<%@page import="MyPackage.DatabaseManager"%>
<%
    String fid=request.getParameter("fid");
    DatabaseManager db=new DatabaseManager();
    String q="delete from product where pid='"+fid+"'";
    String msg=(db.executeNonQuery(q)==true)?"Product is deleted":"Product is not deleted";
%>
<script>
    alert('<%=msg%>');
    window.location.href="../uploadproduct.jsp";
</script>