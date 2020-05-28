<!-- directive -->
<%@ page language="java" contentType="text/html"%>
<%@ page import="java.text.*,java.util.* ,java.lang.*" %>

<!-- declaration tag  -->
<%! String x ="Error in input";  %>   

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Series </title>
</head>

<body style="background-color: bisque;">

<center>
  <table border=1 bgcolor=white width="25%"> 
  <caption> <h2>Series</h2>
  </caption>
  <tr align="center">
  <!--  scriptlet tag   --> 
   <%     
   try{
   int sum = 0;
   int n = Integer.parseInt(request.getParameter("value"));
   for(int i=1;i<=n;i++){   
       sum+=i;       
  %>
<!--  expression tag   -->
     <td> <%=i %></td>
<% } %>
<td bgcolor="yellow"><%=sum%> </td>
<% } catch(Exception e){ %>
  <td align="center" bgcolor="yellow"> <%=e%>  </td>
  <% } %>
</tr>
   
</table>
<br><br><br><br>
<a href="index.html"> Back </a>
    
     </center>
</body>

</html>