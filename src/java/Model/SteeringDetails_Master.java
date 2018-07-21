package Model;
public class SteeringDetails_Master {
        
        private String steer_id;		//(varchar(20) : primary key)	
	private String brand_id; 		//(varchar(10) : foreign key)	
	private String model_id; 	//(varchar(10) : foreign key)
	private String variant_id; 	//(varchar(10) : foreign key)
	private String steer_type;	//(varchar(20))
	private String steer_column;     //(varchar(40))
	private double turn_radius;	//(double)

    public SteeringDetails_Master() {
    }

    public SteeringDetails_Master(String steer_id, String brand_id, String model_id, String variant_id, String steer_type, String steer_column, double turn_radius) {
        this.steer_id = steer_id;
        this.brand_id = brand_id;
        this.model_id = model_id;
        this.variant_id = variant_id;
        this.steer_type = steer_type;
        this.steer_column = steer_column;
        this.turn_radius = turn_radius;
    }

    public String getSteer_id() {
        return steer_id;
    }

    public void setSteer_id(String steer_id) {
        this.steer_id = steer_id;
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

    public String getSteer_type() {
        return steer_type;
    }

    public void setSteer_type(String steer_type) {
        this.steer_type = steer_type;
    }

    public String getSteer_column() {
        return steer_column;
    }

    public void setSteer_column(String steer_column) {
        this.steer_column = steer_column;
    }

    public double getTurn_radius() {
        return turn_radius;
    }

    public void setTurn_radius(double turn_radius) {
        this.turn_radius = turn_radius;
    }
	
        
}
