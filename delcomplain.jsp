<%@page import="MyPackage.DatabaseManager"%>
<%
    String fid=request.getParameter("fid");
    DatabaseManager db=new DatabaseManager();
    String q="delete from complain where id='"+fid+"'";
    String msg=(db.executeNonQuery(q)==true)?"Complain is deleted":"Complain is not deleted";
%>
<script>
    alert('<%=msg%>');
    window.location.href="../complainmanagement.jsp";
</script>