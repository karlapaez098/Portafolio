/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelado.DAOUsuarios;
import uml.Usuarios;

/**
 *
 * @author hector.gonzalez
 */
public class servUsuarios extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            String usuario="";
            String contra="";
            DAOUsuarios dao = new DAOUsuarios();
            List<Usuarios> datos = new ArrayList<Usuarios>();
            
            
            if(request.getParameter("btnIniciar")!=null){
                usuario =  request.getParameter("txtUsuario");
                contra = request.getParameter("txtContra");              
                datos = dao.accesar(usuario, contra);
                if(datos.size()> 0){
                    request.setAttribute("datos", datos);                  
                    request.getRequestDispatcher("inicio.jsp").forward(request, response);               
                }else{
                    request.setAttribute("fail","No hay acceso!");
                    request.getRequestDispatcher("login.jsp").forward(request, response);
                }
                
            }
        }
    }
}