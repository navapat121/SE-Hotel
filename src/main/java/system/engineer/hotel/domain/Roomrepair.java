package system.engineer.hotel.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.ManyToOne;
import javax.persistence.Enumerated;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.Date;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Roomrepair {

    /**
     */
    @ManyToOne
    private Hotelstaff staffname;

    /**
     */
    @ManyToOne
    private Room room;

    /**
     */
    @Enumerated
    private Device device;

    /**
     */
    @NotNull
    @Size(min = 2)
    private String outofservice;

    /**
     */
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date dates;

    /**
     */
    @Size(max = 5)
    private String times;
}
