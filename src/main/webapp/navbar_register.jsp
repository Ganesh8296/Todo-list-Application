<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Navbar</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }

        .navbar {
            background-color: #333;
            min-height: 70px;
            padding: 0 3rem;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.3);
            position: relative;
        }

        .logo a {
            color: white;
            text-decoration: none;
            font-size: 1.8rem;
            font-weight: 600;
            letter-spacing: 1px;
            text-transform: uppercase;
        }

        .nav-links {
            display: flex;
            list-style: none;
            gap: 2.5rem;
        }

        .nav-links li {
            position: relative;
        }

        .nav-links a {
            color: white;
            text-decoration: none;
            font-size: 1.1rem;
            font-weight: 400;
            text-transform: uppercase;
            letter-spacing: 0.5px;
            padding: 8px 0;
        }

        .nav-links a::after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 0;
            width: 0;
            height: 2px;
            background-color: #9fa8da;
            transition: width 0.3s ease;
        }

        .nav-links a:hover::after {
            width: 100%;
        }

        .nav-links a:hover {
            color: #9fa8da;
        }

        .nav-links a.active {
            color: #9fa8da;
        }

        .nav-links a.active::after {
            width: 100%;
        }

        .hamburger {
            display: none;
            cursor: pointer;
            padding: 10px;
        }

        .hamburger .line {
            width: 25px;
            height: 3px;
            background-color: white;
            margin: 5px 0;
            transition: all 0.3s ease;
        }

        @media screen and (max-width: 768px) {
            .navbar {
                padding: 0 1.5rem;
            }

            .hamburger {
                display: block;
                z-index: 100;
            }

            .nav-links {
                position: fixed;
                top: 0;
                right: -100%;
                height: 100vh;
                width: 100%;
                max-width: 300px;
                background-color: #333;
                flex-direction: column;
                align-items: center;
                justify-content: center;
                gap: 2rem;
                transition: right 0.3s ease;
                z-index: 99;
            }

            .nav-links.active {
                right: 0;
            }

            .hamburger.active .line:nth-child(1) {
                transform: rotate(45deg) translate(5px, 5px);
            }

            .hamburger.active .line:nth-child(2) {
                opacity: 0;
            }

            .hamburger.active .line:nth-child(3) {
                transform: rotate(-45deg) translate(7px, -6px);
            }

            .logo a {
                font-size: 1.4rem;
            }
        }

        @media screen and (max-width: 480px) {
            .navbar {
                padding: 0 1rem;
            }

            .logo a {
                font-size: 1.2rem;
            }
        }
    </style>
</head>
<body>
    <nav class="navbar">
        <div class="logo">
            <a href="">Todo note</a>
        </div>
        <div class="hamburger">
            <div class="line"></div>
            <div class="line"></div>
            <div class="line"></div>
        </div>
        <ul class="nav-links">
            <li><a href="login.jsp">login</a></li>
        </ul>
    </nav>

    <script>
        const hamburger = document.querySelector('.hamburger');
        const navLinks = document.querySelector('.nav-links');

        hamburger.addEventListener('click', () => {
            hamburger.classList.toggle('active');
            navLinks.classList.toggle('active');
        });

        // Close mobile menu when clicking a link
        document.querySelectorAll('.nav-links a').forEach(link => {
            link.addEventListener('click', () => {
                hamburger.classList.remove('active');
                navLinks.classList.remove('active');
            });
        });
    </script>
</body>
</html>
