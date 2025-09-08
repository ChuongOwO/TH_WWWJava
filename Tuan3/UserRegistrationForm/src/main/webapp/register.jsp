<%--
  Created by IntelliJ IDEA.
  User: chuon
  Date: 9/8/2025
  Time: 11:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <title>User Registration Form</title>
  <style>
      body {
          font-family: Arial;
      }

      .container {
          width: 350px;
          margin: 50px auto;
          border: 1px solid #ccc;
          padding: 20px;
          border-radius: 8px;
      }

      .container input, select {
          width: 95%;
          padding: 8px;
          margin: 5px 0;
      }

      .container .inline {
          display: flex;
          gap: 10px;
      }

      .gender {
          display: flex;
          gap: 40px;
          margin: 10px 0;
      }

      .gender label {
          display: inline-flex;
          align-items: center;
          gap: 6px;
          flex-direction: row;
      }

      .container button {
          width: 100%;
          padding: 10px;
          background: #1877f2;
          color: white;
          border: none;
          border-radius: 5px;
          cursor: pointer;
      }

      .container h2 {
          text-align: center;
      }
  </style>
</head>
<body>
<div class="container">
  <h2>User Registration Form</h2>
  <form method="post" action="register">
    <div class="inline">
      <input type="text" name="firstName" placeholder="First Name" required/>
      <input type="text" name="lastName" placeholder="Last Name" required/>
    </div>
    <input type="email" name="email" placeholder="Your Email" required/>
    <input type="email" name="reEmail" placeholder="Re-enter Email" required/>
    <input type="password" name="password" placeholder="New Password" required/>

    <label>Birthday</label>
    <div class="inline">
      <select name="month" required>
        <option>Month</option>
        <option>1</option>
        <option>2</option>
        <option>3</option>
        <option>4</option>
        <option>5</option>
        <option>6</option>
        <option>7</option>
        <option>8</option>
        <option>9</option>
        <option>10</option>
        <option>11</option>
        <option>12</option>
      </select>
      <select name="day" required>
        <option>Day</option>
        <% for (int i = 1; i <= 31; i++) { %>
        <option><%= i %>
        </option>
        <% } %>
      </select>
      <select name="year" required>
        <option>Year</option>
        <% for (int y = 2025; y >= 1950; y--) { %>
        <option><%= y %>
        </option>
        <% } %>
      </select>
    </div>

    <div class="gender">
      <label><input type="radio" name="gender" value="Female" required/> Female</label>
      <label><input type="radio" name="gender" value="Male"/> Male</label>
    </div>

    <button type="submit">Sign Up</button>
  </form>
</div>
</body>
</html>

