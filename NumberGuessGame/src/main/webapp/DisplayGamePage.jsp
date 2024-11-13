<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Number Guessing Game</title>
</head>
 <style>
      body {
        display: flex;
                background-image: url('numbers-loopable-background_rvei_ryn_thumbnail-1080_01.png');
        background-size: cover;
        justify-content: center;
        align-items: center;
        height: 100vh;
        background-color: #f0f4f8;
        font-family: Arial, sans-serif;
      }

      .container {
        text-align: center;
        background: linear-gradient(#4e99bb, #e1f5fe, #c173b7);
        padding: 30px;
        width: 90%;
        max-width: 500px;
        border-radius: 10px;
        box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
      }
      .container h2 {
        font-size: 1.6rem;
        color: #37474f;
        margin-bottom: 1.5rem;
      }

      .container h1 {
        font-size: 1.7rem;
        color: #045d91;
        margin-bottom: 1rem;
      }
      .container form {
        display: flex;
        flex-direction: column;
        align-items: center;
        gap: 1rem;
      }

      .container input[type="text"] {
        padding: 10px 15px;
        font-size: 1.3rem;
        width: 100%;
        max-width: 250px;
        border: 2px solid #0277bd;
        border-radius: 5px;
      }
      .container button {
        padding: 12px 20px;
        font-size: 1.1rem;
        background-color: #0288d1;
        color: #fff;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s, transform 0.2s;
      }
      .container button:hover {
        background-color: #0277bd;
        transform: translateY(-2px);
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.6);
      }

      .container h2:last-of-type {
        font-size: 1.1rem;
        color: #ff5252;
        margin-top: 1.5rem;
      }
    </style>
<body>
    <div class="container">
        <h2>I have selected a number between 1 and 100. Try to guess it!</h2>
        <form action="guess" method="post">
            <h1>Enter Your Guess:</h1>
            <input type="text" name="guess" placeholder="Enter Your Guess" required>
            <button type="submit">Submit Guess</button>
        </form>
        <h2>${message}</h2>
    </div>

</body>
</html>