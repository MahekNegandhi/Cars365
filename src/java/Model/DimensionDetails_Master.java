package Model;
public class DimensionDetails_Master {
    
        private String dimension_id;	//(varchar(20) : primary keys)
	private String brand_id; 	//	(varchar(10) : foreign key)	
	private String model_id; 	//(varchar(10) : foreign key)
	private String variant_id; 	//(varchar(10) : foreign key)
	private int length;		//(int)
	private int width;		//(int)
	private int height;		//(int)
	private int grnd_clearance; //(int)
	private int wheel_base;	//(int)
	private int kerb_weight;	//(int)

    public DimensionDetails_Master() {
    }

    public DimensionDetails_Master(String dimension_id, String brand_id, String model_id, String variant_id, int length, int width, int height, int grnd_clearance, int wheel_base, int kerb_weight) {
        this.dimension_id = dimension_id;
        this.brand_id = brand_id;
        this.model_id = model_id;
        this.variant_id = variant_id;
        this.length = length;
        this.width = width;
        this.height = height;
        this.grnd_clearance = grnd_clearance;
        this.wheel_base = wheel_base;
        this.kerb_weight = kerb_weight;
    }

    public String getDimension_id() {
        return dimension_id;
    }

    public void setDimension_id(String dimension_id) {
        this.dimension_id = dimension_id;
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

    public int getLength() {
        return length;
    }

    public void setLength(int length) {
        this.length = length;
    }

    public int getWidth() {
        return width;
    }

    public void setWidth(int width) {
        this.width = width;
    }

    public int getHeight() {
        return height;
    }

    public void setHeight(int height) {
        this.height = height;
    }

    public int getGrnd_clearance() {
        return grnd_clearance;
    }

    public void setGrnd_clearance(int grnd_clearance) {
        this.grnd_clearance = grnd_clearance;
    }

    public int getWheel_base() {
        return wheel_base;
    }

    public void setWheel_base(int wheel_base) {
        this.wheel_base = wheel_base;
    }

    public int getKerb_weight() {
        return kerb_weight;
    }

    public void setKerb_weight(int kerb_weight) {
        this.kerb_weight = kerb_weight;
    }
        
        

}
