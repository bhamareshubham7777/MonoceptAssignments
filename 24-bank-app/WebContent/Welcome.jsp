<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link rel="stylesheet" href="styles.css" />
    <title>Document</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
    <link href="https://fonts.googleapis.com/css2?family=Jacques+Francois+Shadow&display=swap">
    
    <style type="text/css">
        @import url("https://fonts.googleapis.com/css2?family=Jacques+Francois+Shadow&display=swap");
    * {
        font-family: "Nunito", sans-serif;
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        outline: none;
        border: none;
        text-decoration: none;
        text-transform: capitalize;
        transition: all 0.2s linear;
    }
    
    html {
        font-size: 62.5%;
        overflow: hidden;
    }
    
    body {
        background: #212531;
        margin: 0;
    }
    
    header {
        margin: 0px;
    }
    
    
    a {
        text-decoration: none;
        color: #000;
    }
    
    ul {
        list-style: none;
    }
    
    section {
        padding: 2rem 9%;
    }
    
    .logo {
        font-size: 2.5rem;
        font-weight: bolder;
        color: #666;
        display: inline-block;
    }
    
    .logo i {
        padding-right: 2rem;
        color: black;
    }
    
    .order {
        text-shadow: -1px -1px 0 yellow, 1px -1px 0 yellow, -1px 1px 0 yellow, 1px 1px yellow;
    }
    
    .nav {
        display: flex;
        flex-direction: row;
        align-items: center;
        justify-content: space-between;
        background: white;
        color: black;
        height: 65px;
        padding: 1em;
        font-size: 25px;
    }
    
    .menu li:hover {
        cursor: pointer;
        transform: scale(1.2);
    }
    
    .menu {
        display: flex;
        flex-direction: row;
        list-style-type: none;
        margin: 0;
    }
    
    .menu>li {
        margin: 0 1rem;
        overflow: hidden;
    }
    
    .menu-button-container {
        display: none;
        height: 100%;
        width: 30px;
        cursor: pointer;
        flex-direction: column;
        justify-content: center;
        align-items: center;
    }
    
    #menu-toggle {
        display: none;
    }
    
    .menu-button,
    .menu-button::before,
    .menu-button::after {
        display: block;
        background-color: black;
        position: absolute;
        height: 6px;
        width: 32px;
        border-radius: 3px;
        color: white;
    }
    
    .menu-button::before {
        content: "";
        margin-top: -8px;
    }
    
    .menu-button::after {
        content: "";
        margin-top: 8px;
    }
    
    #menu-toggle:checked+.menu-button-container .menu-button::before {
        margin-top: 0px;
        transform: rotate(45deg);
    }
    
    #menu-toggle:checked+.menu-button-container .menu-button {
        background: rgba(255, 255, 255, 0);
    }
    
    #menu-toggle:checked+.menu-button-container .menu-button::after {
        margin-top: 0px;
        transform: rotate(-45deg);
    }
    
    .home {
        display: flex;
        flex-wrap: wrap;
        gap: 1.5rem;
        min-height: 100vh;
        align-items: center;
    }
    
    .home .content {
        flex: 1 1 40rem;
        padding-top: 6.5rem;
    }
    
    .home .image {
        flex: 1 1 30rem;
    }
    
    .home .image img {
        width: 90%;
        height: 90%;
        padding: 1rem;
        animation: float 3s linear infinite;
    }
    
    @keyframes float {
        0%,
        100% {
            transform: translateY(0rem);
        }
        50% {
            transform: translateY(3rem);
        }
    }
    
    .home .content h3 {
        font-size: 5rem;
        color: white;
    }
    
    .yellowColor {
        color: yellow;
    }
    
    .mainfont {
        font-family: "Jacques Francois Shadow", cursive;
    }
    
    .home .content p {
        font-size: 1.7rem;
        color: white;
        padding: 1rem 0;
    }
    
    .heading {
        text-align: center;
        font-size: 3.5rem;
        padding: 1rem;
        color: #666;
    }
    
    .btn {
        display: inline-block;
        padding: 0.8rem 3rem;
        border: 0.2rem solid white;
        color: white;
        cursor: pointer;
        font-size: 1.7rem;
        border-radius: 0.5rem;
        position: relative;
        overflow: hidden;
        z-index: 0;
        margin: 1rem 1rem 0 0;
    }
    
    .btn:hover {
        color: #fff;
    }
    
    @media (max-width: 991px) {
        html {
            font-size: 55%;
        }
        header {
            padding: 2rem;
        }
        section {
            padding: 2rem;
        }
    }
    
    @media (max-width: 768px) {
        .menu-button-container {
            display: flex;
        }
        .menu {
            position: absolute;
            top: 0;
            margin-top: 50px;
            left: 0;
            flex-direction: column;
            width: 100%;
            justify-content: center;
            align-items: center;
            padding: 2rem
        }
        .menu li:hover {
            transform: scale(1);
        }
        #menu-toggle~.menu li {
            height: 0;
            margin: 0;
            padding: 0;
            border: 0;
        }
        #menu-toggle:checked~.menu li {
            border: 1px solid #9f9a9a;
            height: 2.5em;
            padding: 0.5em;
        }
        .menu>li {
            display: flex;
            justify-content: center;
            margin: 0;
            padding: 0.5em 0;
            width: 100%;
            color: black;
            background-color: #e8e8e8;
        }
        .menu>li:not(:last-child) {
            border-bottom: 1px solid #444;
        }
    }
    
    @media (max-width: 450px) {
        html {
            font-size: 50%;
            overflow-x: hidden;
            overflow-y: scroll;
            text-align: center;
        }
    }

    
    </style>
</head>

<body>

    <header>
        <section class="nav">
     
            <div class="logo">
                <a href="#"><i class="fas fa-university"></i>Welcome!!!</a>
            </div>

            <input id="menu-toggle" type="checkbox" />
            <label class="menu-button-container" for="menu-toggle">
          <div class="menu-button"></div>
        </label>
            <ul class="menu">
                <li><a href="#home">Home</a></li>
                <li><a href="#speciality">About</a></li>
                <li><a href="#popular">Popular</a></li>
                <li><a href="#review">Contact</a></li>
                <li><a href="#order" class="order">Menu</a></li>
            </ul>
        </section>
    </header>

    <section class="home" id="home ">
        <div class="content">
            
            <h3 class="mainfont">
                Wel<span class="yellowColor">come</span> to our
            </h3>
            <h3>
                B<span class="yellowColor">an</span>k
                <span class="yellowColor">Application</span>
            </h3>
          
            <p>
				In any Bank Transaction, there are several parties involved to process transaction like a merchant, bank, receiver,
				 etc. so there are several numbers reasons that transaction may get failed, declined, so to handle a transaction 
				 in Java, there is a JDBC (Java Database Connectivity) which provides us an API to connect, execute, fetch data 
				 from any databases. It provides the language Java database connectivity standards. It is used to write programs
				  required to access databases.            
			</p>
			
            <a href="Login.jsp" class="btn">Get Started</a>
        </div>

        <div class="image">
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkRlEFDkJONUDDJhaskDmosnkUJsJAOAiRcw&usqp=CAU" alt=" " />
        </div>
    </section>

</body>

</html>