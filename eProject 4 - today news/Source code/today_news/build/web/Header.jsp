<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Today News</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" type="text/css" href="style.css" />
<!--[if lte IE 6]>
<link rel="stylesheet" type="text/css" href="ie.css" />
<script type="text/javascript" src="unitpngfix.js"></script>
<![endif]-->


</head>
<body>
<!-- BEGIN wrapper -->
<div id="wrapper">
  <!-- BEGIN header -->
  <div id="header">
    <h1><a href="HomeController">Today News</a></h1>
    <form action="search">
        <input type="text" name="text" id="s" value="${textsearch}" />
      <button type="submit">Search</button>
    </form>
    <ul>
      <li class="f"><a href="HomeController">Home</a></li>
      <li><a href="about.html">About Us</a></li>
      <li><a href="contact.html">Contact Page</a></li>
    </ul>
  </div>
  <!-- END header -->