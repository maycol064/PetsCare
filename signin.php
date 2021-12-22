<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="./assets/veterinario.png">
    <link rel="stylesheet" href="./styles/styles.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Permanent+Marker&family=Roboto:wght@900&display=swap" rel="stylesheet">
    <title>Pets Care</title>
</head>
<body class="body-bg">
    <nav class="nav-bar">
        <section class="nav-bar-logo">
            <img src="./assets/veterinarioB.png" alt="">
            <p class="nav-bar-title">Pets Care</p>
        </section>
        <section class="go-to-login">
            <a href="index.php">¿La clínica está registrada? Inicia Sesión</a>
        </section>
    </nav>
    <section class="registrer">
        <h2>Datos de la Sucursal</h2>
        <form action="" class="register-branch" post="POST">
            <label for="state">Gerente: </label>
            <input type="text" name="manager"><br><br>
            <label for="state">Estado o municipio: </label>
            <input type="text" name="state"><br><br>
            <label>Disponibilidad: </label>
            <input type="radio" name="disponibility" id="1">
            <label for="disponibylity-yes">Sí</label>
            <input type="radio" name="disponibility" id="0">
            <label for="disponibylity-no">No</label><br><br>
            <label for="state">Número consultorios: </label>
            <input type="number" name="num-consult" min="2" max="20"><br><br>
            <label>Servicios:</label><br>
            <label>Atención médica:</label>
            <input type="radio" name="atencion" id="si" value="1">
            <label >Sí</label>
            <input type="radio" name="atencion" id="no" value="0">
            <label>No</label><br>
            <label>Hospitalización:</label>
            <input type="radio" name="hospitalizacion" id="si" value="1">
            <label>Sí</label>
            <input type="radio" name="hospitalizacion" id="no" value="0">
            <label>No</label><br>
            <label>Vacunación:</label>
            <input type="radio" name="vacuna" id="si" value="1">
            <label>Sí</label>
            <input type="radio" name="vacuna" id="no" value="0">
            <label>No</label><br>
            <label>Desparacitación:</label>
            <input type="radio" name="desparacitacion" id="si" value="1">
            <label>Sí</label>
            <input type="radio" name="desparacitacion" id="no" value="0">
            <label>No</label><br>
            <label>Alimento:</label>
            <input type="radio" name="alimento" id="si" value="1">
            <label>Sí</label>
            <input type="radio" name="alimento" id="no" value="0">
            <label>No</label><br>
            <label>Accesorios:</label>
            <input type="radio" name="accesorios" id="si" value="1">
            <label>Sí</label>
            <input type="radio" name="accesorios" id="no" value="0">
            <label>No</label><br>          
            <label>Estética:</label>
            <input type="radio" name="estetica" id="si" value="1">
            <label>Sí</label>
            <input type="radio" name="estetica" id="no" value="0">
            <label>No</label><br><br><br>
            <input type="submit" value="Enviar" class="sent-form-register">
        </form>
    </section>
</body>
</html>