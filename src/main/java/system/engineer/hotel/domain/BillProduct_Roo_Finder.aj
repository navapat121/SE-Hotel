// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package system.engineer.hotel.domain;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;
import system.engineer.hotel.domain.BillProduct;
import system.engineer.hotel.domain.Hotelstaff;

privileged aspect BillProduct_Roo_Finder {
    
    public static Long BillProduct.countFindBillProductsByStaffhotel(Hotelstaff staffhotel) {
        if (staffhotel == null) throw new IllegalArgumentException("The staffhotel argument is required");
        EntityManager em = BillProduct.entityManager();
        TypedQuery q = em.createQuery("SELECT COUNT(o) FROM BillProduct AS o WHERE o.staffhotel = :staffhotel", Long.class);
        q.setParameter("staffhotel", staffhotel);
        return ((Long) q.getSingleResult());
    }
    
    public static TypedQuery<BillProduct> BillProduct.findBillProductsByStaffhotel(Hotelstaff staffhotel) {
        if (staffhotel == null) throw new IllegalArgumentException("The staffhotel argument is required");
        EntityManager em = BillProduct.entityManager();
        TypedQuery<BillProduct> q = em.createQuery("SELECT o FROM BillProduct AS o WHERE o.staffhotel = :staffhotel", BillProduct.class);
        q.setParameter("staffhotel", staffhotel);
        return q;
    }
    
    public static TypedQuery<BillProduct> BillProduct.findBillProductsByStaffhotel(Hotelstaff staffhotel, String sortFieldName, String sortOrder) {
        if (staffhotel == null) throw new IllegalArgumentException("The staffhotel argument is required");
        EntityManager em = BillProduct.entityManager();
        StringBuilder queryBuilder = new StringBuilder("SELECT o FROM BillProduct AS o WHERE o.staffhotel = :staffhotel");
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            queryBuilder.append(" ORDER BY ").append(sortFieldName);
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                queryBuilder.append(" ").append(sortOrder);
            }
        }
        TypedQuery<BillProduct> q = em.createQuery(queryBuilder.toString(), BillProduct.class);
        q.setParameter("staffhotel", staffhotel);
        return q;
    }
    
}
