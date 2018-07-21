package Model;
public class EngineDetails_Master {
    
       private String  engine_id; 	//(varchar(20) : primary key)
	private String brand_id;	//	(varchar(10) : foreign key)	
	private String model_id; 	//(varchar(10) : foreign key)
	private String variant_id; 	//(varchar(10) : foreign key)
	private String engine_type;	//(varchar(20))
	private String engine_desc;	//(varchar (100))	
	private int engine_displacement;	//(int)
	private int no_of_cylinders;		//(int)
	private String max_power;		//(varchar(40))
	private String max_torque;		//(varchar(40))
	private String fuel_supply_system;	//(varchar(20))
	private boolean turbo_charger;		//(boolean)
	private boolean super_charger;		//(boolean)

    public EngineDetails_Master(String engine_id, String brand_id, String model_id, String variant_id, String engine_type, String engine_desc, int engine_displacement, int no_of_cylinders, String max_power, String max_torque, String fuel_supply_system, boolean turbo_charger, boolean super_charger) {
        this.engine_id = engine_id;
        this.brand_id = brand_id;
        this.model_id = model_id;
        this.variant_id = variant_id;
        this.engine_type = engine_type;
        this.engine_desc = engine_desc;
        this.engine_displacement = engine_displacement;
        this.no_of_cylinders = no_of_cylinders;
        this.max_power = max_power;
        this.max_torque = max_torque;
        this.fuel_supply_system = fuel_supply_system;
        this.turbo_charger = turbo_charger;
        this.super_charger = super_charger;
    }

    public EngineDetails_Master(String engine_type, String engine_desc, int engine_displacement, int no_of_cylinders, String max_power, String max_torque, String fuel_supply_system, boolean turbo_charger, boolean super_charger) {
        this.engine_type = engine_type;
        this.engine_desc = engine_desc;
        this.engine_displacement = engine_displacement;
        this.no_of_cylinders = no_of_cylinders;
        this.max_power = max_power;
        this.max_torque = max_torque;
        this.fuel_supply_system = fuel_supply_system;
        this.turbo_charger = turbo_charger;
        this.super_charger = super_charger;
    }

    public EngineDetails_Master(String engine_id, String engine_type, String engine_desc, int engine_displacement, int no_of_cylinders, String max_power, String max_torque, String fuel_supply_system, boolean turbo_charger, boolean super_charger) {
        this.engine_id = engine_id;
        this.engine_type = engine_type;
        this.engine_desc = engine_desc;
        this.engine_displacement = engine_displacement;
        this.no_of_cylinders = no_of_cylinders;
        this.max_power = max_power;
        this.max_torque = max_torque;
        this.fuel_supply_system = fuel_supply_system;
        this.turbo_charger = turbo_charger;
        this.super_charger = super_charger;
    }

    public EngineDetails_Master() {
    }

    public String getEngine_id() {
        return engine_id;
    }

    public void setEngine_id(String engine_id) {
        this.engine_id = engine_id;
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

    public String getEngine_type() {
        return engine_type;
    }

    public void setEngine_type(String engine_type) {
        this.engine_type = engine_type;
    }

    public String getEngine_desc() {
        return engine_desc;
    }

    public void setEngine_desc(String engine_desc) {
        this.engine_desc = engine_desc;
    }

    public int getEngine_displacement() {
        return engine_displacement;
    }

    public void setEngine_displacement(int engine_displacement) {
        this.engine_displacement = engine_displacement;
    }

    public int getNo_of_cylinders() {
        return no_of_cylinders;
    }

    public void setNo_of_cylinders(int no_of_cylinders) {
        this.no_of_cylinders = no_of_cylinders;
    }

    public String getMax_power() {
        return max_power;
    }

    public void setMax_power(String max_power) {
        this.max_power = max_power;
    }

    public String getMax_torque() {
        return max_torque;
    }

    public void setMax_torque(String max_torque) {
        this.max_torque = max_torque;
    }

    public String getFuel_supply_system() {
        return fuel_supply_system;
    }

    public void setFuel_supply_system(String fuel_supply_system) {
        this.fuel_supply_system = fuel_supply_system;
    }

    public boolean isTurbo_charger() {
        return turbo_charger;
    }

    public void setTurbo_charger(boolean turbo_charger) {
        this.turbo_charger = turbo_charger;
    }

    public boolean isSuper_charger() {
        return super_charger;
    }

    public void setSuper_charger(boolean super_charger) {
        this.super_charger = super_charger;
    }

        
}
