// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package system.engineer.hotel.domain;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;
import system.engineer.hotel.domain.Refillfood;

privileged aspect Refillfood_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Refillfood.entityManager;
    
    public static final List<String> Refillfood.fieldNames4OrderClauseFilter = java.util.Arrays.asList("food", "refillnumber", "refilldate", "kitchenstaffname");
    
    public static final EntityManager Refillfood.entityManager() {
        EntityManager em = new Refillfood().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Refillfood.countRefillfoods() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Refillfood o", Long.class).getSingleResult();
    }
    
    public static List<Refillfood> Refillfood.findAllRefillfoods() {
        return entityManager().createQuery("SELECT o FROM Refillfood o", Refillfood.class).getResultList();
    }
    
    public static List<Refillfood> Refillfood.findAllRefillfoods(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Refillfood o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Refillfood.class).getResultList();
    }
    
    public static Refillfood Refillfood.findRefillfood(Long id) {
        if (id == null) return null;
        return entityManager().find(Refillfood.class, id);
    }
    
    public static List<Refillfood> Refillfood.findRefillfoodEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Refillfood o", Refillfood.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<Refillfood> Refillfood.findRefillfoodEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Refillfood o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Refillfood.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Refillfood.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Refillfood.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Refillfood attached = Refillfood.findRefillfood(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Refillfood.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Refillfood.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Refillfood Refillfood.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Refillfood merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
