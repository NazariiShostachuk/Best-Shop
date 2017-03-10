package ua.com.newshop.entity;

import javax.persistence.*;
import java.util.List;

import javax.validation.ConstraintViolation;
import javax.validation.Validation;
import javax.validation.Validator;
import javax.validation.ValidatorFactory;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;
/**
 * Created by MackGeeker on 14.11.2016.
 */
@Entity
public class Commodity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @NotNull(message="Имя должно быть задано")
    private String name;
    private String description;
    private double price;
    private int quantity;
    private String pathToImage;


    @ManyToOne(fetch = FetchType.LAZY)
    private SubCategory subCategory;

    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(name = "user_commodity",
            joinColumns = @JoinColumn(name = "id_commodity"),
            inverseJoinColumns = @JoinColumn(name = "id_user"))
    private List<User>users;


    public Commodity() {
    }

    public Commodity(String name, String description, double price, int quantity, String pathToImage) {
        this.name = name;
        this.description = description;
        this.price = price;
        this.quantity = quantity;
        this.pathToImage = pathToImage;
    }

    public Commodity(String name, String description, double price, int quantity) {
        this.name = name;
        this.description = description;
        this.price = price;
        this.quantity = quantity;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public double getPrice() {
        return price;
    }

    public SubCategory getSubCategory() {
        return subCategory;
    }

    public void setSubCategory(SubCategory subCategory) {
        this.subCategory = subCategory;
    }

    public List<User> getUsers() {
        return users;
    }

    public void setUsers(List<User> users) {
        this.users = users;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getPathToImage() {
        return pathToImage;
    }

    public void setPathToImage(String pathToImage) {
        this.pathToImage = pathToImage;
    }

    @Override
    public String toString() {
        return "Commodity{" +
                "name='" + name + '\'' +
                ", description='" + description + '\'' +
                ", price=" + price +
                ", quantity=" + quantity +
                '}';
    }
}
