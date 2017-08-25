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

    // GUESTS
    public List<Guest> listGuests(){
        return jdbcTemplate.query("SELECT * FROM guestinfo",
                new Object[]{},
                (resultSet, i) -> new Guest(
                        resultSet.getString("name"),
                        resultSet.getBoolean("attending"),
                        resultSet.getString("food"),
                        resultSet.getString("allergies"),
                        resultSet.getBoolean("roomblock"),
                        resultSet.getString("song"),
                        resultSet.getString("email"),
                        resultSet.getBoolean("guestallow"),
                        resultSet.getString("guestname"),
                        resultSet.getString("guestfood"),
                        resultSet.getString("guestallergies")));
    }

    public void updateGuest(Guest guest){
        jdbcTemplate.update("INSERT INTO guestinfo(" +
                "name,attending,food,allergies,roomblock,song,email,guestallow,guestname,guestfood,guestallergies)" +
                "VALUES (?,?,?,?,?,?,?,?,?,?,?)",
                new Object[]{guest.getName(),guest.isAttending(),guest.getFood(),guest.getAllergies(),guest.isRoomBlock(),
                guest.getSong(),guest.getEmail(),guest.isGuestAllow(),guest.getGuestName(),guest.getFood(),guest.getGuestAllergies()});
    }

    public Guest getAGuest(String name){
        return jdbcTemplate.queryForObject("SELECT * FROM guestinfo WHERE name = ?",
                new Object[]{name},
                (resultSet, i) -> new Guest(
                        resultSet.getString("name"),
                        resultSet.getBoolean("attending"),
                        resultSet.getString("food"),
                        resultSet.getString("allergies"),
                        resultSet.getBoolean("roomblock"),
                        resultSet.getString("song"),
                        resultSet.getString("email"),
                        resultSet.getBoolean("guestallow"),
                        resultSet.getString("guestname"),
                        resultSet.getString("guestfood"),
                        resultSet.getString("guestallergies")));
    }

//    // GIFTS
//    public void updateGift(String name, Integer cost, String buyer){
//        jdbcTemplate.update("INSERT INTO gifts(name,cost,buyer) VALUES(?,?,?)",
//                new Object[]{name,cost,buyer});
//    }
//
//    public List<Gifts> listGifts(String search){
//        return jdbcTemplate.query("SELECT * FROM gifts " +
//                        "WHERE lower(search) LIKE lower(name)",
//                new Object[]{"%" + search + "%"},
//                ((resultSet, i) -> new Gifts(
//                        resultSet.getInt("id"),
//                        resultSet.getString("name"),
//                        resultSet.getString("cost"),
//                        resultSet.getString("buyer"))));
//    }

}
