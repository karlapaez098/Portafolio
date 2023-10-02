<%-- 
    Document   : login
    Created on : 21/01/2022, 20:07:42
    Author     : tejad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="estilos/estilos.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <title>LOGINCRUD</title>
        
    </head>
        <body>
            <div class="container col-lg-2">
                <from acction="index">
                    <div class="from-group" text-center>
                        <img src="img/lo.jpg" heigth="80" width="90"/>
                        <p><strong>BIENVENIDO USUARIO</strong></p>
                    </div>
                    <div class="from-group">
                        <label>NOMBRES:</label><br>
                        <input class="from-control" type="text" name="txtnom" placeholder="INGRESE SU NOMBRE"><br>
                    </div>
                    <div class="from-group">
                        <label>EMAIL</label><br>
                        <input type="email" name="txtcorreo" placeholder="example@gmail.com" class="from-control"><br><br>
                    </div>
                    <a href="../index.jsp"><input class="btn btn-danger btn-block" type="submit" name="accion" value="ingresar"></a>
                </from>
                
            </div>

    </body>
     <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</html>

