<%@page import="MyPackage.DatabaseManager"%>
<%
    String fid=request.getParameter("fid");
    DatabaseManager db=new DatabaseManager();
    String q="delete from review where id='"+fid+"'";
    String msg=(db.executeNonQuery(q)==true)?"Review is deleted":"Review is not deleted";
%>
<script>
    alert('<%=msg%>');
    window.location.href="../reviewmanagement.jsp";
</script>