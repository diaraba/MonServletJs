<%@page import="java.util.List"%>
<%@page import="org.servlet.did.Utilisateur"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<% if (request.getAttribute("nom")!=null) { %>
	<p>Bienvenu <%= request.getAttribute("nom")  %></p>
<%} %>
<% if (request.getAttribute("email")==null) { %>
	<p>Bienvenu <%= request.getAttribute("pseudo")  %></p>
<%} %>

 <div>
 <table>
 	<div class="liste"><h2>Listes des Users</h2></div>
 	<thead>
 		<tr>
 			<td>Nom</td>
 			<td>Prenom</td>
 			<td>Email</td>
 		</tr>
 	</thead>
 	
 	<tbody>
 		<%
 		List<Utilisateur> liste = (ArrayList<Utilisateur>) session.getAttribute("liste");
 		for(Utilisateur user : liste){
 		%>
 			<tr>
 				<td><%out.print(user.getNom());%></td>
 				<td><%out.print(user.getPrenom());%></td>
 				<td><%out.print(user.getEmail());%></td>
 			</tr>
 		<%} %>
 	</tbody>
 </table>
 </div>
 </div>


<form method="post" action="monservlet2">
<input type="submit" value="Déconnecter">

</form>
<style>
body {
    background: lightgoldenrodyellow;
    
}
div
 {
    display: flex;
    flex-direction: column;
    margin: 0px;
    margin-left: 350px;
    margin-top: 50px;
}
.liste
{
margin-left:100px;
}
.bienvenu
{
font-weight: inherit;
}
form 
{
    margin-left:500px;
    margin-top: 100PX;
}
</style>
</body>
</html>