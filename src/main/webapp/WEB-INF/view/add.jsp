<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
	crossorigin="anonymous"></script>

<meta charset="ISO-8859-1">
<title>Add Details</title>
<style>
/*form {
    max-width: 400px;
    margin: auto;
    padding: 20px;
    border: 1px solid #3498db;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    background-color: #f4f4f4;
  }

  /* Style the form labels */
/* label {
    display: block;
    margin-bottom: 8px;
    font-weight: bold;
    color: #2c3e50;
  }

  /* Style the form inputs *
  input {
    width: 100%;
    padding: 10px;
    margin-bottom: 15px;
    box-sizing: border-box;
    border: 1px solid #3498db;
    border-radius: 4px;
  }

  /* Style the checkbox */
/* .form-check-input {
    margin-right: 5px;
  }

  /* Add animation to the submit button *
  button {
    width: 100%;
    background-color: #3498db;
    color: white;
    padding: 12px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s ease;
  }

  button:hover {
    background-color: #2980b9;
  }
  h1
  {
     text-align:center;
  }*/
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: "Open Sans", sans-serif;
}

body {
	display: flex;
	align-items: center;
	justify-content: center;
	min-height: 100vh;
	width: 100%;
	padding: 0 10px;
}

body::before {
	content: "";
	position: absolute;
	width: 100%;
	height: 100%;
	background:
		url("https://www.codingnepalweb.com/demos/create-glassmorphism-login-form-html-css/hero-bg.jpg"),
		#000;
	background-position: center;
	background-size: cover;
}

.wrapper {
	width: 400px;
	border-radius: 8px;
	padding: 30px;
	text-align: center;
	border: 1px solid rgba(255, 255, 255, 0.5);
	backdrop-filter: blur(9px);
	-webkit-backdrop-filter: blur(9px);
}

form {
	display: flex;
	flex-direction: column;
}

h2 {
	font-size: 2rem;
	margin-bottom: 20px;
	color: #fff;
}

.input-field {
	position: relative;
	border-bottom: 2px solid #ccc;
	margin: 15px 0;
}

.input-field label {
	position: absolute;
	top: 50%;
	left: 0;
	transform: translateY(-50%);
	color: #fff;
	font-size: 16px;
	pointer-events: none;
	transition: 0.15s ease;
}

.input-field input {
	width: 100%;
	height: 40px;
	background: transparent;
	border: none;
	outline: none;
	font-size: 16px;
	color: #fff;
}

.input-field input:focus ~label, .input-field input:valid ~label {
	font-size: 0.8rem;
	top: 10px;
	transform: translateY(-120%);
}

.forget {
	display: flex;
	align-items: center;
	justify-content: space-between;
	margin: 25px 0 35px 0;
	color: #fff;
}

#remember {
	accent-color: #fff;
}

.forget label {
	display: flex;
	align-items: center;
}

.forget label p {
	margin-left: 8px;
}

.wrapper a {
	color: #efefef;
	text-decoration: none;
}

.wrapper a:hover {
	text-decoration: underline;
}

button {
	background: #fff;
	color: #000;
	font-weight: 600;
	border: none;
	padding: 12px 20px;
	cursor: pointer;
	border-radius: 3px;
	font-size: 16px;
	border: 2px solid transparent;
	transition: 0.3s ease;
}

button:hover {
	color: #fff;
	border-color: #fff;
	background: rgba(255, 255, 255, 0.15);
}

.register {
	text-align: center;
	margin-top: 30px;
	color: #fff;
}
</style>

</head>
<body>
	<!--  div class="mb-3">
			<label for="exampleInputEmail1" class="form-label">Name : </label> <input
				type="text" class="form-control" id="exampleInputEmail1" name="name"
				aria-describedby="emailHelp">
		</div>
		<div class="mb-3">
			<label for="exampleInputPassword1" class="form-label">Email :
			</label> <input type="text" class="form-control" id="exampleInputPassword1"
				name="email">
			<div id="emailHelp" class="form-text">We'll never share your
				email with anyone else.</div>
		</div>
		<div class="mb-3">
			<label for="exampleInputEmail1" class="form-label">Phone : </label> <input
				type="text" class="form-control" id="exampleInputEmail1"
				name="phone">
		</div>
		<div class="mb-3">
			<label for="exampleInputEmail1" class="form-label">:City
			</label> <input type="text" class="form-control" id="exampleInputEmail1"
				name="city">
		</div>
		<div class="mb-3">
			<label for="exampleInputEmail1" class="form-label">:State
			</label> <input type="text" class="form-control" id="exampleInputEmail1"
				name="state">
		</div>
		<div class="mb-3">
			<label for="exampleInputEmail1" class="form-label">:College name
			</label> <input type="text" class="form-control" id="exampleInputEmail1"
				college_name="city">
		</div>
		<div class="mb-3">
			<label for="exampleInputEmail1" class="form-label">:Department 
			</label> <input type="text" class="form-control" id="exampleInputEmail1"
				name="department">
		</div>
		
		
		<button type="submit" class="btn btn-primary">Submit</button>
	</form-->
	<div class="wrapper">
		<form action="/student/add" method="post">
			<h2>Add Student Details</h2>
			<div class="input-field">
				<input type="text" name="name" required> <label>Enter your Name</label>
			</div>
			<div class="input-field">
				<input type="email" name="email" required> <label>Enter your
					Email</label>
			</div>
			<div class="input-field">
				<input type="text" name="phoneno" required> <label>Enter your Phone
					no</label>
			</div>
			<div class="input-field">
				<input type="text"  name="department" required> <label>Enter your
					Department</label>
			</div>
			<div class="input-field">
				<input type="text" name="city" required> <label>Enter your City</label>
			</div>
			<div class="input-field">
				<input type="text" name="state" required> <label>Enter your State</label>
			</div>

			<div class="input-field">
				<input type="text"  name="college_name" required> <label>Enter your
					College name</label>
			</div>





			<button type="submit">Add Your Data</button>

		</form>
	</div>

</body>
</html>