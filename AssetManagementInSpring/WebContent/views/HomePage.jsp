<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<title>Insert title here</title>


<style>
body
{
background-color: gray;
}
.banner
{
    background-color:black;
    color:white;
    padding: 20px;
    text-align: center;
}
.footer{
 background-color:black;
 color:white;
 margin-top:400px;
    padding: 20px;
    text-align: center;
}
.dropbtn {
    background-color: rgb(153,204,255);
    color: black;
    padding: 16px;
    font-size: 16px;
    border: none;
    cursor: pointer;
    text-align:center;
 
}

.dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 100px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
} 
.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

.dropdown-content a:hover {
	background-color: rgb(204,229,255);
	}

.dropdown:hover .dropdown-content {
    display: block;
}

.dropdown:hover .dropbtn {
    background-color: rgb(102,178,255);
}  
#header{
font-size:xx-large;
font-family:Georgia ;
font-weight: bold;
}
</style>
</head>
<body>

<div class="banner">
<p id="header">Asset Request Form</p> <p align = "right">Welcome <br/>${sessionScope.username}<br/><a href="logout.asset">LogOut</a></p>
</div>

    
<a href="raiseRequest.asset">Raise Request</a>
<div class="dropdown">

		<button class="dropbtn">View Request</button>
	  	<div class="dropdown-content">
    <c:forEach var="allocId" items ="${allocId}">
     <a href="viewStatus.asset?allocationId=${allocId.allocationId}"><c:out value=" ${allocId.allocationId}"></c:out><br></a>
    </c:forEach>
    </div>
    </div>

<div class="footer">
<span>&copy;All rights reserved</span>
</div>
</body>
</html>