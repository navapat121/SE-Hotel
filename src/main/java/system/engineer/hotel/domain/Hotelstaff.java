package system.engineer.hotel.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Hotelstaff {

    /**
     */
    @NotNull
    @Size(min = 2)
    private String staffid;

    /**
     */
    @NotNull
    @Size(min = 2)
    private String staffname;
}
