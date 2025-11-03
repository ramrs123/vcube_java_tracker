<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.app.model.UserModel"%>
<%@ page import="com.app.model.ModuleModel"%>
<%@ page import="java.util.List"%>
<%@ page import="com.app.dao.ModuleDao"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Module Info | VCube</title>
    <link rel="icon" href="vcube-logo.png" type="image/png">
    <style>
        :root {
            --yellow: #F2CB05;
            --orange: #F2A007;
            --deep-orange: #F27405;
            --light: #F2F2F2;
            --dark: #0D0D0D;
        }

        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(135deg, var(--yellow), var(--deep-orange));
            color: var(--dark);
        }

        header {
            text-align: center;
            padding: 2rem 1rem;
            background-color: rgba(255, 255, 255, 0.2);
            backdrop-filter: blur(4px);
        }

        header h1 {
            font-size: 2.2rem;
            margin: 0;
        }

        .user-card {
            background-color: rgba(255, 255, 255, 0.85);
            margin: 2rem auto;
            padding: 1.5rem;
            border-radius: 12px;
            box-shadow: 0 6px 16px rgba(0,0,0,0.2);
            max-width: 500px;
            text-align: center;
        }

        .user-card h2 {
            margin: 0.5rem 0;
            font-size: 1.2rem;
            background: linear-gradient(to bottom, red, black);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .modules {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(180px, 1fr));
            gap: 1rem;
            padding: 2rem;
            max-width: 900px;
            margin: auto;
        }

        .module-card {
            background-color: var(--light);
            padding: 1rem;
            border-radius: 8px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
            text-align: center;
            transition: transform 0.3s ease;
        }

        .module-card:hover {
            transform: scale(1.05);
            background-color: var(--orange);
            color: white;
        }

        footer {
            text-align: center;
            padding: 1rem;
            font-size: 0.8rem;
            color: var(--dark);
            background-color: rgba(255, 255, 255, 0.2);
        }
    </style>
</head>
<body>

    <%
        UserModel user = (UserModel) session.getAttribute("userdata");
        ModuleDao m = new ModuleDao();
        List<ModuleModel> list = m.getAllModules();
    %>

    <header>
        <h1>Welcome to VCube - Java, <%= user.getUserName() %></h1>
        <p>Where Learning Java Made Simple</p>
    </header>

    <div class="user-card">
        <h2><%= user.getFirstName() %></h2>
        <h2><%= user.getLastName() %></h2>
        <h2><%= user.getUserName() %></h2>
        <h2><%= user.getPhoneNo() %></h2>
        <h2><%= user.getEmailId() %></h2>
    </div>

    <div class="modules">
        <% for (ModuleModel module : list) { %>
            <div class="module-card">
                <a href="#"><%= module.getModuleName() %></a>
            </div>
        <% } %>
    </div>

    <footer>
        &copy; 2025 VCube Software Solutions Pvt. Ltd. | Empowering Java Learners
    </footer>

</body>
</html>
