// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package system.engineer.hotel.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;
import system.engineer.hotel.domain.Food;

privileged aspect Food_Roo_Jpa_Entity {
    
    declare @type: Food: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long Food.id;
    
    @Version
    @Column(name = "version")
    private Integer Food.version;
    
    public Long Food.getId() {
        return this.id;
    }
    
    public void Food.setId(Long id) {
        this.id = id;
    }
    
    public Integer Food.getVersion() {
        return this.version;
    }
    
    public void Food.setVersion(Integer version) {
        this.version = version;
    }
    
}