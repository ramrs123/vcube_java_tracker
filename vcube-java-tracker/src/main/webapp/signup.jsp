<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sign Up | VCube</title>
    <link rel="icon" href="vcube-logo.png" type="image/png"> <!-- Favicon -->
    <style>
    * {
    box-sizing: border-box;
}

form {
    max-width: 360px;
    width: 100%;
    margin: auto;
}

input, button {
    display: block;
    width: 100%;
}
    
        :root {
            --bg-color: #F2F2F2;
            --text-color: #0D0D0D;
            --card-bg: rgba(255, 255, 255, 0.85);
            --border-color: #F2CB05;
            --input-bg: #FFFFFF;
            --primary-color: #F27405;
            --primary-dark: #F2A007;
            --muted-text: #888888;
            --link-color: #F27405;
        }

        body {
            margin: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #F2CB05, #F27405);
            backdrop-filter: blur(6px);
            color: var(--text-color);
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }

        header {
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 1rem;
            background-color: rgba(255, 255, 255, 0.2);
            position: relative;
        }

        header img {
            position: absolute;
            left: 20px;
            height: 40px;
        }

        header h1 {
            font-size: 1.5rem;
            color: var(--text-color);
            font-weight: bold;
        }

        main {
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 2rem;
        }

        form {
            background-color: var(--card-bg);
            padding: 2rem;
            border-radius: 12px;
            box-shadow: 0 8px 24px rgba(0, 0, 0, 0.2);
            width: 340px;
            backdrop-filter: blur(4px);
        }

        input {
            width: 100%;
            padding: 12px;
            margin: 12px 0;
            border: 1px solid var(--border-color);
            border-radius: 6px;
            background-color: var(--input-bg);
            color: var(--text-color);
            font-size: 0.95rem;
        }

        input:focus {
            outline: none;
            border-color: var(--primary-color);
            box-shadow: 0 0 4px var(--primary-color);
        }

        button {
            width: 100%;
            padding: 12px;
            background-color: var(--primary-color);
            color: white;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            font-weight: bold;
            font-size: 1rem;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: var(--primary-dark);
        }

        h2 {
            text-align: center;
            margin-top: 1.5rem;
            font-size: 0.95rem;
            color: var(--muted-text);
        }

        a {
            display: block;
            text-align: center;
            color: var(--link-color);
            text-decoration: none;
            margin-top: 0.5rem;
            font-weight: 500;
        }

        a:hover {
            text-decoration: underline;
        }

        #p1 {
            color: red;
            font-size: 0.85rem;
            margin-top: -8px;
        }
        

        footer {
            text-align: center;
            padding: 1rem;
            font-size: 0.8rem;
            color: var(--muted-text);
            background-color: rgba(255, 255, 255, 0.1);
        }
    </style>
</head>
<body>

    <header>
        <img src="vcube-logo.png" alt="VCube Logo">
        <h1><strong>VCube Software Solutions</strong></h1>
    </header>

    <main>
        <form action="signup" method="post">
            <input type="text" id="fname" name="firstName" placeholder="First name" required>
            
            <input type="text" id="lname" name="lastName" placeholder="Last name" required>
            <input type="text" id="uname" name="userName" placeholder="Username" required>
            <input type="password" id="pword" name="password" placeholder="Password" required>
            <input type="email" id="email" name="emailId" placeholder="Email" required>
            <input type="text" id="phone" name="phoneNo" placeholder="Phone" required>
            <button type="submit">Register</button>
            <h2>Already a user?</h2>
            <a href="login">Login</a>
        </form>
    </main>

    <footer>
        &copy; 2025 VCube Software Solutions Pvt. Ltd. | Crafted with Java & Vision
    </footer>

</body>
</html>
