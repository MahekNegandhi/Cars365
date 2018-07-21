package Model;

public class Brands_Master {
    
    private String brand_id;      //(varchar(10) //: primary key)
    private String brand_name; //(varchar(40))

    public Brands_Master() {
    }

    public Brands_Master(String brand_id, String brand_name) {
        this.brand_id = brand_id;
        this.brand_name = brand_name;
    }

    public String getBrand_id() {
        return brand_id;
    }

    public void setBrand_id(String brand_id) {
        this.brand_id = brand_id;
    }

    public String getBrand_name() {
        return brand_name;
    }

    public void setBrand_name(String brand_name) {
        this.brand_name = brand_name;
    }
    
    
}
