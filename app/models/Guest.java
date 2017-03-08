package models;

import java.util.*;

import play.db.ebean.*;
import play.data.validation.Constraints.*;

import javax.persistence.*;

@Entity
public class Guest extends Model {

    @Id
    @GeneratedValue
    public Long id;

    @Required
    public String name;
    public String surname;
    public String email;
    public String telephone;

    public static Model.Finder<Long,Guest> find = new Finder(Long.class, Guest.class);

    @ManyToMany(mappedBy = "guests", cascade = CascadeType.ALL)
    public List<Restaurant> restaurants = new ArrayList<Restaurant>();

    public Guest(String name, String surname, String email, String telephone) {
        this.name = name;
        this.surname = surname;
        this.email = email;
        this.telephone = telephone;
    }

    public void addRestaurant(Restaurant restaurant) {
        restaurants.add(restaurant);
    }

    public List getRestaurant() {
        return restaurants;
    }

    public String getName() {
        return name;
    }

    public Long getId() {
        return id;
    }

    public String getSurname(){
        return surname;
    }

    public String getEmail(){
        return email;
    }

    public String getTelephone(){
        return telephone;
    }

    public static Guest findByName(String name) {
        return find.where().eq("name", name).findUnique();
}
