package Model;

public class WarrantyDetails_Master {
        
        private String warranty_id;	//(varchar(20) : primary key)
	private String brand_id; 	//	(varchar(10) : foreign key)	
	private String model_id; 	//(varchar(10) : foreign key)
	private String variant_id; 	//(varchar(10) : foreign key)
	private int war_time;	//	(int)
	private int war_dist;	//	(int)

    public WarrantyDetails_Master() {
    }

    public WarrantyDetails_Master(String warranty_id, String brand_id, String model_id, String variant_id, int war_time, int war_dist) {
        this.warranty_id = warranty_id;
        this.brand_id = brand_id;
        this.model_id = model_id;
        this.variant_id = variant_id;
        this.war_time = war_time;
        this.war_dist = war_dist;
    }

    public String getWarranty_id() {
        return warranty_id;
    }

    public void setWarranty_id(String warranty_id) {
        this.warranty_id = warranty_id;
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

    public int getWar_time() {
        return war_time;
    }

    public void setWar_time(int war_time) {
        this.war_time = war_time;
    }

    public int getWar_dist() {
        return war_dist;
    }

    public void setWar_dist(int war_dist) {
        this.war_dist = war_dist;
    }
	
    
        
}
