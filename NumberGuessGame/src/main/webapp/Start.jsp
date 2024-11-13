<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Start Page</title>
</head>
<style>
      body {
        height: 95vh;
        width: 95vw;
        background-image: url('thumb-1920-1009034.jpg');
        background-size: cover;
      }
      .container {
        margin-left: 350px;
        display: flex;
        align-items: center;
        flex-direction: column;
        height: 28rem;
        width: 50rem; 
      }
      .head {
        width: 45rem;
        font-size: 2.5rem;
        display: flex;
        align-items: center;
        flex-direction: column;
        margin-top: 18rem;
        border-radius: 8px;
        background: linear-gradient(135deg, #ff5f6d, #ffc371);
        box-shadow: 0 4px 15px rgba(0, 0, 0, 0.3);
        animation: fadeIn 0.7s ease-in-out;
      }
      @keyframes fadeIn {
        0% {
          opacity: 0;
          transform: scale(0.9);
        }
        100% {
          opacity: 1;
          transform: scale(1);
        }
      }
      .head:hover {
        color: rgb(216, 223, 220);
        text-shadow: 2px 2px 8px rgba(0, 0, 0, 0.6);
      }
      .Start {
        font-family: Arial, sans-serif;
        font-size: 1.7rem;
        padding: 12px 30px;
        color: #190f0f;
        background: linear-gradient(135deg, #ff5f6d, #07a76f);

        border-radius: 8px;
        cursor: pointer;
        box-shadow: 0px 4px 15px rgba(0, 0, 0, 0.2);
        transition: transform 0.2s ease, box-shadow 0.2s ease;
      }
      .Start:hover {
        transform: translateY(-4px);
        box-shadow: 0px 6px 20px rgba(0, 0, 0, 0.3);
        background: linear-gradient(135deg, #5eb8ff, #6aa7e9);
      }
    </style>
<body>
<div class="container">
 <h1 class="head">Welcome to the Number Guessing Game</h1>
 <button class="Start" onclick="window.location.href='DisplayGamePage.jsp'">Start Game</button>
 </div>

</body>
</html>