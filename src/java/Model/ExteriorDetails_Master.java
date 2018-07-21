package Model;

public class ExteriorDetails_Master {
    
        private String exterior_id;	//(varchar(20) : primary keys)
	private String brand_id; 	//	(varchar(10) : foreign key)	
	private String model_id; 	//(varchar(10) : foreign key)
	private String variant_id; 	//(varchar(10) : foreign key)
	private boolean fog_lights;	//	(boolean)
	private boolean electric_orvm;	//(boolean)
	private boolean rain_wipers;	//(boolean)
	private boolean rear_wipers;	//(boolean)
	private boolean alloy_wheels;	//(boolean)
	private boolean rear_spoiler;   //(boolean)
	private boolean sun_roof;	//	(boolean)
	private boolean orvm_turn;	//(boolean)
	private boolean smoke_lamps;	//(boolean)
	private boolean roof_rail;	//	(boolean)

    public ExteriorDetails_Master() {
    }

    public ExteriorDetails_Master(String exterior_id, String brand_id, String model_id, String variant_id, boolean fog_lights, boolean electric_orvm, boolean rain_wipers, boolean rear_wipers, boolean alloy_wheels, boolean rear_spoiler, boolean sun_roof, boolean orvm_turn, boolean smoke_lamps, boolean roof_rail) {
        this.exterior_id = exterior_id;
        this.brand_id = brand_id;
        this.model_id = model_id;
        this.variant_id = variant_id;
        this.fog_lights = fog_lights;
        this.electric_orvm = electric_orvm;
        this.rain_wipers = rain_wipers;
        this.rear_wipers = rear_wipers;
        this.alloy_wheels = alloy_wheels;
        this.rear_spoiler = rear_spoiler;
        this.sun_roof = sun_roof;
        this.orvm_turn = orvm_turn;
        this.smoke_lamps = smoke_lamps;
        this.roof_rail = roof_rail;
    }

    public String getExterior_id() {
        return exterior_id;
    }

    public void setExterior_id(String exterior_id) {
        this.exterior_id = exterior_id;
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

    public boolean isFog_lights() {
        return fog_lights;
    }

    public void setFog_lights(boolean fog_lights) {
        this.fog_lights = fog_lights;
    }

    public boolean isElectric_orvm() {
        return electric_orvm;
    }

    public void setElectric_orvm(boolean electric_orvm) {
        this.electric_orvm = electric_orvm;
    }

    public boolean isRain_wipers() {
        return rain_wipers;
    }

    public void setRain_wipers(boolean rain_wipers) {
        this.rain_wipers = rain_wipers;
    }

    public boolean isRear_wipers() {
        return rear_wipers;
    }

    public void setRear_wipers(boolean rear_wipers) {
        this.rear_wipers = rear_wipers;
    }

    public boolean isAlloy_wheels() {
        return alloy_wheels;
    }

    public void setAlloy_wheels(boolean alloy_wheels) {
        this.alloy_wheels = alloy_wheels;
    }

    public boolean isRear_spoiler() {
        return rear_spoiler;
    }

    public void setRear_spoiler(boolean rear_spoiler) {
        this.rear_spoiler = rear_spoiler;
    }

    public boolean isSun_roof() {
        return sun_roof;
    }

    public void setSun_roof(boolean sun_roof) {
        this.sun_roof = sun_roof;
    }

    public boolean isOrvm_turn() {
        return orvm_turn;
    }

    public void setOrvm_turn(boolean orvm_turn) {
        this.orvm_turn = orvm_turn;
    }

    public boolean isSmoke_lamps() {
        return smoke_lamps;
    }

    public void setSmoke_lamps(boolean smoke_lamps) {
        this.smoke_lamps = smoke_lamps;
    }

    public boolean isRoof_rail() {
        return roof_rail;
    }

    public void setRoof_rail(boolean roof_rail) {
        this.roof_rail = roof_rail;
    }
        
        
	
}
