package wedding;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by JamesHartanto on 5/23/17.
 */
@Controller
public class WeddingController {

    @Autowired
    WeddingRepository weddingRepository;

    // VERIFICATION TO AVOID TROLLS
    // names
    public List<String> nameList(){
        List<String> names = new ArrayList<>();
        for (int x = 0; x < weddingRepository.listGuests().size(); x = x + 1){
            names.add(weddingRepository.listGuests().get(x).getName());
        }
        return names;
    }
    // email
    public List<String> emailList(){
        List<String> names = new ArrayList<>();
        for (int x = 0; x < weddingRepository.listGuests().size(); x = x + 1){
            names.add(weddingRepository.listGuests().get(x).getEmail());
        }
        return names;
    }

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
    @GetMapping("/rsvp")
    public String rsvp(){
        return "rsvp";
    }

    @PostMapping("/rsvpValidation")
    public String rsvpValidation(Model model, String name, String email, boolean attending, String food, boolean plus1, String name1, String food1){
        if(nameList().contains(name) && emailList().contains(email)) {
            // passes the lame validation
            model.addAttribute("success", true);
            // to avoid null values
            if(!plus1){
                name1 = "";
                food1 = "";
            }
            // adding it to the database
            weddingRepository.addGuest(name,email,attending, food, new Guest(name1,food1));
        } else{
            // failed to pass validation!
            model.addAttribute("success",false);
        }
        return "redirect:/home";
    }

    // photos of engagement
    @RequestMapping("/photos")
    public String photos(){
        return "photos";
    }

    // not sure yet... will complete later once gifts are ready
    @RequestMapping("/gifts")
    public String gifts(Model model, @RequestParam(defaultValue = "") String search){

//        // Getting data from database
//        List<Gifts> listOfGifts = weddingRepository.listGifts(search);
//
//        // If there are no results
//        if (listOfGifts.size() == 0){
//            model.addAttribute("empty",0);
//            return "gifts";
//        }
//
//        // return data for non-empty table
//        model.addAttribute("empty",1);
//        model.addAttribute("listOfGifts",listOfGifts);

        return "gifts";
    }

    // travel stuff -- where to stay, dining, things to do
    @RequestMapping("/directions")
    public String directions(){
        return "directions";
    }
}
