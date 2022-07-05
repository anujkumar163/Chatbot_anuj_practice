<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://www.w3schools.com/lib/w3.js"></script>
<style>
body {
  font: 15px arial, sans-serif;
  background-color: #d9d9d9;
  padding-top: 15px;
  padding-bottom: 15px;
  background-color: lightblue;
  background-image: url("/image/videoposter.jpg" height="50" width="50");
  background: linear-gradient(-45deg, white 30%, rgb(216, 183, 226) 0%);
}

#bodybox {
  margin-top: 400px;
  margin-left: 1000px;
  max-width: 550px;
  font: 15px arial, sans-serif;
  background-color: white;
  border-style: solid;
  border-width: 1px;
  padding-top: 20px;
  padding-bottom: 25px;
  padding-right: 25px;
  padding-left: 25px;
  box-shadow: 5px 5px 5px grey;
  border-radius: 15px;
}

#chatborder {
  border-style: solid;
  background-color: #f6f9f6;
  border-width: 3px;
  margin-top: 20px;
  margin-bottom: 20px;
  margin-left: 20px;
  margin-right: 20px;
  padding-top: 10px;
  padding-bottom: 15px;
  padding-right: 20px;
  padding-left: 15px;
  border-radius: 15px;
}

.chatlog {
   font: 15px arial, sans-serif;
}

#chatbox {
  font: 17px arial, sans-serif;
  height: 22px;
  width: 100%;
  background: linear-gradient(-45deg, white 30%, rgb(116, 200, 216) 0%);
}

h1 {
  margin: auto;
}

pre {
  background-color: #f0f0f0;
  margin-left: 20px;
}

#hidebtn{
	margin-left: 1000px;
	margin-: 500px;

}

</style>
<script>
var messages = [], 
lastUserMessage = "", 
botMessage = "", 
botName = 'Chatbot', 
talking = true; 

function chatbotResponse() {
talking = true;
botMessage = "I'm confused"; 

if (lastUserMessage === 'hi' || lastUserMessage =='hello') {
  const hi = ['hi','howdy','hello']
  botMessage = hi[Math.floor(Math.random()*(hi.length))];;
}

if (lastUserMessage === 'name') {
  botMessage = 'My name is ' + botName;
}

if (lastUserMessage === ' what is your name') {
	botMessage = 'My name is ' + botName;
}

if (lastUserMessage === 'who is your father') {
	botMessage = 'He is not my Father but creater. People Know his with name Anuj ';
}

if (lastUserMessage === 'job') {
	botMessage = 'My job is in Computer field';
}

if (lastUserMessage === 'who is anuj') {
	botMessage = 'GOD ANUJ is my almighty, the creater of whole world. ';
	}
if (lastUserMessage === 'which progreaming language is best for developer') {
	 botMessage = 'Their are meany like:- 1. Python 2.Java 3.c++ 4.Ruby';
}

if (lastUserMessage === 'java') {
	botMessage = 'java is object oriented programming language? ';
}

if (lastUserMessage === 'python') {
	botMessage = 'Python is also object oriented programming language and now beceaming popullar because of fast and easy than java';
}

if (lastUserMessage === 'c++') {
	botMessage = 'C++ is old programming languiage which is generaly used for system programing';
}

if (lastUserMessage === 'name some good IT companies') {
	botMessage = 'Here is the list:- 1.ITC 2.Mihendra 3.Infotech 4.Micro Soft 5.FaceBook';
}
if (lastUserMessage === 'what is your gender') {
	botMessage = 'my gender is machine';
}

if (lastUserMessage === 'what is your age') {
	botMessage = 'tare se bus 2 sale chota hu, per tari lane ki kvat rakhta hu';
}

if (lastUserMessage === 'kya bola sale') {
	botMessage = 'vahi jo tu suna gandu';
}

if (lastUserMessage === 'help') {
	botMessage = 'which kind of help you want sir. 1.medical  2.Criminal 3.Mental 4.IT Support';
}

if (lastUserMessage === 'medical') {
	botMessage = 'for medical help call hr of pradish';
}

if (lastUserMessage === 'criminal') {
	botMessage = 'criminal help meet the menager of companie he is criminal background';
}

if (lastUserMessage === 'mental') {
	botMessage = 'for mental help go to lunatic hospital';
}

if (lastUserMessage === 'IT support') {
	botMessage = 'for IT support call to this support number 123*******8';
}

if (lastUserMessage === 'what is praadis') {
	botMessage = 'pradish is small scale IT companie';
}

if (lastUserMessage === 'where is praadis') {
	botMessage = 'pradish is in Ashima mall, Bhj';
}

}

function newEntry() {
 
if (document.getElementById("chatbox").value != "") {
  
  lastUserMessage = document.getElementById("chatbox").value;
  
  document.getElementById("chatbox").value = "";
 
  messages.push(lastUserMessage);
  
  chatbotResponse();
  
  messages.push("<b>" + botName + ":</b> " + botMessage);
  
  Speech(botMessage);
  
  for (var i = 1; i < 8; i++) {
    if (messages[messages.length - i])
      document.getElementById("chatlog" + i).innerHTML = messages[messages.length - i];
  }
}
}
function Speech(say) {
if ('speechSynthesis' in window && talking) {
  var utterance = new SpeechSynthesisUtterance(say);
  
  speechSynthesis.speak(utterance);
}
}
document.onkeypress = keyPress;
function keyPress(e) {
var x = e || window.event;
var key = (x.keyCode || x.which);
if (key == 13 || key == 3) {
  newEntry();
}
if (key == 38) {
  console.log('hi')
}
}

function placeHolder() {
document.getElementById("chatbox").placeholder = "";
}

// save into file 


//save into file complete


</script>
</head>
<body>

<div>
<form action="getans" method="get">
	
	ID:-
	<input type="text" value="${tablebot.id}">
	Question:-
	<input type="text" value="${tablebot.que}">
	Answer:-
	<input type="text" value="${tablebot.ans}" placeholder="answer will be show here">
	
	<input type="button" value="show">
	</form><br>
	
	
	<form action="save" method="post">
	ID:-
	<input type="text">
	Question:-
	<input type="text" name="que">
	Answer:-
	<input type="text" name="ans">
	<input type="submit" value="save">
	</form>


</div>

<div id='bodybox'>
  <div id='chatborder'>
  
    <p id="chatlog5" class="chatlog">&nbsp;</p>
    <p id="chatlog4" class="chatlog">&nbsp;</p>
    <p id="chatlog3" class="chatlog">&nbsp;</p>
    <p id="chatlog2" class="chatlog">&nbsp;</p>
    <p id="chatlog1" class="chatlog">&nbsp;</p>
    
    <input type="text" name="chat" id="chatbox"  placeholder="Hi there! Type here to talk to me." onfocus="placeHolder()" ><br>
   	<form action="save" method="post">
   	<input type="text" name="chat" onfocus="placeHolder()">
   	<input type="submit" value="ask me">
   	</form>
  </div>
</div>
<div>
</div><br>

<p>
<button type="button"  id ="hidebtn" class="btn btn-info" onclick="w3.toggleShow('#bodybox')">ChatBot</button>
</p>

</body>
</html>