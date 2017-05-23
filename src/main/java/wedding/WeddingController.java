package wedding;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

/**
 * Created by JamesHartanto on 5/23/17.
 */
@Controller
public class WeddingController {

    @Autowired
    WeddingRepository weddingRepository;
}
