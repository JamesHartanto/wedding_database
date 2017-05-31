package wedding;

import java.math.BigDecimal;

/**
 * Created by JamesHartanto on 5/23/17.
 */
public class Gifts {
    private Integer id;
    private String name;
    private String cost;
    private String buyer;

    public Gifts(Integer id, String name, String cost, String buyer) {
        this.id = id;
        this.name = name;
        this.cost = cost;
        this.buyer = buyer;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCost() {
        return cost;
    }

    public void setCost(String cost) {
        this.cost = cost;
    }

    public String getBuyer() {
        return buyer;
    }

    public void setBuyer(String buyer) {
        this.buyer = buyer;
    }
}
