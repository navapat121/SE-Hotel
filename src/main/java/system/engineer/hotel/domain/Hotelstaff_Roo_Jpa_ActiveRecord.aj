// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package system.engineer.hotel.domain;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;
import system.engineer.hotel.domain.Hotelstaff;

privileged aspect Hotelstaff_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Hotelstaff.entityManager;
    
    public static final List<String> Hotelstaff.fieldNames4OrderClauseFilter = java.util.Arrays.asList("staffid", "staffname");
    
    public static final EntityManager Hotelstaff.entityManager() {
        EntityManager em = new Hotelstaff().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Hotelstaff.countHotelstaffs() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Hotelstaff o", Long.class).getSingleResult();
    }
    
    public static List<Hotelstaff> Hotelstaff.findAllHotelstaffs() {
        return entityManager().createQuery("SELECT o FROM Hotelstaff o", Hotelstaff.class).getResultList();
    }
    
    public static List<Hotelstaff> Hotelstaff.findAllHotelstaffs(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Hotelstaff o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Hotelstaff.class).getResultList();
    }
    
    public static Hotelstaff Hotelstaff.findHotelstaff(Long id) {
        if (id == null) return null;
        return entityManager().find(Hotelstaff.class, id);
    }
    
    public static List<Hotelstaff> Hotelstaff.findHotelstaffEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Hotelstaff o", Hotelstaff.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<Hotelstaff> Hotelstaff.findHotelstaffEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Hotelstaff o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Hotelstaff.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Hotelstaff.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Hotelstaff.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Hotelstaff attached = Hotelstaff.findHotelstaff(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Hotelstaff.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Hotelstaff.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Hotelstaff Hotelstaff.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Hotelstaff merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
