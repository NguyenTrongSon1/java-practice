package com.example.practice.entity;

import com.example.practice.annotation.Column;
import com.example.practice.annotation.Entity;
import com.example.practice.annotation.Id;
import com.example.practice.util.SQLConstant;
import com.example.practice.util.SQLDataTypes;

import java.util.HashMap;

@Entity(tableName = "phones")
public class Phone {
    @Id(autoIncrement = true)
    private int id;
    @Column(columnName = "name",columnType = SQLDataTypes.VARCHAR255)
    private String name;
    @Column(columnName = "brand",columnType = SQLDataTypes.VARCHAR255)
    private String brand;
    @Column(columnName = "price",columnType = SQLDataTypes.DOUBLE)
    private Double price;
    @Column(columnName = "description",columnType = SQLDataTypes.VARCHAR255)
    private String description;

    public Phone() {
        this.name = " ";
        this.brand = " ";
        this.description = " ";
    }

    public Phone(int id, String name, String brand, Double price, String description) {
        this.id = id;
        this.name = name;
        this.brand = brand;
        this.price = price;
        this.description = description;
    }

    public Phone(String name, String brand, Double price, String description) {
        this.name = name;
        this.brand = brand;
        this.price = price;
        this.description = description;
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

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
    // kiểm tra đối tượng có hợp lệ hay không.
    public boolean isValid() {
        return getErrors().size() == 0;
    }

    // trả về danh sách lỗi
    public HashMap<String, String> getErrors() {
        HashMap<String, String> errors = new HashMap<>();
        if (name == null || name.length() == 0) {
            errors.put("name", "Vui lòng nhập tên sản phẩm");
        }else if(name.length() <= 7){
            errors.put("name","Tên sản phẩm phải lớn hơn 7 kí tự");
        }

        if (description == null || description.length() == 0) {
            errors.put("description", "Vui lòng nhập mô tả sản phẩm");
        }

        if (price ==  0) {
            errors.put("price", "Vui lòng nhập giá cho sản phẩm.");
        }


        return errors;
    }

}
