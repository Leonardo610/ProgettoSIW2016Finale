<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="it">

<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">
<link rel="shortcut icon"
	href="./lib/resources/bastone_asclepio_ico.ico" />

<title>Area Utenti</title>

<!-- Bootstrap core CSS -->
<link href="./lib/css/bootstrap.min.css" rel="stylesheet">

<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<link href="./lib/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="./lib/css/signin.css" rel="stylesheet">

<!-- Css for the template of navigation bar -->
<link href="./lib/css/index.css" rel="stylesheet">

<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
<!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
<script src="../../assets/js/ie-emulation-modes-warning.js"></script>

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
                                            <!-- NAVBAR -->
                                            
                                            
	<f:view>
		<br>
		<div class="panel panel-primary">
			<div class="panel-heading">
				<h3 class="panel-title">ClinicaAcme</h3>
				<span class="pull-right">

					<ul class="nav panel-tabs">
						<li class="active"><a href="./index.jsp">Home</a></li>
						<li><a href="./chiSiamo.jsp">Chi siamo</a></li>
						<li><a href="./tipologieEsami.jsp">Esami</a></li>
						<li><a href="./login.jsp">Area Utenti</a></li>
						<li><a href="./info.jsp">Info</a></li>
						<li><a href="./contatti.jsp">Contatti</a></li>
					</ul>
				</span>
			</div>
			<div class="panel-body">
				<div class="tab-content">
					<!--<div class="tab-pane active" id="tab1"></div> -->
					<div class="tab-pane" id="tab2"></div>
					<div class="tab-pane" id="tab3"></div>
					<div class="tab-pane" id="tab4"></div>
				</div>
			</div>
                                           <!-- NAVBAR END -->
                                           
                                           
			<div class="container">

				<h:form styleClass="form-signin">
					<h2 class="form-signin-heading">Accedi come paziente:</h2>
					<label for="inputUsername">Username: </label>
					<h:inputText value="#{patientController.username}"
						id="inputUsername" styleClass="form-control" required="true"
						title="Username" requiredMessage="Username obbligatorio" />
					<h:message for="inputUsername" />
					<br>
					<label for="inputPassword">Password: </label>
					<h:inputSecret value="#{patientController.pwd}" id="inputPassword"
						styleClass="form-control" required="true" title="Password"
						requiredMessage="Password obbligatoria" />
					<h:message for="inputPassword" />
					<br>
					<label class="control-label" for="inputError1">${patientController.loginErr}</label>
					<h:commandButton styleClass="btn btn-lg btn-success btn-block"
						value="Accedi" action="#{patientController.validate}" />
					<br>
					<h:commandButton styleClass="btn btn btn-danger btn-block" value="Logout" action="#{patientController.logout}" />
				</h:form>
			</div>
		</div>
	</f:view>
</body>
</html>