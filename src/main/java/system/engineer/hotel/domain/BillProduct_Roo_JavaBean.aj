// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package system.engineer.hotel.domain;

import java.util.Date;
import system.engineer.hotel.domain.BillProduct;
import system.engineer.hotel.domain.Hotelstaff;
import system.engineer.hotel.domain.Product;
import system.engineer.hotel.domain.Status;

privileged aspect BillProduct_Roo_JavaBean {
    
    public Product BillProduct.getProduct() {
        return this.product;
    }
    
    public void BillProduct.setProduct(Product product) {
        this.product = product;
    }
    
    public Hotelstaff BillProduct.getStaffhotel() {
        return this.staffhotel;
    }
    
    public void BillProduct.setStaffhotel(Hotelstaff staffhotel) {
        this.staffhotel = staffhotel;
    }
    
    public Status BillProduct.getStatus() {
        return this.status;
    }
    
    public void BillProduct.setStatus(Status status) {
        this.status = status;
    }
    
    public Date BillProduct.getDateofcheck() {
        return this.dateofcheck;
    }
    
    public void BillProduct.setDateofcheck(Date dateofcheck) {
        this.dateofcheck = dateofcheck;
    }
    
}