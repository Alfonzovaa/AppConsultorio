package persistencia;

import logica.Usuario;

public class ControladoraPersistencia {
    
    CirugiaJpaController ciruJPA = new CirugiaJpaController();
    PacienteJpaController pacJPA = new PacienteJpaController();
    UsuarioJpaController usuJPA = new UsuarioJpaController();
    PersonaJpaController persJPA = new PersonaJpaController();

    public void crearUsuario(Usuario usu) {
        usuJPA.create(usu);
    }
}
