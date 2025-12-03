<!DOCTYPE html>
<html>
<head>
    <title>Choose Update Type</title>

    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Arial, sans-serif;

            /* Warm, aesthetic library background */
            background: url("https://images.unsplash.com/photo-1512820790803-83ca734da794?auto=format&fit=crop&w=1500&q=80")
                        no-repeat center center fixed;
            background-size: cover;
        }

        /* Glassy card */
        .container {
            width: 430px;
            margin: 90px auto;
            padding: 30px 25px;
            background: rgba(255, 255, 255, 0.2);
            backdrop-filter: blur(12px);
            border-radius: 18px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.35);
            text-align: center;
            color: #3b2f2f;
        }

        h2 {
            margin-bottom: 28px;
            font-size: 26px;
            font-weight: 600;
            color: #3b2f2f;
            text-shadow: 1px 1px 3px rgba(0,0,0,0.3);
        }

        .update-links {
            display: flex;
            flex-direction: column;
            gap: 18px;
        }

        /* Soft peach button */
        .update-links a {
            text-decoration: none;
            padding: 14px 0;
            background: rgba(255, 239, 214, 0.9);
            color: #6a4e23;
            border-radius: 10px;
            font-size: 17px;
            font-weight: 600;
            border: 1px solid rgba(255, 228, 193, 0.9);
            transition: 0.3s;
            box-shadow: 0 4px 10px rgba(0,0,0,0.15);
        }

        /* Hover effect */
        .update-links a:hover {
            background: rgba(255, 222, 185, 0.95);
            color: #4a3314;
            transform: translateY(-3px);
            box-shadow: 0 6px 14px rgba(0,0,0,0.25);
        }

    </style>
</head>

<body>

<div class="container">
    <h2>Choose What to Update</h2>

    <div class="update-links">
        <a href="update-author.jsp">Update Author</a>
        <a href="update-bookname.jsp">Update Book Name</a>
        <!-- <a href="updateBoth.html">Update Both</a> -->
    </div>
</div>

</body>
</html>
