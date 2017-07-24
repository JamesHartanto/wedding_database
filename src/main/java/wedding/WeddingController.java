package wedding;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

/**
 * Created by JamesHartanto on 5/23/17.
 */
@Controller
public class WeddingController {

    @Autowired
    WeddingRepository weddingRepository;

    // homepage
    @RequestMapping("/home")
    public String homePage(){
        return "home";
    }

    // bride and groom story
    @RequestMapping("/")
    public String index(){return "index";}

    // bridesmaids and groomsmen
    @RequestMapping("/entourage")
    public String entourage(){
        return "entourage";
    }

    // form for users to fill
    @RequestMapping("/rsvp")
    public String rsvp(){
        return "rsvp";
    }

    // photos of engagement
    @RequestMapping("/photos")
    public String photos(){
        return "photos";
    }

    // not sure yet... will complete later once gifts are ready
    @RequestMapping("/gifts")
    public String gifts(Model model, @RequestParam(defaultValue = "") String search){

        // Getting data from database
        List<Gifts> listOfGifts = weddingRepository.listGifts(search);

        // If there are no results
        if (listOfGifts.size() == 0){
            model.addAttribute("empty",0);
            return "gifts";
        }

        // return data for non-empty table
        model.addAttribute("empty",1);
        model.addAttribute("listOfGifts",listOfGifts);

        return "gifts";
    }

    // travel stuff -- where to stay, dining, things to do
    @RequestMapping("/directions")
    public String directions(){
        return "directions";
    }
}
