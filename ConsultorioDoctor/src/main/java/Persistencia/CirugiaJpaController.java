/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package persistencia;

import java.io.Serializable;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;
import javax.persistence.EntityNotFoundException;
import javax.persistence.Persistence;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import logica.Cirugia;
import persistencia.exceptions.NonexistentEntityException;

/**
 *
 * @author Alfonzovaa
 */
public class CirugiaJpaController implements Serializable {

    public CirugiaJpaController(EntityManagerFactory emf) {
        this.emf = emf;
    }
    private EntityManagerFactory emf = null;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }
    
    public CirugiaJpaController() {
        emf = Persistence.createEntityManagerFactory("ConsultorioDoctor_PU");
    }

    public void create(Cirugia cirugia) {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            em.persist(cirugia);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void edit(Cirugia cirugia) throws NonexistentEntityException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            cirugia = em.merge(cirugia);
            em.getTransaction().commit();
        } catch (Exception ex) {
            String msg = ex.getLocalizedMessage();
            if (msg == null || msg.length() == 0) {
                int id = cirugia.getId_Cirugia();
                if (findCirugia(id) == null) {
                    throw new NonexistentEntityException("The cirugia with id " + id + " no longer exists.");
                }
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void destroy(int id) throws NonexistentEntityException {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Cirugia cirugia;
            try {
                cirugia = em.getReference(Cirugia.class, id);
                cirugia.getId_Cirugia();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The cirugia with id " + id + " no longer exists.", enfe);
            }
            em.remove(cirugia);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public List<Cirugia> findCirugiaEntities() {
        return findCirugiaEntities(true, -1, -1);
    }

    public List<Cirugia> findCirugiaEntities(int maxResults, int firstResult) {
        return findCirugiaEntities(false, maxResults, firstResult);
    }

    private List<Cirugia> findCirugiaEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(Cirugia.class));
            Query q = em.createQuery(cq);
            if (!all) {
                q.setMaxResults(maxResults);
                q.setFirstResult(firstResult);
            }
            return q.getResultList();
        } finally {
            em.close();
        }
    }

    public Cirugia findCirugia(int id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(Cirugia.class, id);
        } finally {
            em.close();
        }
    }

    public int getCirugiaCount() {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<Cirugia> rt = cq.from(Cirugia.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }
    
}
