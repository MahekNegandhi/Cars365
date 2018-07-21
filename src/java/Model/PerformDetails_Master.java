package Model;

public class PerformDetails_Master {
    
        private String perform_id;	//(varchar(20) : primary key)
	private String brand_id; 		//(varchar(10) : foreign key)	
	private String model_id; 	//(varchar(10) : foreign key)
	private String variant_id; 	//(varchar(10) : foreign key)
	private int top_speed;	//(int)
	private double accelarate;	//(double)

    public PerformDetails_Master(String perform_id, String brand_id, String model_id, String variant_id, int top_speed, double accelarate) {
        this.perform_id = perform_id;
        this.brand_id = brand_id;
        this.model_id = model_id;
        this.variant_id = variant_id;
        this.top_speed = top_speed;
        this.accelarate = accelarate;
    }

    public PerformDetails_Master() {
    }

    public String getPerform_id() {
        return perform_id;
    }

    public void setPerform_id(String perform_id) {
        this.perform_id = perform_id;
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

    public int getTop_speed() {
        return top_speed;
    }

    public void setTop_speed(int top_speed) {
        this.top_speed = top_speed;
    }

    public double getAccelarate() {
        return accelarate;
    }

    public void setAccelarate(double accelarate) {
        this.accelarate = accelarate;
    }
	
        
}
