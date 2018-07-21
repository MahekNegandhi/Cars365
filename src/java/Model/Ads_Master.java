package Model;

import java.io.Serializable;
import java.util.Date;


public class Ads_Master implements Serializable{
    
       private int  ad_id; 	     //(varchar(50) : primary key)	
	
	private int user_id;	     //(varchar(50)  foreign key)
	
	private String car_brand;    //(varchar(40))
	
	private String car_model;     //(varchar(40))
	
	private String car_variant;   //(varchar(40))
	
	private int ownership;         //(int)
	
	private boolean insurance;	// (boolean)
	
	private String color;	         //(varchar(20))	
	
	private String car_desc;	 //(varchar(200))			
	
	private String fuel_type;	    //  (varchar(20))
	
        private int reg_year;	            //(int)
	
	 private int kms_driven;           //(int)		
	
        private String	city;		   // (varchar(30))

	private int exp_sell_price;         //(int)	
	
	private boolean ad_status;	  //(boolean)
	
	private Date posted_date;	   //(datetime)
	
	private Date expiry_date;	 //(datetime)	

        private long timestamp;
   
        public Ads_Master() {
        }

    public Ads_Master(int user_id, String car_brand, String car_model, String car_variant, int ownership, boolean insurance, String color, String car_desc, String fuel_type, int reg_year, int kms_driven, String city, int exp_sell_price) {
        this.user_id = user_id;
        this.car_brand = car_brand;
        this.car_model = car_model;
        this.car_variant = car_variant;
        this.ownership = ownership;
        this.insurance = insurance;
        this.color = color;
        this.car_desc = car_desc;
        this.fuel_type = fuel_type;
        this.reg_year = reg_year;
        this.kms_driven = kms_driven;
        this.city = city;
        this.exp_sell_price = exp_sell_price;
    }

    
    public Ads_Master(int user_id, String car_brand, String car_model, String car_variant, int ownership, boolean insurance, String color, String car_desc, String fuel_type, int reg_year, int kms_driven, String city, int exp_sell_price, boolean ad_status, long timestamp) {
        this.user_id = user_id;
        this.car_brand = car_brand;
        this.car_model = car_model;
        this.car_variant = car_variant;
        this.ownership = ownership;
        this.insurance = insurance;
        this.color = color;
        this.car_desc = car_desc;
        this.fuel_type = fuel_type;
        this.reg_year = reg_year;
        this.kms_driven = kms_driven;
        this.city = city;
        this.exp_sell_price = exp_sell_price;
        this.ad_status = ad_status;
        this.timestamp = timestamp;
    }

    public long getTimestamp() {
        return timestamp;
    }

    public void setTimestamp(long timestamp) {
        this.timestamp = timestamp;
    }

   
    

   
    
    public int getAd_id() {
        return ad_id;
    }

    public void setAd_id(int ad_id) {
        this.ad_id = ad_id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getCar_brand() {
        return car_brand;
    }

    public void setCar_brand(String car_brand) {
        this.car_brand = car_brand;
    }

    public String getCar_model() {
        return car_model;
    }

    public void setCar_model(String car_model) {
        this.car_model = car_model;
    }

    public String getCar_variant() {
        return car_variant;
    }

    public void setCar_variant(String car_variant) {
        this.car_variant = car_variant;
    }

    public int getOwnership() {
        return ownership;
    }

    public void setOwnership(int ownership) {
        this.ownership = ownership;
    }

    public boolean isInsurance() {
        return insurance;
    }

    public void setInsurance(boolean insurance) {
        this.insurance = insurance;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getCar_desc() {
        return car_desc;
    }

    public void setCar_desc(String car_desc) {
        this.car_desc = car_desc;
    }

    public String getFuel_type() {
        return fuel_type;
    }

    public void setFuel_type(String fuel_type) {
        this.fuel_type = fuel_type;
    }

    public int getReg_year() {
        return reg_year;
    }

    public void setReg_year(int reg_year) {
        this.reg_year = reg_year;
    }

    public int getKms_driven() {
        return kms_driven;
    }

    public void setKms_driven(int kms_driven) {
        this.kms_driven = kms_driven;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public int getExp_sell_price() {
        return exp_sell_price;
    }

    public void setExp_sell_price(int exp_sell_price) {
        this.exp_sell_price = exp_sell_price;
    }

    public boolean isAd_status() {
        return ad_status;
    }

    public void setAd_status(boolean ad_status) {
        this.ad_status = ad_status;
    }

    public Date getPosted_date() {
        return posted_date;
    }

    public void setPosted_date(Date posted_date) {
        this.posted_date = posted_date;
    }

    public Date getExpiry_date() {
        return expiry_date;
    }

    public void setExpiry_date(Date expiry_date) {
        this.expiry_date = expiry_date;
    }
	


}
