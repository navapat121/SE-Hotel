package system.engineer.hotel.web;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import system.engineer.hotel.domain.AccointWifi;
import org.springframework.roo.addon.web.mvc.controller.finder.RooWebFinder;

@RequestMapping("/accointwifis")
@Controller
@RooWebScaffold(path = "accointwifis", formBackingObject = AccointWifi.class)
@RooWebFinder
public class AccointWifiController {
}
