// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package system.engineer.hotel.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;
import system.engineer.hotel.domain.BillProduct;

privileged aspect BillProduct_Roo_Jpa_Entity {
    
    declare @type: BillProduct: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long BillProduct.id;
    
    @Version
    @Column(name = "version")
    private Integer BillProduct.version;
    
    public Long BillProduct.getId() {
        return this.id;
    }
    
    public void BillProduct.setId(Long id) {
        this.id = id;
    }
    
    public Integer BillProduct.getVersion() {
        return this.version;
    }
    
    public void BillProduct.setVersion(Integer version) {
        this.version = version;
    }
    
}
