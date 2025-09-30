<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1>Hello World!</h1>
<br/>
<a href="hello-servlet">Hello Servlet</a><br/>
<form action="hello-servlet" method="post">
    <label for="name">Name:</label>
    <input id="name" type="text" name="name">
    <button type="submit" onclick="return warnUser()">Hello</button>
</form>

<form action="hello-servlet" method="post">
    <label for="start">Start:</label>
    <input id="start" type="number" name="start">
    <label for="end">End:</label>
    <input id="end" type="number" name="end">
    <label for="step">Step:</label>
    <input id="step" type="number" name="step" step="0.01">
    <input type="submit" value="Tabulate">
</form>
<script type="text/javascript">
    function warnUser() {
        const field = document.getElementById("name");
        if (field.value.trim().length === 0) {
            alert("Please enter your name");
            return false;
        }
        return true;
    }
</script>
</body>
</html>