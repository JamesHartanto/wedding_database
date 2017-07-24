package wedding;

/**
 * Created by JamesHartanto on 7/24/17.
 */
public class Guest {
    private String email;
    private String name;
    private boolean attending;
    private String foodPreference;
    private Guest plus1;

    public Guest(String email, String name, boolean attending, String food, Guest guest) {
    }

    public Guest(String email, String name) {
        this.email = email;
        this.name = name;
        this.attending = attending;
        this.foodPreference = foodPreference;
        this.plus1 = plus1;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public boolean isAttending() {
        return attending;
    }

    public void setAttending(boolean attending) {
        this.attending = attending;
    }

    public String getFoodPreference() {
        return foodPreference;
    }

    public void setFoodPreference(String foodPreference) {
        this.foodPreference = foodPreference;
    }

    public Guest getPlus1() {
        return plus1;
    }

    public void setPlus1(Guest plus1) {
        this.plus1 = plus1;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
