<%-- 
    Document   : cart
    Created on : May 21, 2014, 9:44:09 AM
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
        <h1>Your Cart</h1>
        
        <table border ="1" cellpadding ="5">
            <tr>
                <th>Quantity</th>
                <th>Description</th>
                <th>Price</th>
                <th>Amount</th>
            </tr>
            <%@taglib prefix="c" uri ="http://java.sun.com/jsp/jstl/core" %>
            <c:forEach var="item" items="${cart.items}">
                <tr valign="top">
                    <td>
                        <form action="<c:url value='/cart' />">
                            <input type="hidden" name="productCode"
                                   value="${item.product.code}">
                            <input type="hidden" name="quantity"
                                   value="${item.quantity}">
                        </form>
                    </td>
                    <td>${item.product.description}</td>
                    <td>${item.product.priceCurrencyFormat}</td>
                    <td>${item.totalCurrencyFormat}</td>
                    <td>
                        <form action="<c:url value='/cart' />">
                            <input type="hidden" name="productCode"
                                   value ="${item.product.code}">
                            <input type="hidden" name="quantity"
                                   value ="0">
                            <input type="submit" value="Remove Item">
                        </form>
                    </td>
                </tr>                
            </c:forEach>
                <tr>
                    <td colspan="3">
                        <p><b>To change the quantity</b>, enter the new quantity and click on the update button.</p>
                    </td>
                </tr>
        </table>
        <br>
        <form action="<c:url value='/index.jsp'/>" method ="post">
                <input type="submit" value="Continue Shopping">
        </form>
        <form action="<c:url value='/checkout.jsp' />" method="post"
              <input type="submit" value="Checkout">
        </form>
    </body>
</html>
