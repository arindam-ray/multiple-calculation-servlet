<!-- directive -->
<%@ page language="java" contentType="text/html"%>
<%@ page import="java.text.*,java.util.* ,java.lang.*" %>

<!-- declaration tag  -->
<%! String x ="Error in input";    %>   

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sum</title>
</head>

<body style="background-color: bisque;">

<center>
  <table border=1 bgcolor=white width="25%"> 
  <caption> <h2> Addition</h2>
  </caption>
  <tr>
  <!--  scriptlet tag   --> 
   <%     
   try{
   int a = Integer.parseInt(request.getParameter("val1"));
   int b = Integer.parseInt(request.getParameter("val2"));
   int c = a + b ;      
  %>
<!--  expression tag   -->
     <td align="center"> <%=a +" and " + b + " is "+c %></td>
<%
}
catch(Exception e)
{
  %>
  <td align="center"> <%=e%>  </td>
  <%
}
%>
</tr>
      
     </table>

<br><br><br><br>
<a href="index.html"> Back </a>






     
     </center>
</body>

</html>