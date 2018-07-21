package Model;

public class InteriorDetails_Master {
    
        private String interior_id;	//(varchar(20) : primary keys)
	private String brand_id; 	//	(varchar(10) : foreign key)	
	private String model_id; 	//(varchar(10) : foreign key)
	private String variant_id; 	//(varchar(10) : foreign key)
	private boolean ac;		//	(boolean)
	private boolean adjust_steer_height;	//(boolean)
	private boolean adjust_steer_reach;	//(boolean)
	private boolean tachometer;		//(boolean)
	private boolean tripmeter;		//	(boolean)
	private boolean leather_seats;		//(boolean)
	private boolean digi_odometer;		//(boolean)
	private boolean folding_table;		//(boolean)

    public InteriorDetails_Master() {
    }

    public InteriorDetails_Master(String interior_id, String brand_id, String model_id, String variant_id, boolean ac, boolean adjust_steer_height, boolean adjust_steer_reach, boolean tachometer, boolean tripmeter, boolean leather_seats, boolean digi_odometer, boolean folding_table) {
        this.interior_id = interior_id;
        this.brand_id = brand_id;
        this.model_id = model_id;
        this.variant_id = variant_id;
        this.ac = ac;
        this.adjust_steer_height = adjust_steer_height;
        this.adjust_steer_reach = adjust_steer_reach;
        this.tachometer = tachometer;
        this.tripmeter = tripmeter;
        this.leather_seats = leather_seats;
        this.digi_odometer = digi_odometer;
        this.folding_table = folding_table;
    }

    public String getInterior_id() {
        return interior_id;
    }

    public void setInterior_id(String interior_id) {
        this.interior_id = interior_id;
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

    public boolean isAc() {
        return ac;
    }

    public void setAc(boolean ac) {
        this.ac = ac;
    }

    public boolean isAdjust_steer_height() {
        return adjust_steer_height;
    }

    public void setAdjust_steer_height(boolean adjust_steer_height) {
        this.adjust_steer_height = adjust_steer_height;
    }

    public boolean isAdjust_steer_reach() {
        return adjust_steer_reach;
    }

    public void setAdjust_steer_reach(boolean adjust_steer_reach) {
        this.adjust_steer_reach = adjust_steer_reach;
    }

    public boolean isTachometer() {
        return tachometer;
    }

    public void setTachometer(boolean tachometer) {
        this.tachometer = tachometer;
    }

    public boolean isTripmeter() {
        return tripmeter;
    }

    public void setTripmeter(boolean tripmeter) {
        this.tripmeter = tripmeter;
    }

    public boolean isLeather_seats() {
        return leather_seats;
    }

    public void setLeather_seats(boolean leather_seats) {
        this.leather_seats = leather_seats;
    }

    public boolean isDigi_odometer() {
        return digi_odometer;
    }

    public void setDigi_odometer(boolean digi_odometer) {
        this.digi_odometer = digi_odometer;
    }

    public boolean isFolding_table() {
        return folding_table;
    }

    public void setFolding_table(boolean folding_table) {
        this.folding_table = folding_table;
    }
        
        
	
}
