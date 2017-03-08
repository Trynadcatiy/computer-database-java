package models;

import java.util.*;

import play.db.ebean.*;
import play.data.validation.Constraints.*;

import javax.persistence.*;

@Entity
public class Restaurant extends Model {

    @Id
    public Long id;

    @Required
    public String name;
    public String legal_name;
    public String inn;
    public String adress;

    public static Model.Finder<Long, Restaurant> find = new Finder<Long, Restaurant>(Long.class, Restaurant.class);

    @ManyToMany(cascade = CascadeType.ALL)
    public List<Guest> guests = new ArrayList<Guest>();

    public Restaurant(String name, String legal_name, String inn, String adress) {
        this.name = name;
        this.legal_name = legal_name;
        this.inn = inn;
        this.adress = adress;
    }

    public Long getId() {
        return id;
    }

    public List<Guest> getGuests() {
        return guests;
    }

    public void addGuest(Guest guest) {
        guests.add(guest);
    }

    public static Restaurant findByName(String name) {
        return find.where().eq("name", name).findUnique();
    }

}
