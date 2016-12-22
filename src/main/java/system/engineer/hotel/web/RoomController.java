package system.engineer.hotel.web;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import system.engineer.hotel.domain.Room;

@RequestMapping("/rooms")
@Controller
@RooWebScaffold(path = "rooms", formBackingObject = Room.class)
public class RoomController {
}
