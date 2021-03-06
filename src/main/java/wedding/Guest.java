package wedding;

/**
 * Created by JamesHartanto on 7/24/17.
 */
public class Guest {
    private String name;
    private String attending;
    private String food;
    private String allergies;
    private String roomBlock;
    private String song;
    private String email;

    private boolean guestAllow;
    private String guestName;
    private String guestFood;
    private String guestAllergies;

    public Guest() {
    }

    public Guest(String name) {
        this.name = name;
    }

    public Guest(String name, String attending, String food, String allergies, String roomBlock, String song, String email, boolean guestAllow, String guestName, String guestFood, String guestAllergies) {
        this.name = name;
        this.attending = attending;
        this.food = food;
        this.allergies = allergies;
        this.roomBlock = roomBlock;
        this.song = song;
        this.email = email;
        this.guestAllow = guestAllow;
        this.guestName = guestName;
        this.guestFood = guestFood;
        this.guestAllergies = guestAllergies;
    }

    public Guest(String name, String attending, String food, String allergies, String roomBlock, String song, String email, String guestName, String guestFood, String guestAllergies) {
        this.name = name;
        this.attending = attending;
        this.food = food;
        this.allergies = allergies;
        this.roomBlock = roomBlock;
        this.song = song;
        this.email = email;
        this.guestName = guestName;
        this.guestFood = guestFood;
        this.guestAllergies = guestAllergies;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAttending() {
        return attending;
    }

    public void setAttending(String attending) {
        this.attending = attending;
    }

    public String getFood() {
        return food;
    }

    public void setFood(String food) {
        this.food = food;
    }

    public String getAllergies() {
        return allergies;
    }

    public void setAllergies(String allergies) {
        this.allergies = allergies;
    }

    public String getRoomBlock() {
        return roomBlock;
    }

    public void setRoomBlock(String roomBlock) {
        this.roomBlock = roomBlock;
    }

    public String getSong() {
        return song;
    }

    public void setSong(String song) {
        this.song = song;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public boolean isGuestAllow() {
        return guestAllow;
    }

    public void setGuestAllow(boolean guestAllow) {
        this.guestAllow = guestAllow;
    }

    public String getGuestName() {
        return guestName;
    }

    public void setGuestName(String guestName) {
        this.guestName = guestName;
    }

    public String getGuestFood() {
        return guestFood;
    }

    public void setGuestFood(String guestFood) {
        this.guestFood = guestFood;
    }

    public String getGuestAllergies() {
        return guestAllergies;
    }

    public void setGuestAllergies(String guestAllergies) {
        this.guestAllergies = guestAllergies;
    }
}
