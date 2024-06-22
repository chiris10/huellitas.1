<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Huellitas1.WebForm1" %>

<!DOCTYPE html>
<html>
<head>
	<title>Registro de Animales</title>
	<style>
		/* Estilos para la plantilla */
		body {
			font-family: Arial, sans-serif;
		}
		.form-container {
			width: 50%;
			margin: 40px auto;
			padding: 20px;
			border: 1px solid #ccc;
			border-radius: 10px;
			box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
		}
		.form-label {
			display: block;
			margin-bottom: 10px;
		}
		.form-input {
			width: 100%;
			padding: 10px;
			margin-bottom: 20px;
			border: 1px solid #ccc;
		}
		.form-input[type="file"] {
			padding: 10px 0;
		}
		.form-button {
			background-color: #4CAF50;
			color: #fff;
			padding: 10px 20px;
			border: none;
			border-radius: 5px;
			cursor: pointer;
		}
		.form-button:hover {
			background-color: #3e8e41;
		}
	</style>
</head>
<body>
	<div class="form-container">
		<h2>Registro de Animales</h2>
		<form>
			<div class="form-label">
				<label for="nombre">Nombre:</label>
				<input type="text" id="nombre" class="form-input" required>
			</div>
			<div class="form-label">
				<label for="edad">Edad:</label>
				<input type="number" id="edad" class="form-input" required>
			</div>
			<div class="form-label">
				<label for="peso">Peso (kg):</label>
				<input type="number" id="peso" class="form-input" required>
			</div>
			<div class="form-label">
				<label for="foto">Foto:</label>
				<input type="file" id="foto" class="form-input" required>
			</div>
			<div class="form-label">
				<label for="comentario">Comentario:</label>
				<textarea id="comentario" class="form-input" required></textarea>
			</div>
			<button class="form-button" type="submit">Registrar</button>
		</form>
	</div>
</body>
</html>