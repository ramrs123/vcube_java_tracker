<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Java Tracker | VCube</title>
    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', sans-serif;
            background-color: #F2F2F2;
            color: #0D0D0D;
            overflow-x: hidden;
        }

        .hero {
            height: 100vh;
            background: linear-gradient(135deg, #F2CB05, #F27405);
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            text-align: center;
            padding: 0 20px;
        }

        .hero h1 {
            font-size: 3.5em;
            color: #0D0D0D;
            margin-bottom: 10px;
            text-shadow: 2px 2px #F2F2F2;
        }

        .hero p {
            font-size: 1.5em;
            color: #F2F2F2;
            margin-bottom: 40px;
        }

        .quote {
            font-style: italic;
            font-size: 1.2em;
            color: #0D0D0D;
            background-color: #F2A007;
            padding: 10px 20px;
            border-radius: 8px;
            box-shadow: 2px 2px 10px rgba(0,0,0,0.2);
            margin-bottom: 40px;
        }

        .join-btn {
            padding: 15px 30px;
            font-size: 1.2em;
            background-color: #F27405;
            color: #F2F2F2;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            box-shadow: 0 4px 10px rgba(0,0,0,0.3);
            transition: transform 0.3s ease;
        }

        .join-btn:hover {
            transform: scale(1.1);
            background-color: #F2A007;
        }
        .watermark {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    opacity: 0.08;
    z-index: 0;
    max-width: 60%;
    height: auto;
    pointer-events: none;
}
.hero {
    position: relative;
    z-index: 1;
}
        
    </style>
</head>
<body>
<img src="Vcube Logo.png" alt="V CUBE Logo" class="watermark">

    <div class="hero">
        <h1>“Java is Simple in VCube.”</h1>
        <p>Your journey to becoming a Java Developer starts here.</p>
        <div class="quote">Master Java. Build your future. Code your destiny.</div>

        <form action="register" method="get">
            <input type="submit" name="submit" value="Join Now" class="join-btn">
        </form>
    </div>

</body>
</html>


