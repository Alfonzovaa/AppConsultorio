package persistencia;

import logica.Cirugia;
import logica.Paciente;
import logica.Usuario;

public class ControladoraPersistencia {
    
    CirugiaJpaController ciruJPA = new CirugiaJpaController();
    PacienteJpaController pacJPA = new PacienteJpaController();
    UsuarioJpaController usuJPA = new UsuarioJpaController();
    PersonaJpaController persJPA = new PersonaJpaController();

    public ControladoraPersistencia() {
    }

    public void crearUsuario(Usuario usu) {
        usuJPA.create(usu);
    }

    public void crearPaciente(Paciente pac) {
        pacJPA.create(pac);
    }

    public void crearCirugia(Cirugia ciru) {
        ciruJPA.create(ciru);
    }
}
