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
        <title>JSP Page</title>
    </head>
    <body>
        
        <h1>Please enter all the information to sign up for our email list.</h1>
        <form action="validateEntry" method="post">
            <table cellspacing="5" border="0">
                <tr>
                    <td align="right">First Name:</td>
                    <td><input type="text" name="firstName:"
                               value="<%= user.getFirstName() %>"> </td>
                </tr>
                <tr>
                    <td align="right">Last Name:</td>
                    <td><input type="text" name="firstName:"
                               value="<%= user.getLastName() %>"> </td>
                </tr>
                <tr>
                    <td align="right">First Name:</td>
                    <td><input type="text" name="Email:"
                               value="<%= user.getEmail() %>"> </td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="button" value="Submit"
                                onClick="validate(this.form)"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
