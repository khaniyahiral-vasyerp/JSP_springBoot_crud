<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1" name="viewport"
	content="width=device-width, initial-scale=1.0">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<title>Profile page</title>
<style>
* {
	margin: 0;
	padding: 0;
	font-family: 'Poppins', sans-serif;
}

body {
	background-color: #1c1c25;
	font-family: Arial, sans-serif;
	padding: 20px;
}

html, body {
	height: 100%;
}

section {
	height: 100vh;
	width: 100%;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
}

section::before, .card1::before {
	content: '';
	position: absolute;
	width: 200px;
	height: 200px;
	border-radius: 50% 20px;
	opacity: .8;
}

section::before {
	top: 6%;
	left: 75%;
	background: linear-gradient(#AAFFA9, #11FFBD);
}

.card1::before {
	bottom: 2%;
	left: 10%;
	background: linear-gradient(#0098f0, #0457d3);
}

.card {
	display: flex;
	flex-direction: row;
	justify-content: space-between;
	align-items: center;
	border-radius: 30px;
	padding: 10px;
	box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.2);
	width: 900px;
	height: 480px;
	box-shadow: 0 15px 35px rgba(0, 0, 0, 0.5);
	background-color: rgba(255, 255, 255, 0.05);
	filter: blur(0.2px);
}

.left-container {
	flex: 1;
	max-width: 30%;
	display: flex;
	flex-direction: column;
	align-items: center;
	height: 100%;
	padding: 10px;
	margin: 30px;
	border-right: 1px solid #e4e4e4;
}

.right-container {
	flex: 1;
	max-width: 70%;
	height: 430px;
	padding: 10px;
	margin: 20px;
	border-radius: 30px;
}

@media only screen and (max-width: 860px) {
	.card {
		flex-direction: column;
		margin: 10px;
		height: auto;
		width: 100%;
	}
	.left-container {
		flex: 1;
		max-width: 100%;
		border: none;
	}
	section::before {
		top: 4%;
		left: 51%;
	}
}

@media only screen and (max-width: 600px) {
	.card {
		flex-direction: column;
		margin: 10px;
	}
	.left-container {
		flex: 1;
		max-width: 100%;
	}
	.card1::before {
		bottom: -14%;
		left: 1%;
	}
}

img {
	border: double 5px transparent;
	border-radius: 50%;
	background-image: linear-gradient(white, white),
		linear-gradient(to right, #ee00ff, #fbff00);
	background-origin: border-box;
	background-clip: content-box, border-box;
	width: 200px;
	height: 200px;
	max-width: 200px;
	margin-top: 70px;
}

h2 {
	font-size: 24px;
	margin-bottom: 5px;
}

h3 {
	text-align: center;
	font-size: 24px;
	margin-bottom: 5px;
}

.gradienttext {
	background-image: linear-gradient(to right, #00c6ff 0%, #0072ff 100%);
	color: transparent;
	-webkit-background-clip: text;
}

.social-icons {
	display: flex;
	justify-content: center;
	align-items: center;
}

.social-icons a {
	background-image: linear-gradient(to right, #00c6ff 0%, #0072ff 100%);
	display: inline-block;
	margin-right: 15px;
	padding: 15px;
	width: 30px;
	height: 30px;
	border-radius: 30px;
	text-align: center;
}

.social-icons i {
	font-size: 24px;
	color: rgba(255, 255, 255, .7);
	transition: all 0.3s ease;
}

.social-icons i:hover {
	color: rgba(255, 255, 255, 1);
}

p {
	font-size: 18px;
	margin-bottom: 20px;
	color: aliceblue
}

table {
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	width: 100%;
	height: 280px;
	border-collapse: collapse;
}

td {
	padding: 10px;
	border: none;
	border-radius: 20px;
	color: white;
}

td:first-child {
	font-weight: bold;
}

.credit a {
	text-decoration: none;
	color: #fff;
	font-weight: 800;
}

.credit {
	color: #fff;
	text-align: center;
	margin-top: 10px;
	font-family: Verdana, Geneva, Tahoma, sans-serif;
}
</style>
</head>
<body>
	<section>
		<div class="card1">
			<div class="card">
				<div class="left-container">
					<img
						src="https://cdn.pixabay.com/photo/2020/10/19/09/44/woman-5667299__480.jpg"
						alt="Profile Image">
					<h2 class="gradienttext"></h2>
					<p>${student.department}</p>
				</div>
				<div class="right-container">
					<h3 class="gradienttext">Profile Details</h3>
					<table>
						<tr>
							<td>Name :</td>
							<td>${student.name}</td>
						</tr>
						<tr>
							<td>Email :</td>
							<td>${student.email }</td>
						</tr>
						<tr>
							<td>Mobile :</td>
							<td>${student.phoneno }</td>
						</tr>
						<tr>
							<td>city :</td>
							<td>${student.city }</td>
						</tr>
						<tr>
							<td>State :</td>
							<td>${student.state }</td>
						</tr>
						<tr>
							<td>College name :</td>
							<td>${student.college_name }</td>
						</tr>

					</table>
					<div class="social-icons">
						<a href="#"><i class="fa fa-facebook-f"></i></a> <a href="#"><i
							class="fa fa-twitter"></i></a> <a href="#"><i
							class="fa fa-linkedin"></i></a> <a href="#"><i
							class="fa fa-github"></i></a>
					</div>
					
				</div>
			</div>
		</div>
	</section>

</body>
</html>