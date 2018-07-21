package Model;

public class TransDetails_Master {
    
       private String  trans_id;		//(varchar(20) : primary key)
	private String brand_id; 		//(varchar(10) : foreign key)	
	private String model_id; 	//(varchar(10) : foreign key)
	private String variant_id; 	//(varchar(10) : foreign key)
	private String trans_type;	//(varchar(20))
	private String gear_box;	//	(varchar(20))
	private String drive_type;	//(varchar(20))

    public TransDetails_Master() {
    }

    public TransDetails_Master(String trans_id, String brand_id, String model_id, String variant_id, String trans_type, String gear_box, String drive_type) {
        this.trans_id = trans_id;
        this.brand_id = brand_id;
        this.model_id = model_id;
        this.variant_id = variant_id;
        this.trans_type = trans_type;
        this.gear_box = gear_box;
        this.drive_type = drive_type;
    }

    public TransDetails_Master(String trans_type, String gear_box, String drive_type) {
        this.trans_type = trans_type;
        this.gear_box = gear_box;
        this.drive_type = drive_type;
    }

    public String getTrans_id() {
        return trans_id;
    }

    public void setTrans_id(String trans_id) {
        this.trans_id = trans_id;
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

    public String getTrans_type() {
        return trans_type;
    }

    public void setTrans_type(String trans_type) {
        this.trans_type = trans_type;
    }

    public String getGear_box() {
        return gear_box;
    }

    public void setGear_box(String gear_box) {
        this.gear_box = gear_box;
    }

    public String getDrive_type() {
        return drive_type;
    }

    public void setDrive_type(String drive_type) {
        this.drive_type = drive_type;
    }
	
        
}
