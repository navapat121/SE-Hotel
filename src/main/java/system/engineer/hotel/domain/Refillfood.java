package system.engineer.hotel.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.ManyToOne;
import javax.validation.constraints.Size;
import java.util.Date;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(finders = { "findRefillfoodsByFood" })
public class Refillfood {

    /**
     */
    @ManyToOne
    private Food food;

    /**
     */
    @Size(min = 2)
    private String refillnumber;

    /**
     */
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date refilldate;

    /**
     */
    @ManyToOne
    private Kitchenstaff kitchenstaffname;
}
