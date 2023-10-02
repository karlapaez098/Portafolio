
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container mt-4">
            <div class="card">
                <div class="card-header">
                    <h5>Agregar Nuevo Usuario</h5>
                </div>
                <div class="card-body">
                    <form action="Controlador">
                        <label>Dni</label>
                        <input type="text" name="txtdni" class="form-control">
                        <label>Pass</label>
                        <input type="text" name="txtpass" class="form-control">
                        <label>Apellidos</label>
                        <input type="text" name="txtapellidos" class="form-control">
                        <label>Nombres</label>
                        <input type="text" name="txtnombres" class="form-control">
                        <label>Privilegio</label>
                        <input type="text" name="txtprivilegio" class="form-control">
                        <input type="submit" name="accion" value="Guardar">
                        <a href="Controlador?accion=index">Regresar</a>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
