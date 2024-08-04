package logica;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Cirugia implements Serializable{
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id_Cirugia;
    private int paciente;
    private String tipo; 
    private String fecha_ciru;
    private String hora_ciru;

    public Cirugia() {
    }

    public Cirugia(int id_Cirugia, int paciente, String tipo, String fecha_ciru, String hora_ciru) {
        this.id_Cirugia = id_Cirugia;
        this.paciente = paciente;
        this.tipo = tipo;
        this.fecha_ciru = fecha_ciru;
        this.hora_ciru = hora_ciru;
    }

    public int getId_Cirugia() {
        return id_Cirugia;
    }

    public void setId_Cirugia(int id_Cirugia) {
        this.id_Cirugia = id_Cirugia;
    }

    public int getPaciente() {
        return paciente;
    }

    public void setPaciente(int paciente) {
        this.paciente = paciente;
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