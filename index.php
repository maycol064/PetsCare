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
    <title>PetsCare</title>
</head>
<body>
    
    <div class="login">
        <h1 class="title">Pets Care</h1>
        <img src="./assets/veterinarioB.png" class="icon-login">
        <form action="./helpers/main.php" method="post" class="form-login">
            <input type="text" class="fields-login user" placeholder="Usuario">
            <input type="password" class="fields-login password" placeholder="Contraseña">
            <button type="submit" class="submit">Entrar</button>
        </form>
        <a href="./helpers/signin.php" class="signin-button">Registrar Clínica</a>
    </div>
</body>
</html>