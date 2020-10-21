<%@ page import="FunctionLayer.LogicFacade" %>
<%@ page import="FunctionLayer.Bottom" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!doctype html>
<html lang="en">
<head>
<head>

    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <title>Cupcakes</title>

</head>

<body class="container">


<div class="row">
    <h1 class="text-center">Velkommen ombord</h1>
    <br>
</div>

<div class="row">
    <h3 class="text-center">Øens bedste Cupcakes. Vælg og bestil her</h3>
    <br>
    <br>
</div>

<%
    request.setAttribute("bottoms", LogicFacade.getAllBottoms());
    request.setAttribute("toppings", LogicFacade.getAllToppings());
%>

<form action="FrontController" method="post">
    <input type="hidden" name="target" value="shoppingCart">

    <div class="row">

    <div class="col-md-4">
            <!-- Dropdown numbers -->
            <div class="form-group ">
                <label for="numberOfCupcakes">Angiv antal</label>
                <select class="form-control" name="number" id="numberOfCupcakes">
                    <option value="1">
                        1
                    </option>
                    <option value="2">
                        2
                    </option>
                    <option value="3">
                        3
                    </option>
                </select>
            </div>
        </div>

        <div class="col-md-4">
            <!-- Dropdown bottoms -->
            <div class="form-group">
                <label for="selectBottom">Select Cupcake bottom</label>
                <select class="form-control" name="bottom" id="selectBottom">
                    <c:forEach var="bottom" items="${bottoms}">
                        <option value="${bottom.name}">${bottom.name}</option>
                    </c:forEach>
                </select>
            </div>
        </div>


        <div class="col-md-4">
            <!-- Dropdown toppings -->
            <div class="form-group">
                <label for="selectTopping">Select Cupcake topping</label>
                <select class="form-control" name="topping" id="selectTopping">
                    <c:forEach var="topping" items="${toppings}">
                        <option value="${topping.name}">${topping.name}</option>
                    </c:forEach>
                </select>
            </div>
        </div>

    </div>

    <div class="text-right">
        <button type="submit" class="btn btn-primary">Go to cart</button>
    </div>

</form>

<!-- Option 2: jQuery, Popper.js, and Bootstrap JS -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
