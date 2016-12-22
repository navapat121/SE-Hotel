package system.engineer.hotel.web;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import system.engineer.hotel.domain.Refillfood;
import org.springframework.roo.addon.web.mvc.controller.finder.RooWebFinder;

@RequestMapping("/refillfoods")
@Controller
@RooWebScaffold(path = "refillfoods", formBackingObject = Refillfood.class)
@RooWebFinder
public class RefillfoodController {
}
