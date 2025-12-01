<!DOCTYPE html>
<html>
<head>
    <title>Book Management</title>

    <style>
        body {
            font-family: 'Segoe UI', Arial, sans-serif;
            background: #f3f2ff;  /* soft lavender */
            margin: 0;
            padding: 0;
        }

        .container {
            width: 420px;
            margin: 60px auto;
            background: #ffffff;
            padding: 28px;
            border-radius: 14px;
            box-shadow: 0px 6px 18px rgba(0, 0, 0, 0.15);
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #5a4fcf;
            font-weight: 600;
        }

        label {
            font-size: 15px;
            color: #444;
            font-weight: 500;
        }

        input[type="number"],
        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin: 8px 0 16px 0;
            border: 1px solid #c9c7f5;
            border-radius: 6px;
            outline: none;
            font-size: 14px;
        }

        input[type="number"]:focus,
        input[type="text"]:focus {
            border-color: #7a6ff0;
            box-shadow: 0px 0px 5px rgba(122, 111, 240, 0.5);
        }

        .btn {
            width: 100%;
            padding: 10px;
            background: #7a6ff0;
            border: none;
            color: white;
            border-radius: 6px;
            cursor: pointer;
            font-size: 15px;
            margin-top: 5px;
        }

        .btn:hover {
            background: #685ee8;
        }

        .links {
            margin-top: 22px;
            display: flex;
            flex-direction: column;
            gap: 12px;
        }

        .links a {
            text-decoration: none;
            background: #e8e6ff;
            padding: 10px;
            text-align: center;
            border-radius: 6px;
            color: #4a42b8;
            font-weight: 500;
            border: 1px solid #d1ceff;
            transition: 0.3s;
        }

        .links a:hover {
            background: #d9d6ff;
            color: #2e2894;
        }

    </style>
</head>

<body>

<div class="container">
    <h2>Add New Book</h2>

    <form action="addBook" method="post">

        <label>ID:</label>
        <input type="number" name="id" required>

        <label>Name:</label>
        <input type="text" name="name" required>

        <label>Author:</label>
        <input type="text" name="authorName" required>

        <input type="submit" value="Submit" class="btn">

        <div class="links">
            <a href="getById.html">Get Book by ID</a>
            <a href="updateBook.html">Update Book</a>
            <a href="removeBook.html">Remove Book</a>
            <a href="getBook">Get All Books</a>
        </div>

    </form>
</div>

</body>
</html>
