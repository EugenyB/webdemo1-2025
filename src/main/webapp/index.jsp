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