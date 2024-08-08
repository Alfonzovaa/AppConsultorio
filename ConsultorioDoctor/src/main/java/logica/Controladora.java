package logica;

import java.util.ArrayList;
import java.util.List;
import persistencia.ControladoraPersistencia;

public class Controladora {
    
    ControladoraPersistencia controlPersis = new ControladoraPersistencia();

    public void crearUsuario(String nombreUsuario, String contrasenia,String rol){
        
        Usuario usu = new Usuario();
        usu.setNombreUsuario(nombreUsuario);
        usu.setContrasenia(contrasenia);
        usu.setRol(rol);
        
        controlPersis.crearUsuario(usu);
    }
    
    public void crearPaciente(String cedula, String nombre, String apellido, String telefono,String direccion, String fecha_nac,String tiene_OS, String tipo_sangre, String condicion, String fecha_cita, String requiereCirugia){
        
        Paciente pac = new Paciente();
        pac.setCedula(cedula);
        pac.setNombre(nombre);
        pac.setApellido(apellido);
        pac.setTelefono(telefono);
        pac.setDireccion(direccion);
        pac.setFecha_nac(fecha_nac);
        pac.setTiene_OS(tiene_OS);
        pac.setTipo_sangre(tipo_sangre);
        pac.setCondicion(condicion);
        pac.setFecha_cita(fecha_cita);
        pac.setRequiereCirugia(requiereCirugia);
        
        
        controlPersis.crearPaciente(pac);
    }
    
    public void crearCirugia(int idPac, String tipo, String fecha_ciru, String hora_ciru){
        
        Cirugia ciru = new Cirugia();
        ciru.setPaciente(idPac);
        ciru.setTipo(tipo);
        ciru.setFecha_ciru(fecha_ciru);
        ciru.setHora_ciru(hora_ciru);
        
        controlPersis.crearCirugia(ciru);
    }   

    public List<Usuario> getUsuarios() {
        
        return controlPersis.getUsuarios();
        
    }

    public List<Cirugia> getCirugias() {
        return controlPersis.getCirugias();
    }

    public List<Paciente> getPacientes() {
        return controlPersis.getPacientes();
    }

    public void borrarUsuario(int id) {
        controlPersis.borrarUsuario(id);
    }

    public void borrarCirugia(int id) {
        controlPersis.borrarCirugia(id);
    }

    public void borrarPaciente(int id) {
        controlPersis.borrarPaciente(id);
    }

    public Usuario traerUsuario(int id) {
        return controlPersis.traerUsuario(id);
    }

    public Cirugia traerCirugia(int id) {
        return controlPersis.traerCirugia(id);
    }

    public Paciente traerPaciente(int id) {
        return controlPersis.traerPaciente(id);
    }

    public void editarUsuario(Usuario usu) {
        controlPersis.editarUsuario(usu);
    }

    public void editarCirugia(Cirugia ciru) {
        controlPersis.editarCirugia(ciru);
    }

    public void editarPaciente(Paciente pac) {
        controlPersis.editarPaciente(pac);
    }
}