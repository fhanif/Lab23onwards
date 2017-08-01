<%--
  Created by IntelliJ IDEA.
  User: fhani
  Date: 8/1/2017
  Time: 10:04 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registration</title>
</head>
<body>
<h2>Complete the form to become a member!</h2>
<form method="post" action="/success">
    <form action="/action_page_post.php" method="post">
        First Name:
        <input type="text" name="firstName" required value="First Name">
        <br> <br>
        Last Name:
        <input type="text" name="lastName" required value="Last Name">
        <br> <br>
        Email:
        <input type="email" name="email" required value="email@gmail.com">
        <br> <br>
        Phone Number:
        <input type="tel" name="phoneNumber" required value="1234567890">
        <br> <br>
        User Name:
        <input type="text" name="userName" required value="UserName">
        <br> <br>
        Password:
        <input type="password" id="txtPassword" name="password" onchange="confirmPassword()" value="*****">
        <br> <br>
        Confirm Password:
        <input type="password" id="confirmPassword" name="confirmPassword" onchange="confirmPassword()" value="*****">
        <br> <br>


        <h3>Gender</h3>
        <input type="radio" name="gender" value="male">Male
        <br>
        <input type="radio" name="gender" value="female">Female
        <br>
        <input type="radio" name="gender" value="other">Other
        <br>

        <h3>Tell us about your coffee preferences to stay up to date on all our GRAND deals!</h3>
        <h3>Coffee Preferences: </h3>
        Lattes<input type="checkbox" name="preferences" value="Lattes">
        <br>
        Cappucinos<input type="checkbox" name="preferences" value="Cappucinos">
        <br>
        Chai Lattes<input type="checkbox" name="preferences" value="Chai Lattes">
        <br>
        Mochas<input type="checkbox" name="preferences" value="Mochas">
        <br>
        Loose Leaf Tea<input type="checkbox" name="preferences" value="Loose Leaf Teas">
        <br>

        <h3>Would you like to be on our email list?</h3>
        <select>
            <option value="yes">Yes</option>
            <option value="no">No</option>
        </select>
        <br>
        <br>

        <input type="submit" value="Register">
        <!--<input type="submit" name="registerBtn" value="Register" id="registerBtn" disabled />-->
    </form>
</form>
</body>
</html>
