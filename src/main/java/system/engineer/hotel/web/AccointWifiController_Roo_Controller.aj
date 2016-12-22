// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package system.engineer.hotel.web;

import java.io.UnsupportedEncodingException;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;
import system.engineer.hotel.domain.AccointWifi;
import system.engineer.hotel.domain.Customer;
import system.engineer.hotel.web.AccointWifiController;

privileged aspect AccointWifiController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String AccointWifiController.create(@Valid AccointWifi accointWifi, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, accointWifi);
            return "accointwifis/create";
        }
        uiModel.asMap().clear();
        accointWifi.persist();
        return "redirect:/accointwifis/" + encodeUrlPathSegment(accointWifi.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String AccointWifiController.createForm(Model uiModel) {
        populateEditForm(uiModel, new AccointWifi());
        return "accointwifis/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String AccointWifiController.show(@PathVariable("id") Long id, Model uiModel) {
        uiModel.addAttribute("accointwifi", AccointWifi.findAccointWifi(id));
        uiModel.addAttribute("itemId", id);
        return "accointwifis/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String AccointWifiController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("accointwifis", AccointWifi.findAccointWifiEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) AccointWifi.countAccointWifis() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("accointwifis", AccointWifi.findAllAccointWifis(sortFieldName, sortOrder));
        }
        return "accointwifis/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String AccointWifiController.update(@Valid AccointWifi accointWifi, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, accointWifi);
            return "accointwifis/update";
        }
        uiModel.asMap().clear();
        accointWifi.merge();
        return "redirect:/accointwifis/" + encodeUrlPathSegment(accointWifi.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String AccointWifiController.updateForm(@PathVariable("id") Long id, Model uiModel) {
        populateEditForm(uiModel, AccointWifi.findAccointWifi(id));
        return "accointwifis/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String AccointWifiController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        AccointWifi accointWifi = AccointWifi.findAccointWifi(id);
        accointWifi.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/accointwifis";
    }
    
    void AccointWifiController.populateEditForm(Model uiModel, AccointWifi accointWifi) {
        uiModel.addAttribute("accointWifi", accointWifi);
        uiModel.addAttribute("customers", Customer.findAllCustomers());
    }
    
    String AccointWifiController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
        String enc = httpServletRequest.getCharacterEncoding();
        if (enc == null) {
            enc = WebUtils.DEFAULT_CHARACTER_ENCODING;
        }
        try {
            pathSegment = UriUtils.encodePathSegment(pathSegment, enc);
        } catch (UnsupportedEncodingException uee) {}
        return pathSegment;
    }
    
}
