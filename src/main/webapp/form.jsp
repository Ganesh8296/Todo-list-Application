<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Note</title>
    <style type="text/css">
        .page-background {
            min-height: 100vh;
            margin: 0;
            padding: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .form-container {
            background-color: #eeeeee;
            padding: clamp(1rem, 5vw, 2.5rem);
            border-radius: 12px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            width: 90%;
            max-width: 600px;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .content-form h2 {
            text-align: center;
            color: #333;
            margin-bottom: 2rem;
            font-size: clamp(1.3rem, 4vw, 1.8rem);
        }

        .form-group {
            margin-bottom: 1.5rem;
        }

        label {
            display: block;
            margin-bottom: 0.5rem;
            color: #212121;
            font-weight: bold;
            font-size: clamp(0.9rem, 2vw, 1rem);
        }

        input[type="text"], textarea {
            width: 100%;
            padding: clamp(0.5rem, 2vw, 1rem);
            border: 2px solid #ddd;
            background-color: #eeeeee;
            border-radius: 6px;
            font-size: clamp(0.9rem, 2vw, 1rem);
            transition: all 0.3s ease;
        }

        textarea {
            height: clamp(150px, 30vh, 200px);
            resize: vertical;
        }

        input[type="text"]:focus, textarea:focus {
            outline: none;
            border-color: #007bff;
            box-shadow: 0 0 8px rgba(76, 175, 80, 0.3);
        }

        .submit-btn {
            background-color: #3395ff;
            color: white;
            padding: clamp(0.8rem, 2vw, 1rem) clamp(1rem, 3vw, 1.5rem);
            border: none;
            border-radius: 6px;
            cursor: pointer;
            width: 100%;
            font-size: clamp(1rem, 2.5vw, 1.1rem);
            font-weight: bold;
            transition: all 0.3s ease;
            margin-top: 1rem;
        }

        @media (hover: hover) and (min-width: 768px) {
            .form-container:hover {
                transform: translateY(-5px);
                box-shadow: 0 6px 20px rgba(0, 0, 0, 0.15);
            }

            .submit-btn:hover {
                background-color: #007bff;
                transform: translateY(-2px);
                box-shadow: 0 4px 12px rgba(76, 175, 80, 0.2);
            }

            .submit-btn:active {
                transform: translateY(0);
            }
        }

        @media screen and (max-width: 768px) {
            .page-background {
                padding: 15px;
            }
        }

        @media screen and (max-width: 480px) {
            .form-container {
                padding: 1rem;
            }
        }
    </style>
</head>
<body>
    <div class="page-background">
        <div class="form-container">
            <form class="content-form" action="form_submitt" method="post">
                <h2>Write Your Note</h2>
                <div class="form-group">
                    <label for="title">Title</label>
                    <input type="text" id="title" name="title" placeholder="Enter your title" required>
                </div>
                <div class="form-group">
                    <label for="content">Content</label>
                    <textarea id="content" name="content" placeholder="Write your content here..." required></textarea>
                </div>
                <button type="submit" class="submit-btn">Submit</button>
            </form>
        </div>
    </div>
</body>
</html>
