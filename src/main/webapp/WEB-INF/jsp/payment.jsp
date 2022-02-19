<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <title>Book My show</title>
</head>
<body>
  <form action="/payment1">
   <div class="movie-container">
        <label>pick a movie</label>
        <select id="movie">
         <option value="100">pushpa($100)</option>
         <option value="150">RRR($100)</option>
        </select>
    </div>
  booking date::<input type="text" name="date"><br>
  No of ticket::<input type="text" name="ticket"><br>
  <input type="submit" value="click it">
  </form>
</body>
</html>