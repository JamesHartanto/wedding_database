package wedding;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

/**
 * Created by JamesHartanto on 5/23/17.
 */
@Component
public class WeddingRepository {

    @Autowired
    JdbcTemplate jdbcTemplate;

    


}
