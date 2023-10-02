<%-- 
    Document   : edit
    Created on : 17/01/2022, 11:56:04
    Author     : Usuario
--%>

<%@page import="webservice.User"%>
<%@page import="Modelo.UserService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container mt-4 col-lg-4">
            <div class="card">
                <div class="card-header">
                    <h5>Actualizar  Empleado</h5>
                    
                    <%
                    int id = Integer.parseInt((String)request.getAttribute("iduser"));
                    UserService user = new UserService(); 
                    User  u = user.listarID(id);
                    %>
                    
                    
                </div>
                <div class="card-body">
                    <form action="Controlador">
                        <label>Id</label>
                        <input type="text" name="txtid" readonly="" class="form-control" value="<%=u.getId()%>">
                        <label>Dni</label>
                        <input type="text" name="txtdni" class="form-control" value="<%=u.getDni()%>">
                        <label>Pass</label>
                        <input type="text" name="txtpass" class="form-control" value="<%=u.getPass()%>">
                        <label>Apellidos</label>
                        <input type="text" name="txtapellidos" class="form-control" value="<%=u.getApellidos()%>">
                        <label>Nombres</label>
                        <input type="text" name="txtnombres" class="form-control" value="<%=u.getNombres()%>">
                        <label>Privilegio</label>
                        <input type="text" name="txtprivilegio" class="form-control" value="<%=u.getPrivilegio()%>">
                        <input type="submit" name="accion" value="Actualizar">
                        <a href="Controlador?accion=index">Regresar</a>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
