// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package system.engineer.hotel.domain;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;
import system.engineer.hotel.domain.BillProduct;

privileged aspect BillProduct_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager BillProduct.entityManager;
    
    public static final List<String> BillProduct.fieldNames4OrderClauseFilter = java.util.Arrays.asList("product", "staffhotel", "status", "dateofcheck");
    
    public static final EntityManager BillProduct.entityManager() {
        EntityManager em = new BillProduct().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long BillProduct.countBillProducts() {
        return entityManager().createQuery("SELECT COUNT(o) FROM BillProduct o", Long.class).getSingleResult();
    }
    
    public static List<BillProduct> BillProduct.findAllBillProducts() {
        return entityManager().createQuery("SELECT o FROM BillProduct o", BillProduct.class).getResultList();
    }
    
    public static List<BillProduct> BillProduct.findAllBillProducts(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM BillProduct o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, BillProduct.class).getResultList();
    }
    
    public static BillProduct BillProduct.findBillProduct(Long id) {
        if (id == null) return null;
        return entityManager().find(BillProduct.class, id);
    }
    
    public static List<BillProduct> BillProduct.findBillProductEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM BillProduct o", BillProduct.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<BillProduct> BillProduct.findBillProductEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM BillProduct o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, BillProduct.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void BillProduct.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void BillProduct.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            BillProduct attached = BillProduct.findBillProduct(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void BillProduct.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void BillProduct.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public BillProduct BillProduct.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        BillProduct merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}