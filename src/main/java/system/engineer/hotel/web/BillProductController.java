package system.engineer.hotel.web;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import system.engineer.hotel.domain.BillProduct;
import org.springframework.roo.addon.web.mvc.controller.finder.RooWebFinder;

@RequestMapping("/billproducts")
@Controller
@RooWebScaffold(path = "billproducts", formBackingObject = BillProduct.class)
@RooWebFinder
public class BillProductController {
}
