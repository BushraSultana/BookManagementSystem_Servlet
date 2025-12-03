<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book Management Dashboard</title>

    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap" rel="stylesheet">

    <style>
        body {
            margin: 0;
            padding: 0;
            height: 100vh;
            font-family: 'Poppins', sans-serif;

            /* NEW LIBRARY INTERIOR BACKGROUND */
            background: url('https://images.unsplash.com/photo-1524995997946-a1c2e315a42f?auto=format&fit=crop&w=1780&q=80')
                        no-repeat center center fixed;
            background-size: cover;

            position: relative;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        /* Soft dark overlay for readability */
        .overlay {
            position: absolute;
            width: 100%;
            height: 100%;
            background: rgba(20, 20, 20, 0.55);
            top: 0;
            left: 0;
        }

        .card {
            position: relative;
            z-index: 2;

            width: 600px;

            /* Gold + dark glass aesthetic */
            background: rgba(50, 40, 25, 0.35);
            backdrop-filter: blur(12px);
            padding: 35px 40px;
            border-radius: 20px;

            border: 1px solid rgba(255, 215, 0, 0.35);
            box-shadow: 0px 15px 45px rgba(0,0,0,0.55);

            text-align: center;
            color: #ffe9b6;

            animation: fadeIn 1s ease;
        }

        @keyframes fadeIn {
            from {opacity: 0; transform: translateY(20px);}
            to {opacity: 1; transform: translateY(0);}
        }

        h1 {
            font-size: 32px;
            font-weight: 600;
            margin-bottom: 8px;
            color: #ffdd8a;
        }

        p {
            opacity: 0.9;
            font-size: 15px;
            margin-bottom: 30px;
        }

        .operations {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 18px;
        }

        .operations a {
            text-decoration: none;
            padding: 16px;

            /* Gold translucent buttons */
            background: rgba(255, 215, 0, 0.22);
            border-radius: 12px;
            border: 1px solid rgba(255, 215, 0, 0.45);

            font-size: 17px;
            color: #fff9d7;
            font-weight: 600;
            text-shadow: 0 1px 5px rgba(0,0,0,0.5);

            transition: 0.3s ease;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .operations a:hover {
            background: rgba(255, 215, 0, 0.35);
            transform: scale(1.04);
        }

        .footer {
            margin-top: 25px;
            font-size: 13px;
            opacity: 0.8;
            color: #ffe9b6;
        }

    </style>
</head>

<body>

<div class="overlay"></div>

<div class="card">
    <h1>Book Management Dashboard</h1>
    <p>Manage your library operations easily</p>

    <div class="operations">

        <a href="getbyId.jsp">Get Book by ID</a>
        <a href="addBook.jsp">Add New Book</a>
        <a href="updateBook.jsp">Update Book</a>
        <a href="removeBook.jsp">Remove Book</a>
        <a href="getBook">View All Books</a>
        <a href="index.jsp">Back to Home</a>

    </div>

    <div class="footer">
        Book Management System • Designed Elegantly
    </div>
</div>

</body>
</html>
