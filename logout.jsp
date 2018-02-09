<%
session.invalidate();

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script>
            function clear()
            {
                window.history.forward();
                window.setTimeout("window.location.href='../login.jsp'",500);      
            }
        </script>>
    </head>
    <body onload="clear()">
        
    </body>
</html>
