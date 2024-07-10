package logica;

import javax.persistence.Entity;

@Entity
public class Cirugia extends Persona{
    
//    private int id_Cirugia;
    private int paciente;
    private String tipo; 
    private String fecha_ciru;
    private String hora_ciru;

    public Cirugia() {
    }

    public Cirugia(int idPaciente, String tipo, String fecha_ciru, String hora_ciru, String nombre, String apellido, String telefono, String direccion, String fecha_nac) {
        super(nombre, apellido, telefono, direccion, fecha_nac);
        this.paciente = idPaciente;
        this.tipo = tipo;
        this.fecha_ciru = fecha_ciru;
        this.hora_ciru = hora_ciru;
    }

    

    public int getIdPaciente() {
        return paciente;
    }

    public void setIdPaciente(int idPaciente) {
        this.paciente = idPaciente;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public String getFecha_ciru() {
        return fecha_ciru;
    }

    public void setFecha_ciru(String fecha_ciru) {
        this.fecha_ciru = fecha_ciru;
    }

    public String getHora_ciru() {
        return hora_ciru;
    }

    public void setHora_ciru(String hora_ciru) {
        this.hora_ciru = hora_ciru;
    }
    
}
