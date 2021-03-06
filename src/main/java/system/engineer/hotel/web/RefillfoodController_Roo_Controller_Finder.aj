// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package system.engineer.hotel.web;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import system.engineer.hotel.domain.Food;
import system.engineer.hotel.domain.Refillfood;
import system.engineer.hotel.web.RefillfoodController;

privileged aspect RefillfoodController_Roo_Controller_Finder {
    
    @RequestMapping(params = { "find=ByFood", "form" }, method = RequestMethod.GET)
    public String RefillfoodController.findRefillfoodsByFoodForm(Model uiModel) {
        uiModel.addAttribute("foods", Food.findAllFoods());
        return "refillfoods/findRefillfoodsByFood";
    }
    
    @RequestMapping(params = "find=ByFood", method = RequestMethod.GET)
    public String RefillfoodController.findRefillfoodsByFood(@RequestParam("food") Food food, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("refillfoods", Refillfood.findRefillfoodsByFood(food, sortFieldName, sortOrder).setFirstResult(firstResult).setMaxResults(sizeNo).getResultList());
            float nrOfPages = (float) Refillfood.countFindRefillfoodsByFood(food) / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("refillfoods", Refillfood.findRefillfoodsByFood(food, sortFieldName, sortOrder).getResultList());
        }
        addDateTimeFormatPatterns(uiModel);
        return "refillfoods/list";
    }
    
}
