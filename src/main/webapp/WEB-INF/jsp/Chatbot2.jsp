<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script>
@import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap');

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: 'Poppins', sans-serif;
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
}

.wrapper {
    width: 370px;
}

.wrapper .title {
    background: #007bff;
    color: white;
    line-height: 2.5;
    border-radius: 5px 5px 0 0;
    text-align: center;
    font-size: 20px;
}

.wrapper .box {
    border: 1px solid #efefef;
    padding: 10px 15px;
    min-height: 400px;
    max-height: 400px;
}

.wrapper .box .item {
    display: flex;
    float: left;
    margin: 10px 0;
}

.wrapper .box .item .icon {
    background: #007bff;
    color: white;
    width: 40px;
    height: 40px;
    text-align: center;
    line-height: 40px;
    border-radius: 50%;
}

.wrapper .box .item .msg {
    background: #007bff;
    color: white;
    border-radius: 10px;
    width: 150px;
    margin-left: 10px;
}

.wrapper .box .item .msg p {
    padding: 10px;
}

.wrapper .box .item.right {
    float: right;
}

.wrapper .box .item.right .msg {
    background: #efefef;
    color: #333;
}

.wrapper .typing-area {
    width: 100%;
    background: #efefef;
    height: 50px;
    display: flex;
    justify-content: center;
    align-items: center;
    padding: 10px;
}

.wrapper .typing-area .input-field {
    width: 100%;
    position: relative;
}

.wrapper .typing-area .input-field input {
    width: 100%;
    padding: 10px;
    border: 1px solid transparent;
    border-radius: 3px;
    outline: none;
    padding-right: 70px;
    font-family: 'Poppins', sans-serif;
    transition: 0.3s all ease;
}

.wrapper .typing-area .input-field input:focus {
    border-color: #007bff;
}

.wrapper .typing-area .input-field button {
    position: absolute;
    top: 50%;
    right: 10px;
    transform: translateY(-50%);
    background: transparent;
    border: 1px solid #007bff;
    padding: 5px 10px;
    border-radius: 3px;
    color: #007bff;
    outline: none;
    cursor: pointer;
    opacity: 0;
    pointer-events: none;
    transition: 0.3s all ease;
}

.wrapper .typing-area .input-field button:hover {
    background: #007bff;
    color: white;
}

.wrapper .typing-area .input-field input:valid ~ button {
    opacity: 1;
    pointer-events: auto;
}
</script>
</head>
<body>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
    <link rel="stylesheet" href="style.css">
    <title>Chatbot - Brave Coder</title>
</head>
<body>
    <div class="wrapper">
        <div class="title">Simple Chatbot</div>
        <div class="box">
            <div class="item">
                <div class="icon">
                    <i class="fa fa-user"></i>
                </div>
                <div class="msg">
                    <p>Hello everyone, How are you?</p>
                </div>
            </div>
            <br clear="both">
            <div class="item right">
                <div class="msg">
                    <p>Nice</p>
                </div>
            </div>
        </div>
        
        <div class="typing-area">
            <div class="input-field">
                <input type="text"  placeholder="Type your message" required>
                <button>Send</button>
            </div>
        </div>
    </div>
</body>
</html>



</body>
</html>