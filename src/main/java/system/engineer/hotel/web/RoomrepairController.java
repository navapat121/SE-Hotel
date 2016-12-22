package system.engineer.hotel.web;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import system.engineer.hotel.domain.Roomrepair;

@RequestMapping("/roomrepairs")
@Controller
@RooWebScaffold(path = "roomrepairs", formBackingObject = Roomrepair.class)
public class RoomrepairController {
}
