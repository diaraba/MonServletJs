<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>Se connecter</h1>
<form method="post" action="monservlet2">
<table>
<tr>
<td>
 <input type="text" name="pseudo" id="pseudo" placeholder="pseudo"/>
   </td>
    </tr>
    <tr>
   <td>
    <input type="password" name="pass" id="pass" placeholder="pass"/>
    </td>
     </tr>
    <tr>
    <td>
    <input type="submit" value="Se connecter">
    </td>
    </tr>
    <tr>
    <td><a href="Inscrire.jsp">S'inscrire</a></td>
    </tr>
</table>

   
</form>
<style>
body 
{    margin: -93px;
    padding: 177px;
    background: lightBlue;
    position: relative;
    box-shadow: -11px 16px 11px rgb(30 17 83 / 18%);
    width: fit-content;
    margin-left: 375px;
    border-radius: 28px;
}
input 
{
    border-radius: 8px;
    margin: 20px;
}
h1
 {
    margin-left: 21px;
}
input[type="submit"] {
    margin-left: 59px;
    margin-top: -9px;
}
a
{
margin-left:78px;
}
</style>



</body>
</html>