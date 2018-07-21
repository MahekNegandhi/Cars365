package Model;
public class BreakDetails_Master {
        
        private String break_id;		//(varchar(20) : primary key)
	private String brand_id; 		//(varchar(10) : foreign key)	
	private String model_id; 	//(varchar(10) : foreign key)
	private String variant_id; 	//(varchar(10) : foreign key)
	private String front_type;	//(varchar(40))
	private String rear_type;	//	(varchar(40))

    public BreakDetails_Master(String break_id, String brand_id, String model_id, String variant_id, String front_type, String rear_type) {
        this.break_id = break_id;
        this.brand_id = brand_id;
        this.model_id = model_id;
        this.variant_id = variant_id;
        this.front_type = front_type;
        this.rear_type = rear_type;
    }

    public BreakDetails_Master() {
    }

    public String getBreak_id() {
        return break_id;
    }

    public void setBreak_id(String break_id) {
        this.break_id = break_id;
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

    public String getFront_type() {
        return front_type;
    }

    public void setFront_type(String front_type) {
        this.front_type = front_type;
    }

    public String getRear_type() {
        return rear_type;
    }

    public void setRear_type(String rear_type) {
        this.rear_type = rear_type;
    }
	
        
}
