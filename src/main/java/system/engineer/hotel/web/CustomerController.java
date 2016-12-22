package system.engineer.hotel.web;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import system.engineer.hotel.domain.Customer;

@RequestMapping("/customers")
@Controller
@RooWebScaffold(path = "customers", formBackingObject = Customer.class)
public class CustomerController {
}
