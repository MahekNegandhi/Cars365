package Model;

public class TyreDetails_Master {
        
        private String tyre_id;		//(varchar(20) : primary key)
	private String brand_id; 	//	(varchar(10) : foreign key)	
	private String model_id; 	//(varchar(10) : foreign key)
	private String variant_id; 	//(varchar(10) : foreign key)
	private String tyre_size;	//	(varchar(20))
	private String tyre_type;	//	(varchar(40))
	private int wheel_size;	        //(int) 

    public TyreDetails_Master(String tyre_id, String brand_id, String model_id, String variant_id, String tyre_size, String tyre_type, int wheel_size) {
        this.tyre_id = tyre_id;
        this.brand_id = brand_id;
        this.model_id = model_id;
        this.variant_id = variant_id;
        this.tyre_size = tyre_size;
        this.tyre_type = tyre_type;
        this.wheel_size = wheel_size;
    }

    public TyreDetails_Master() {
    }

    public String getTyre_id() {
        return tyre_id;
    }

    public void setTyre_id(String tyre_id) {
        this.tyre_id = tyre_id;
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

    public String getVariant_id() {
        return variant_id;
    }

    public void setVariant_id(String variant_id) {
        this.variant_id = variant_id;
    }

    public String getTyre_size() {
        return tyre_size;
    }

    public void setTyre_size(String tyre_size) {
        this.tyre_size = tyre_size;
    }

    public String getTyre_type() {
        return tyre_type;
    }

    public void setTyre_type(String tyre_type) {
        this.tyre_type = tyre_type;
    }

    public int getWheel_size() {
        return wheel_size;
    }

    public void setWheel_size(int wheel_size) {
        this.wheel_size = wheel_size;
    }
        
        
}
