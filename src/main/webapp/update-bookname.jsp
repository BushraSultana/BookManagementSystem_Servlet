<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Update Book Name</title>

    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap" rel="stylesheet">

    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Poppins', sans-serif;

            /* Background Image (library interior) */
            background: url('https://images.unsplash.com/photo-1507842217343-583bb7270b66?auto=format&fit=crop&w=1740&q=80')
                        no-repeat center center fixed;
            background-size: cover;

            /* Slight blur overlay */
            backdrop-filter: blur(4px);
        }

        .overlay {
            width: 100%;
            height: 100%;
            background: rgba(0,0,0,0.4);
            position: absolute;
            top: 0;
            left: 0;
        }

        .container {
            position: relative;
            width: 420px;
            margin: 120px auto;
            padding: 35px 30px;

            /* Glassmorphism */
            background: rgba(255, 255, 255, 0.18);
            border-radius: 16px;
            border: 1px solid rgba(255, 255, 255, 0.4);
            box-shadow: 0 8px 25px rgba(0,0,0,0.25);
            backdrop-filter: blur(10px);

            animation: fadeIn 0.8s ease-in-out;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        h2 {
            text-align: center;
            margin-bottom: 25px;
            color: #ffffff;
            letter-spacing: 1px;
            text-shadow: 0 2px 8px rgba(0,0,0,0.4);
        }

        label {
            color: #f7f7f7;
            font-weight: 500;
            margin-bottom: 6px;
            display: block;
        }

        input[type="number"],
        input[type="text"] {
            width: 100%;
            padding: 12px;
            margin-bottom: 18px;
            border-radius: 8px;
            border: none;
            outline: none;

            background: rgba(255,255,255,0.85);
            font-size: 15px;
        }

        button {
            width: 100%;
            padding: 12px;
            font-size: 16px;
            font-weight: 600;

            background: #6a5ae0;
            color: white;

            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: 0.3s ease-in-out;
        }

        button:hover {
            background: #5748d6;
            transform: scale(1.03);
        }

    </style>
</head>

<body>

<div class="overlay"></div>

<div class="container">
    <h2>Update Book Name</h2>

    <form action="updateBookName" method="post">

        <label>Enter Book ID:</label>
        <input type="number" name="id" placeholder="Book ID" required>

        <label>New Book Name:</label>
        <input type="text" name="bookName" placeholder="Book Name" required>

        <button type="submit">Update Book</button>
    </form>
</div>

</body>
</html>
