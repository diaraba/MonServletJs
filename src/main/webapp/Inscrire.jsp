<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<% if (request.getAttribute("error")!=null) { %>
	<%= request.getAttribute("error")  %>
<%} %>
<form method="post" action="Monservlet">
<table>
 
   <tr>
    <td>
    <input type="text" name="nom" id="nom" placeholder="Nom" />
      </td>
   </tr>



  <tr>
   <td>
       <input type="text" name="prenom" id="prénom"  placeholder="Prénom"/>
   </td>
  </tr>


   <tr>
    <td>
    <input type="text" name="pseudo" id="pseudo" placeholder="Pseudo" />
    </td>
  </tr> 
  
   <tr>
    <td>
    <input type="email" name="email" id="email" placeholder="Email"/>
     </td>
  </tr>
  <tr>
   <td>
   <input type="password" name="pass" id="pass" placeholder="Mot de passe" />
    </td>
  </tr>
  
  <tr>
   <td> 
  <input type="password" name="pass1" id="pass1" placeholder="Répéter le mot de passe" />
    </td>
  </tr>
  <tr class="div">
    <td>
    <input type="submit" value="S'inscrire"/>
    </td>
    <td>
    <input class="reset" type="reset" value="Annuler"/>
    </td>
   </tr>
  </table>

  


</form>



<style>
*
{
	padding: 10px;
	margin: 0;
}
body {
    margin: 20px;
    padding: 20px;
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
}
input[type="submit"] {  
    margin-right: 194px;
    margin-top: 67PX;
    margin-left: -7px;
}
input.reset {
    margin-top: 67px;
    margin-left: -153px;
}
.div 
{
    margin-left: 189px;
}
p 
{
    margin-left: 200px;
}

table
 {
    margin-left: 78px;
    padding: 46px;
}
.error
{
margin-left:100px;
}
</style>



</body>
</html>