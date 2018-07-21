package Model;
public class Models_Master {
        
        private String  model_id;  //(varchar(10) : primary key)
	private String brand_id;	//(varchar(10) : foreign key)
	private String model_name; //(varchar(40))
	private String model_type;   //(varchar(20))	

    public Models_Master(String model_id, String brand_id, String model_name, String model_type) {
        this.model_id = model_id;
        this.brand_id = brand_id;
        this.model_name = model_name;
        this.model_type = model_type;
    }

    public Models_Master() {
    }

    public Models_Master(String model_name, String model_type) {
        this.model_name = model_name;
        this.model_type = model_type;
    }

    public String getModel_id() {
        return model_id;
    }

    public void setModel_id(String model_id) {
        this.model_id = model_id;
    }

    public String getBrand_id() {
        return brand_id;
    }

    public void setBrand_id(String brand_id) {
        this.brand_id = brand_id;
    }

    public String getModel_name() {
        return model_name;
    }

    public void setModel_name(String model_name) {
        this.model_name = model_name;
    }

    public String getModel_type() {
        return model_type;
    }

    public void setModel_type(String model_type) {
        this.model_type = model_type;
    }
	
    
}
