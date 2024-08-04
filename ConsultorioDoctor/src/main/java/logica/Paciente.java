package logica;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.metamodel.SingularAttribute;

@Entity 
public class Paciente extends Persona implements Serializable{
    
//    private int id_paciente;
    private String tiene_OS;
    private String tipo_sangre;
    private String condicion;
    private String fecha_cita;
    private String requiereCirugia;

    public Paciente() {
    }

    public Paciente(String tiene_OS, String tipo_sangre, String condicion, String fecha_cita, String requiereCirugia, int id, String cedula, String nombre, String apellido, String telefono, String direccion, String fecha_nac) {
        super(id, cedula, nombre, apellido, telefono, direccion, fecha_nac);
        this.tiene_OS = tiene_OS;
        this.tipo_sangre = tipo_sangre;
        this.condicion = condicion;
        this.fecha_cita = fecha_cita;
        this.requiereCirugia = requiereCirugia;
    }    

    public String getTiene_OS() {
        return tiene_OS;
    }

    public void setTiene_OS(String tiene_OS) {
        this.tiene_OS = tiene_OS;
    }

    public String getTipo_sangre() {
        return tipo_sangre;
    }

    public void setTipo_sangre(String tipo_sangre) {
        this.tipo_sangre = tipo_sangre;
    }

    public String getCondicion() {
        return condicion;
    }

    public void setCondicion(String condicion) {
        this.condicion = condicion;
    }

    public String getFecha_cita() {
        return fecha_cita;
    }

    public void setFecha_cita(String fecha_cita) {
        this.fecha_cita = fecha_cita;
    }

    public String getRequiereCirugia() {
        return requiereCirugia;
    }

    public void setRequiereCirugia(String requiereCirugia) {
        this.requiereCirugia = requiereCirugia;
    }
    
    
}