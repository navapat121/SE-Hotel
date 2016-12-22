package system.engineer.hotel.web;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import system.engineer.hotel.domain.ChangRoom;
import org.springframework.roo.addon.web.mvc.controller.finder.RooWebFinder;

@RequestMapping("/changrooms")
@Controller
@RooWebScaffold(path = "changrooms", formBackingObject = ChangRoom.class)
@RooWebFinder
public class ChangRoomController {
}
