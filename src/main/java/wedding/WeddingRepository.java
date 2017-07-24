package wedding;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * Created by JamesHartanto on 5/23/17.
 */
@Component
public class WeddingRepository {

    @Autowired
    JdbcTemplate jdbcTemplate;

    public List<Guest> listGuests(){
        return jdbcTemplate.query("SELECT * FROM guestinfo",
                new Object[]{},
                (resultSet, i) -> new Guest(
                        resultSet.getString("email"),
                        resultSet.getString("name"),
                        resultSet.getBoolean("attending"),
                        resultSet.getString("food"),
                        new Guest(resultSet.getString("guestname"),
                                resultSet.getString("guestfood"))
                ));
    }

    // GIFTS

    public void updateGift(String name, Integer cost, String buyer){
        jdbcTemplate.update("INSERT INTO gifts(name,cost,buyer) VALUES(?,?,?)",
                new Object[]{name,cost,buyer});
    }

    public List<Gifts> listGifts(String search){
        return jdbcTemplate.query("SELECT * FROM gifts " +
                        "WHERE lower(search) LIKE lower(name)",
                new Object[]{"%" + search + "%"},
                ((resultSet, i) -> new Gifts(
                        resultSet.getInt("id"),
                        resultSet.getString("name"),
                        resultSet.getString("cost"),
                        resultSet.getString("buyer"))));
    }


}
