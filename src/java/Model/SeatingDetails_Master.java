package Model;

public class SeatingDetails_Master {
        
        private String seat_id;	//(varchar(20) : primary key)
	private String brand_id; 	//	(varchar(10) : foreign key)	
	private String model_id; 	//(varchar(10) : foreign key)
	private String variant_id; 	//(varchar(10) : foreign key)
	private int seat_capacity;	//(int)
	private int no_of_doors;	//(int)
	private boolean fld_rear_seats;	//(boolean)

    public SeatingDetails_Master(String seat_id, String brand_id, String model_id, String variant_id, int seat_capacity, int no_of_doors, boolean fld_rear_seats) {
        this.seat_id = seat_id;
        this.brand_id = brand_id;
        this.model_id = model_id;
        this.variant_id = variant_id;
        this.seat_capacity = seat_capacity;
        this.no_of_doors = no_of_doors;
        this.fld_rear_seats = fld_rear_seats;
    }

    public SeatingDetails_Master() {
    }

    public String getSeat_id() {
        return seat_id;
    }

    public void setSeat_id(String seat_id) {
        this.seat_id = seat_id;
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

    public int getSeat_capacity() {
        return seat_capacity;
    }

    public void setSeat_capacity(int seat_capacity) {
        this.seat_capacity = seat_capacity;
    }

    public int getNo_of_doors() {
        return no_of_doors;
    }

    public void setNo_of_doors(int no_of_doors) {
        this.no_of_doors = no_of_doors;
    }

    public boolean isFld_rear_seats() {
        return fld_rear_seats;
    }

    public void setFld_rear_seats(boolean fld_rear_seats) {
        this.fld_rear_seats = fld_rear_seats;
    }
	
        
}
