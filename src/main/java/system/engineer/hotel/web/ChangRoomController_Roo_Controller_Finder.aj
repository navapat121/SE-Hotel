// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package system.engineer.hotel.web;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import system.engineer.hotel.domain.ChangRoom;
import system.engineer.hotel.domain.Customer;
import system.engineer.hotel.web.ChangRoomController;

privileged aspect ChangRoomController_Roo_Controller_Finder {
    
    @RequestMapping(params = { "find=ByOwnRoom", "form" }, method = RequestMethod.GET)
    public String ChangRoomController.findChangRoomsByOwnRoomForm(Model uiModel) {
        uiModel.addAttribute("customers", Customer.findAllCustomers());
        return "changrooms/findChangRoomsByOwnRoom";
    }
    
    @RequestMapping(params = "find=ByOwnRoom", method = RequestMethod.GET)
    public String ChangRoomController.findChangRoomsByOwnRoom(@RequestParam("ownRoom") Customer ownRoom, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("changrooms", ChangRoom.findChangRoomsByOwnRoom(ownRoom, sortFieldName, sortOrder).setFirstResult(firstResult).setMaxResults(sizeNo).getResultList());
            float nrOfPages = (float) ChangRoom.countFindChangRoomsByOwnRoom(ownRoom) / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("changrooms", ChangRoom.findChangRoomsByOwnRoom(ownRoom, sortFieldName, sortOrder).getResultList());
        }
        return "changrooms/list";
    }
    
}