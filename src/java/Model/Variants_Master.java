package Model;
public class Variants_Master {
    
        private String variant_id; //(varchar(10) : primary key)
	private String brand_id;	//(varchar(10) : foreign key)
	private String model_id;  //(varchar(10) : foreign key)
	private String variant_name; //(varchar(40))
	private String variant_price;   //(int)	

    public Variants_Master(String variant_id, String brand_id, String model_id, String variant_name, String variant_price) {
        this.variant_id = variant_id;
        this.brand_id = brand_id;
        this.model_id = model_id;
        this.variant_name = variant_name;
        this.variant_price = variant_price;
    }

    public Variants_Master(String variant_name, String variant_price) {
        this.variant_name = variant_name;
        this.variant_price = variant_price;
    }

    public Variants_Master() {
    }

    public String getVariant_id() {
        return variant_id;
    }

    public void setVariant_id(String variant_id) {
        this.variant_id = variant_id;
    }

    public String getBrand_id() {
        return brand_id;
    }

    public void setBrand_id(String brand_id) {
        this.brand_id = brand_id;
    }

    public String getModel_id() {
        return model_id;
    }

    public void setModel_id(String model_id) {
        this.model_id = model_id;
    }

    public String getVariant_name() {
        return variant_name;
    }

    public void setVariant_name(String variant_name) {
        this.variant_name = variant_name;
    }

    public String getVariant_price() {
        return variant_price;
    }

    public void setVariant_price(String variant_price) {
        this.variant_price = variant_price;
    }
        
        
	
}
