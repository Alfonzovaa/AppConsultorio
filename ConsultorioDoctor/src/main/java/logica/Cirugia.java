package logica;

public class Cirugia extends Persona{
    
    private int id_Cirugia;
    private int idPaciente;
    private String tipo; 
    private String fecha_ciru;
    private String hora_ciru;

    public Cirugia() {
    }

    public Cirugia(int id_Cirugia, int idPaciente, String tipo, String fecha_ciru, String hora_ciru, String nombre, String apellido, String telefono, String direccion, String fecha_nac) {
        super(nombre, apellido, telefono, direccion, fecha_nac);
        this.id_Cirugia = id_Cirugia;
        this.idPaciente = idPaciente;
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

    public int getIdPaciente() {
        return idPaciente;
    }

    public void setIdPaciente(int idPaciente) {
        this.idPaciente = idPaciente;
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

    
    @Override
    public String toString() {
        return "Usuario{" + "id_Cirugia=" + id_Cirugia + ", idPaciente=" + idPaciente + ", tipo=" + tipo + ", fecha_ciru=" + fecha_ciru + ", hora_ciru=" + hora_ciru + '}';
    }
    
}
