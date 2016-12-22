package system.engineer.hotel.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(finders = { "findChangRoomsByOwnRoom" })
public class ChangRoom {

    /**
     */
    private String changNo;

    /**
     */
    private String Reason;

    /**
     */
    @ManyToOne
    private Customer ownRoom;

    /**
     */
    @ManyToOne
    private Room changTo;
}
