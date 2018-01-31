<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link type="text/css"
    href="css/ui-lightness/jquery-ui-1.8.18.custom.css" rel="stylesheet" />
<script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="js/jquery-ui-1.8.18.custom.min.js"></script>
<title>Add new user</title>
</head>
<body>
    <script>
        $(function() {
            $('input[name=dob]').datepicker();
        });
    </script>

    <form method="POST" action='UserController' name="frmAddUser">
            <div class="form-group">
                    <label for="usr"> User ID : </label> <br /> 
                    <input type="text" readonly="readonly" name="userid"
            value="<c:out value="${user.userid}" />" />
        </div>
            <div class="form-group">
                    <label for="usr"> First Name :</label> <br />
        <input type="text" name="firstName"
            value="<c:out value="${user.firstName}" />" /> 
        </div>
        <div class="form-group">
                <label for="usr">Last Name :</label>
                <br /> <input
            type="text" name="lastName" 
            value="<c:out value="${user.lastName}" />" />  
        </div>
        <div class="form-group">
                <label for="usr"> DOB : </label> <br />
                <input type="text" name="dob"
            value="<fmt:formatDate pattern="MM/dd/yyyy" value="${user.dob}" />" />  
        </div>
        <div class="form-group">
                <label for="usr"> Email : </label><br />
                 <input type="email" name="email"
            value="<c:out value="${user.email}" />" /> <br /> 
            <input type="submit" value="Submit" />
        </div>
    
    </form>
</body>
</html>
