// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package system.engineer.hotel.domain;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;
import system.engineer.hotel.domain.AccointWifi;
import system.engineer.hotel.domain.Customer;

privileged aspect AccointWifi_Roo_Finder {
    
    public static Long AccointWifi.countFindAccointWifisByCustomer(Customer Customer) {
        if (Customer == null) throw new IllegalArgumentException("The Customer argument is required");
        EntityManager em = AccointWifi.entityManager();
        TypedQuery q = em.createQuery("SELECT COUNT(o) FROM AccointWifi AS o WHERE o.Customer = :Customer", Long.class);
        q.setParameter("Customer", Customer);
        return ((Long) q.getSingleResult());
    }
    
    public static TypedQuery<AccointWifi> AccointWifi.findAccointWifisByCustomer(Customer Customer) {
        if (Customer == null) throw new IllegalArgumentException("The Customer argument is required");
        EntityManager em = AccointWifi.entityManager();
        TypedQuery<AccointWifi> q = em.createQuery("SELECT o FROM AccointWifi AS o WHERE o.Customer = :Customer", AccointWifi.class);
        q.setParameter("Customer", Customer);
        return q;
    }
    
    public static TypedQuery<AccointWifi> AccointWifi.findAccointWifisByCustomer(Customer Customer, String sortFieldName, String sortOrder) {
        if (Customer == null) throw new IllegalArgumentException("The Customer argument is required");
        EntityManager em = AccointWifi.entityManager();
        StringBuilder queryBuilder = new StringBuilder("SELECT o FROM AccointWifi AS o WHERE o.Customer = :Customer");
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            queryBuilder.append(" ORDER BY ").append(sortFieldName);
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                queryBuilder.append(" ").append(sortOrder);
            }
        }
        TypedQuery<AccointWifi> q = em.createQuery(queryBuilder.toString(), AccointWifi.class);
        q.setParameter("Customer", Customer);
        return q;
    }
    
}
