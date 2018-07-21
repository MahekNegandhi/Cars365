package Model;

public class SuspensionDetails_Master {
        
        private String susp_id;		//(varchar(20) : primary key)	
	private String brand_id; 	//	(varchar(10) : foreign key)	
	private String model_id; 	//(varchar(10) : foreign key)
	private String variant_id; 	//(varchar(10) : foreign key)
	private String front_susp;	//(varchar(40))
	private String rear_susp;	//	(varchar(40))

    public SuspensionDetails_Master() {
    }

    public SuspensionDetails_Master(String susp_id, String brand_id, String model_id, String variant_id, String front_susp, String rear_susp) {
        this.susp_id = susp_id;
        this.brand_id = brand_id;
        this.model_id = model_id;
        this.variant_id = variant_id;
        this.front_susp = front_susp;
        this.rear_susp = rear_susp;
    }

    public String getSusp_id() {
        return susp_id;
    }

    public void setSusp_id(String susp_id) {
        this.susp_id = susp_id;
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

    public String getFront_susp() {
        return front_susp;
    }

    public void setFront_susp(String front_susp) {
        this.front_susp = front_susp;
    }

    public String getRear_susp() {
        return rear_susp;
    }

    public void setRear_susp(String rear_susp) {
        this.rear_susp = rear_susp;
    }
        
        
}
