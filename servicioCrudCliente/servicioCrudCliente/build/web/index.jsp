<%@page import="java.util.List"%>
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
        <div class="container mt-4">
            <div class="card">
                <div class="card-header">
                    
                    <a href="Controlador?accion=add" class=" btn btn-primary">Nuevo usuario</a>
                </div>
                <div class="card-body">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>DNI</th>
                                <th>PASS</th>
                                <th>APELLIDOS</th>
                                <th>NOMBRES</th>
                                <th>PRIVILEGIO</th>
                                <th>ACCIONES</th>                          
                            </tr>
                        </thead>
                        <tbody>
                            <%
                            UserService user = new UserService();
                            List<User> datos= user.listar();
                            for(User u:datos){
                            %>
                            <tr>
                                <td><%=u.getId()%></td>
                                <td><%=u.getDni()%></td>
                                <td><%=u.getPass()%></td>
                                <td><%=u.getApellidos()%></td>
                                <td><%=u.getNombres()%></td>
                                <td><%=u.getPrivilegio()%></td>
                            
                                <td>
                                    <a href="Controlador?accion=editar&id=<%= u.getId()%>" class="btn btn-warning">Edit</a>
                                    <a href="Controlador?accion=eliminar&id=<%=u.getId()%>" class="btn btn-danger">Delete</a>
                                </td>
                            </tr>
                            <%}%>
                        </tbody>
                    </table>
                    
                </div>
            </div>
        </div>
    </body>
</html>