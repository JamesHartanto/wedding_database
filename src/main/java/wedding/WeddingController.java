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
    // names list
    public List<String> nameList(){
        List<String> names = new ArrayList<>();
        for (int x = 0; x < weddingRepository.listGuests().size(); x = x + 1){
            names.add(weddingRepository.listGuests().get(x).getName().toLowerCase());
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

    @PostMapping("/rsvp1")
    public String rsvpValidation(Model model, String name){
        if(nameList().contains(name.toLowerCase())) {

            Guest guest = weddingRepository.getAGuest(name.toLowerCase());

            // modeling the guest
            model.addAttribute("guest", guest);

        } else{
            // failed to pass validation!
            model.addAttribute("success",false);
            return "rsvp2";
        }
        return "rsvp1";
    }

    @PostMapping("/rsvp2")
    public String rsvp2(Model model, String name, boolean attending, String food, String allergies,
                        String guestName, String guestFood, String guestAllergies,
                        boolean roomBlock, String song, String email){
        Guest guest = new Guest(name, attending, food, allergies, roomBlock, song, email, guestName, guestFood, guestAllergies);

        weddingRepository.updateGuest(guest);
        model.addAttribute("attending",attending);
        model.addAttribute("roomBlock",roomBlock);
        return "rsvp2";
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
