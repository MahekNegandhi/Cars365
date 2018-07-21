package Model;
public class PayloadDetails_Master {
    
        private String payload_id;	//(varchar(20) : primary key)
	private String brand_id; 	//	(varchar(10) : foreign key)	
	private String model_id; 	//(varchar(10) : foreign key)
	private String variant_id; 	//(varchar(10) : foreign key)
	private int cargo_volume;	//(int)

    public PayloadDetails_Master() {
    }

    public PayloadDetails_Master(String payload_id, String brand_id, String model_id, String variant_id, int cargo_volume) {
        this.payload_id = payload_id;
        this.brand_id = brand_id;
        this.model_id = model_id;
        this.variant_id = variant_id;
        this.cargo_volume = cargo_volume;
    }

    public String getPayload_id() {
        return payload_id;
    }

    public void setPayload_id(String payload_id) {
        this.payload_id = payload_id;
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

    public int getCargo_volume() {
        return cargo_volume;
    }

    public void setCargo_volume(int cargo_volume) {
        this.cargo_volume = cargo_volume;
    }
	
        
}
