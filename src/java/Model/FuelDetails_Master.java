package Model;

public class FuelDetails_Master {
        
        private String fuel_id;	        //(varchar(20) : primary key)
	private String brand_id; 	//	(varchar(10) : foreign key)	
	private String model_id; 	//(varchar(10) : foreign key)
	private String variant_id; 	//(varchar(10) : foreign key)
	private double city_mileage;	//(double)
	private double arai_mileage;	//(double)
	private String fuel_type;	//	(varchar(20))
	private int tank_capacity;	//(int)
	private String emission_norm;	 //(varchar(20))

    public FuelDetails_Master(String fuel_id, String brand_id, String model_id, String variant_id, double city_mileage, double arai_mileage, String fuel_type, int tank_capacity, String emission_norm) {
        this.fuel_id = fuel_id;
        this.brand_id = brand_id;
        this.model_id = model_id;
        this.variant_id = variant_id;
        this.city_mileage = city_mileage;
        this.arai_mileage = arai_mileage;
        this.fuel_type = fuel_type;
        this.tank_capacity = tank_capacity;
        this.emission_norm = emission_norm;
    }

    public FuelDetails_Master() {
    }

    public String getFuel_id() {
        return fuel_id;
    }

    public void setFuel_id(String fuel_id) {
        this.fuel_id = fuel_id;
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

    public double getCity_mileage() {
        return city_mileage;
    }

    public void setCity_mileage(double city_mileage) {
        this.city_mileage = city_mileage;
    }

    public double getArai_mileage() {
        return arai_mileage;
    }

    public void setArai_mileage(double arai_mileage) {
        this.arai_mileage = arai_mileage;
    }

    public String getFuel_type() {
        return fuel_type;
    }

    public void setFuel_type(String fuel_type) {
        this.fuel_type = fuel_type;
    }

    public int getTank_capacity() {
        return tank_capacity;
    }

    public void setTank_capacity(int tank_capacity) {
        this.tank_capacity = tank_capacity;
    }

    public String getEmission_norm() {
        return emission_norm;
    }

    public void setEmission_norm(String emission_norm) {
        this.emission_norm = emission_norm;
    }
	
        
}
