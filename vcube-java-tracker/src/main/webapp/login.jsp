<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login | VCube</title>
    <link rel="icon" href="vcube-logo.png" type="image/png">
    <style>
        :root {
            --bg-color: #F2F2F2;
            --text-color: #0D0D0D;
            --card-bg: rgba(255, 255, 255, 0.85);
            --border-color: #F2CB05;
            --input-bg: #FFFFFF;
            --primary-color: #F27405;
            --primary-dark: #F2A007;
            --muted-text: #888888;
        }

        * {
            box-sizing: border-box;
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
    width: 100%;
    max-width: 360px;
    display: flex;
    flex-direction: column;
    gap: 1.2rem; /* Even spacing between all form elements */
}
        
        input {
            padding: 12px;
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

        #p1 {
            color: red;
            font-size: 0.85rem;
            margin: 0;
            height: 1rem;
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
        <h1>VCube Soft. Sol</h1>
    </header>

    <main>
        <form action="login" method="post">
            <input type="text" name="username" id="username" placeholder="Username" required>
            
            <input type="password" name="password" placeholder="Password" required>
            <button type="submit">Sign In</button>
        </form>
    </main>

    <footer>
        &copy; 2025 VCube Software Solutions Pvt. Ltd. | Powered by Java & Passion
    </footer>

</body>
</html>
