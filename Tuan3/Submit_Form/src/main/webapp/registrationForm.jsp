<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Registration Form</title>
  <style>
      body {
          font-family: Arial, sans-serif;
          background-color: #9ee1f5;
          padding: 20px;
      }

      form {
          background-color: #a8e5f5;
          padding: 20px;
          border-radius: 8px;
          width: 700px;
          margin: auto;
      }

      table {
          width: 100%;
          border-collapse: collapse;
      }

      td {
          padding: 8px;
      }

      input[type="text"],
      input[type="email"],
      input[type="number"],
      textarea,
      select {
          width: 50%;
          padding: 5px;
      }

      textarea {
          resize: vertical;
          height: 60px;
      }

      .qualification {
          padding: 8px;
      }

      .qualification table {
          border: 1px solid #0000ff;
      }

      .qualification td {
          padding: 4px;
      }

      .buttons {
          text-align: center;
          margin-top: 20px;
      }
  </style>
</head>
<body>
<form action="registrationForm" name="formDangKy" method="GET">
  <table>
    <tr>
      <td>First name</td>
      <td>
        <input type="text" name="firstName" maxlength="30">
        (max 30 characters a-z and A-Z)
      </td>
    </tr>
    <tr>
      <td>Last name</td>
      <td>
        <input type="text" name="lastName" maxlength="30">
        (max 30 characters a-z and A-Z)
      </td>
    </tr>
    <tr>
      <td>Date of birth</td>
      <td>
        <select name="day" style="width:auto; min-width:80px;">
          <option>Day:</option>
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
          <option>13</option>
          <option>14</option>
          <option>15</option>
          <option>16</option>
          <option>17</option>
          <option>18</option>
          <option>19</option>
          <option>20</option>
          <option>21</option>
          <option>22</option>
          <option>23</option>
          <option>24</option>
          <option>25</option>
          <option>26</option>
          <option>27</option>
          <option>28</option>
          <option>29</option>
          <option>30</option>
          <option>31</option>
        </select>
        <select name="month" style="width:auto; min-width:100px;">
          <option>Month:</option>
          <option>Jan</option>
          <option>Feb</option>
          <option>Mar</option>
          <option>Apr</option>
          <option>May</option>
          <option>Jun</option>
          <option>Jul</option>
          <option>Aug</option>
          <option>Sep</option>
          <option>Oct</option>
          <option>Nov</option>
          <option>Dec</option>
        </select>
        <select name="year" style="width:auto; min-width:100px;">
          <option>Year:</option>
          <option>1980</option>
          <option>1981</option>
          <option>1982</option>
          <option>1983</option>
          <option>1984</option>
          <option>1985</option>
          <option>1986</option>
          <option>1987</option>
          <option>1988</option>
          <option>1989</option>
          <option>1990</option>
          <option>1991</option>
          <option>1992</option>
          <option>1993</option>
          <option>1994</option>
          <option>1995</option>
          <option>1996</option>
          <option>1997</option>
          <option>1998</option>
          <option>1999</option>
          <option>2000</option>
          <option>2001</option>
          <option>2002</option>
          <option>2003</option>
          <option>2004</option>
          <option>2005</option>
          <option>2006</option>
          <option>2007</option>
          <option>2008</option>
          <option>2009</option>
          <option>2010</option>
          <option>2011</option>
          <option>2012</option>
          <option>2013</option>
          <option>2014</option>
          <option>2015</option>
          <option>2016</option>
          <option>2017</option>
          <option>2018</option>
          <option>2019</option>
          <option>2020</option>
          <option>2021</option>
          <option>2022</option>
          <option>2023</option>
          <option>2024</option>
          <option>2025</option>
        </select>
      </td>
    </tr>
    <tr>
      <td>Email</td>
      <td><input type="email" name="email"></td>
    </tr>
    <tr>
      <td>Mobile number</td>
      <td>
        <input type="text" name="mobileNumber" maxlength="10">
        (10 digit number)
      </td>
    </tr>
    <tr>
      <td>Gender</td>
      <td>
        <input type="radio" name="gender" value="Male"> Male
        <input type="radio" name="gender" value="Female"> Female
      </td>
    </tr>
    <tr>
      <td>Address</td>
      <td><textarea name="address"></textarea></td>
    </tr>
    <tr>
      <td>City</td>
      <td>
        <input type="text" name="city" maxlength="30">
        (max 30 characters a-z and A-Z)
      </td>
    </tr>
    <tr>
      <td>Pin code</td>
      <td>
        <input type="text" name="pinCode" maxlength="6">
        (6 digit number)
      </td>
    </tr>
    <tr>
      <td>State</td>
      <td>
        <input type="text" name="state" maxlength="30">
        (max 30 characters a-z and A-Z)
      </td>
    </tr>
    <tr>
      <td>Country</td>
      <td><input type="text" name="country"></td>
    </tr>
    <tr>
      <td>Hobbies</td>
      <td>
        <input type="checkbox" name="hobbies" value="Drawing"> Drawing
        <input type="checkbox" name="hobbies" value="Singing"> Singing
        <input type="checkbox" name="hobbies" value="Dancing"> Dancing
        <input type="checkbox" name="hobbies" value="Sketching"> Sketching
        <input type="checkbox" name="hobbies" value="Others"> Others
        <input type="text" name="hobbiesOther">
      </td>
    </tr>
  </table>

  <div class="qualification">
    <table width="100%">
      <tr>
        <td>Qualification</td>
        <td>
          <table class="qualification" width="100%">
            <tr>
              <th>Sl.No.</th>
              <th>Examination</th>
              <th>Board</th>
              <th>Percentage</th>
              <th>Year of Passing</th>
            </tr>
            <tr>
              <td>1</td>
              <td>Class X</td>
              <td><input type="text" name="boardX" maxlength="10"></td>
              <td><input type="text" name="percentageX" placeholder="upto 2 decimal"></td>
              <td><input type="text" name="yearX"></td>
            </tr>
            <tr>
              <td>2</td>
              <td>Class XII</td>
              <td><input type="text" name="boardXII" maxlength="10"></td>
              <td><input type="text" name="percentageXII" placeholder="upto 2 decimal"></td>
              <td><input type="text" name="yearXII"></td>
            </tr>
            <tr>
              <td>3</td>
              <td>Graduation</td>
              <td><input type="text" name="boardGrad" maxlength="10"></td>
              <td><input type="text" name="percentageGrad" placeholder="upto 2 decimal"></td>
              <td><input type="text" name="yearGrad"></td>
            </tr>
            <tr>
              <td>4</td>
              <td>Masters</td>
              <td><input type="text" name="boardMasters" maxlength="10"></td>
              <td><input type="text" name="percentageMasters" placeholder="upto 2 decimal"></td>
              <td><input type="text" name="yearMasters"></td>
            </tr>
          </table>
        </td>
      </tr>
    </table>
  </div>

  <table>
    <tr>
      <td>Course applies for</td>
      <td>
        <input type="radio" name="course" value="BCA"> BCA
        <input type="radio" name="course" value="B.Com"> B.Com
        <input type="radio" name="course" value="B.Sc"> B.Sc
        <input type="radio" name="course" value="B.A"> B.A
      </td>
    </tr>
  </table>

  <div class="buttons">
    <input type="submit" value="Submit">
    <input type="reset" value="Reset">
  </div>
</form>
</body>
</html>
