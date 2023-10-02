
package Modelo;

import webservice.User;


public class UserService {
    public UserService() {
        
    }

    public java.util.List<webservice.User> listar() {
        webservice.Servicios_Service service = new webservice.Servicios_Service();
        webservice.Servicios port = service.getServiciosPort();
        return port.listar();
    }

    public String agregar(java.lang.String dni, java.lang.String pass, java.lang.String apellidos, java.lang.String nombres, java.lang.String privilegio) {
        webservice.Servicios_Service service = new webservice.Servicios_Service();
        webservice.Servicios port = service.getServiciosPort();
        return port.agregar(dni, pass, apellidos, nombres, privilegio);
    }

    public User listarID(int id) {
        webservice.Servicios_Service service = new webservice.Servicios_Service();
        webservice.Servicios port = service.getServiciosPort();
        return port.listarID(id);
    }

    public String actualizar(int id, java.lang.String dni, java.lang.String pass, java.lang.String apellidos, java.lang.String nombres, java.lang.String privilegio) {
        webservice.Servicios_Service service = new webservice.Servicios_Service();
        webservice.Servicios port = service.getServiciosPort();
        return port.actualizar(id, dni, pass, apellidos, nombres, privilegio);
    }

    public User eliminar(int id) {
        webservice.Servicios_Service service = new webservice.Servicios_Service();
        webservice.Servicios port = service.getServiciosPort();
        return port.eliminar(id);
    }
    
    }

   
    
