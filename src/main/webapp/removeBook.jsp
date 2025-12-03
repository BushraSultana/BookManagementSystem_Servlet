<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Remove Book</title>

    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap" rel="stylesheet">

    <style>

        body {
            margin: 0;
            padding: 0;
            height: 100vh;
            font-family: "Poppins", sans-serif;

            /* ✨ Beautiful library background image */
            background: url("https://images.unsplash.com/photo-1507842217343-583bb7270b66?auto=format&fit=crop&w=1950&q=80")
                        no-repeat center center/cover;

            display: flex;
            align-items: center;
            justify-content: center;
        }

        .overlay {
            position: absolute;
            width: 100%;
            height: 100%;
            background: rgba(20, 50, 40, 0.45); /* Dark greenish overlay for readability */
            top: 0;
            left: 0;
        }

        .card {
            position: relative;
            width: 420px;
            background: rgba(255, 255, 255, 0.15);
            backdrop-filter: blur(15px);
            padding: 35px 30px;
            border-radius: 20px;
            text-align: center;
            color: #fdfdfd;
            box-shadow: 0 10px 40px rgba(0,0,0,0.35);
            animation: fadeIn 1s ease;
            z-index: 10;
        }

        @keyframes fadeIn {
            from {opacity: 0; transform: translateY(20px);}
            to {opacity: 1; transform: translateY(0);}
        }

        h2 {
            font-size: 28px;
            font-weight: 600;
            margin-bottom: 20px;
            color: #e8f5e9; /* Soft mint */
        }

        label {
            display: block;
            text-align: left;
            font-size: 15px;
            margin-bottom: 5px;
            opacity: 0.95;
        }

        input[type="number"] {
            width: 100%;
            padding: 12px;
            margin-top: 10px;
            border-radius: 10px;
            border: none;
            background: rgba(255, 255, 255, 0.35);
            color: #fff;
            outline: none;
            font-size: 16px;
            transition: 0.3s;
        }

        input[type="number"]:focus {
            background: rgba(255, 255, 255, 0.55);
            box-shadow: 0 0 10px rgba(255, 255, 255, 0.5);
        }

        .btn {
            width: 100%;
            margin-top: 22px;
            padding: 13px;
            border: none;
            border-radius: 10px;
            font-size: 17px;
            font-weight: 600;
            cursor: pointer;

            /* warm beige + green theme */
            background: #e6dcc6;
            color: #254336;

            transition: 0.3s ease;
        }

        .btn:hover {
            background: #fff4df;
            transform: scale(1.03);
        }

    </style>
</head>

<body>

<div class="overlay"></div>

<div class="card">
    <h2>Remove Book</h2>

    <form action="removeBook" method="get">

        <label>Enter Book ID:</label>
        <input type="number" name="id" placeholder="Enter Book ID" required />

        <button type="submit" class="btn">Remove Book</button>
    </form>
</div>

</body>
</html>
