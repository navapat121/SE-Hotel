package system.engineer.hotel.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.ManyToMany;
import javax.persistence.Enumerated;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Checkinonline {

    /**
     */
    @NotNull
    @Size(min = 2)
    private String name;

    /**
     */
    @ManyToMany(cascade = CascadeType.ALL)
    private Set<Room> room = new HashSet<Room>();

    /**
     */
    @Enumerated
    private Paytype paytype;
}
