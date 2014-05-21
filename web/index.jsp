<%-- 
    Document   : index
    Created on : May 19, 2014, 12:01:39 PM
    Author     : vrodin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Front Page</title>
    </head>
    <body>
        <%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
        
        <h1>Book List</h1>
        <table cellpadding="5" border="1">
            <tr valign="bottom">
                <td align="left"><b>Book Name</b></td>
                <td align="left"><b>Price</b></td>
                <td align="left"></td>
            </tr>
            <tr>
                <td>World War Z</td>
                <td>9.99</td>
                <td><a href="<c:url value='cart?productCode=4000' />">Add To Cart</a></td>
            </tr>
            <tr>
                <td>Metro 2033</td>
                <td>12.99</td>
                <td><a href="<c:url value='cart?productCode=4001' />">Add To Cart</a></td>
            </tr>
            <tr>
                <td>Crime and Punishment</td>
                <td>14.99</td>
                <td><a href="<c:url value='cart?productCode=4002' />">Add To Cart</a></td>
            </tr>
            <tr>
                <td>Game of Thrones</td>
                <td>20.99</td>
                <td><a href="<c:url value='cart?productCode=4003' />">Add To Cart</a></td>
            </tr>
        </table>
    </body>
</html>
