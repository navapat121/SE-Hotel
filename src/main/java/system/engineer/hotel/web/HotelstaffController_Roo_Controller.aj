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
import system.engineer.hotel.domain.Hotelstaff;
import system.engineer.hotel.web.HotelstaffController;

privileged aspect HotelstaffController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String HotelstaffController.create(@Valid Hotelstaff hotelstaff, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, hotelstaff);
            return "hotelstaffs/create";
        }
        uiModel.asMap().clear();
        hotelstaff.persist();
        return "redirect:/hotelstaffs/" + encodeUrlPathSegment(hotelstaff.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String HotelstaffController.createForm(Model uiModel) {
        populateEditForm(uiModel, new Hotelstaff());
        return "hotelstaffs/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String HotelstaffController.show(@PathVariable("id") Long id, Model uiModel) {
        uiModel.addAttribute("hotelstaff", Hotelstaff.findHotelstaff(id));
        uiModel.addAttribute("itemId", id);
        return "hotelstaffs/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String HotelstaffController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("hotelstaffs", Hotelstaff.findHotelstaffEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) Hotelstaff.countHotelstaffs() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("hotelstaffs", Hotelstaff.findAllHotelstaffs(sortFieldName, sortOrder));
        }
        return "hotelstaffs/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String HotelstaffController.update(@Valid Hotelstaff hotelstaff, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, hotelstaff);
            return "hotelstaffs/update";
        }
        uiModel.asMap().clear();
        hotelstaff.merge();
        return "redirect:/hotelstaffs/" + encodeUrlPathSegment(hotelstaff.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String HotelstaffController.updateForm(@PathVariable("id") Long id, Model uiModel) {
        populateEditForm(uiModel, Hotelstaff.findHotelstaff(id));
        return "hotelstaffs/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String HotelstaffController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        Hotelstaff hotelstaff = Hotelstaff.findHotelstaff(id);
        hotelstaff.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/hotelstaffs";
    }
    
    void HotelstaffController.populateEditForm(Model uiModel, Hotelstaff hotelstaff) {
        uiModel.addAttribute("hotelstaff", hotelstaff);
    }
    
    String HotelstaffController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
