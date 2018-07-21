package Model;
public class ConvenienceDetails_Master {
        
        private String conv_id;		//(varchar(20) : primary key)
	private String brand_id; 	//	(varchar(10) : foreign key)	
	private String model_id; 	//(varchar(10) : foreign key)
	private String variant_id; 	//(varchar(10) : foreign key)
	private boolean pwr_steer;	//	(boolean)
	private boolean pwr_win_front;  //(boolean)
	private boolean pwr_win_rear;  //(boolean)	 			 		 				 		auto_climate	 (boolean)
	private boolean remote_trunk;	// (boolean)
	private boolean low_fuel_light;	 //(boolean)
	private boolean rear_ac_vents;	 //(boolean)
	private boolean steer_mnt_ctrl;	 //(boolean)
	private boolean cruise_ctrl;	 //(boolean)
	private boolean park_sensors;     //(boolean)
	private boolean park_camera;	//(boolean)
	private boolean gps;			//(boolean)							
	private boolean access_card_entry;	//(boolean)
	private boolean keyless_entry;		//(boolean)
	private boolean en_start_stop_btn;	//(boolean)
	private String drive_modes;		//(varchar(40))
	private boolean cooled_glove_box;	//(boolean)	
	private boolean voice_ctrl;		//	(boolean)
	private boolean touch_sat_nav_sys;	//(boolean)
	private boolean rear_curtain;		//(boolean)

    public ConvenienceDetails_Master() {
    }

    public ConvenienceDetails_Master(String conv_id, String brand_id, String model_id, String variant_id, boolean pwr_steer, boolean pwr_win_front, boolean pwr_win_rear, boolean remote_trunk, boolean low_fuel_light, boolean rear_ac_vents, boolean steer_mnt_ctrl, boolean cruise_ctrl, boolean park_sensors, boolean park_camera, boolean gps, boolean access_card_entry, boolean keyless_entry, boolean en_start_stop_btn, String drive_modes, boolean cooled_glove_box, boolean voice_ctrl, boolean touch_sat_nav_sys, boolean rear_curtain) {
        this.conv_id = conv_id;
        this.brand_id = brand_id;
        this.model_id = model_id;
        this.variant_id = variant_id;
        this.pwr_steer = pwr_steer;
        this.pwr_win_front = pwr_win_front;
        this.pwr_win_rear = pwr_win_rear;
        this.remote_trunk = remote_trunk;
        this.low_fuel_light = low_fuel_light;
        this.rear_ac_vents = rear_ac_vents;
        this.steer_mnt_ctrl = steer_mnt_ctrl;
        this.cruise_ctrl = cruise_ctrl;
        this.park_sensors = park_sensors;
        this.park_camera = park_camera;
        this.gps = gps;
        this.access_card_entry = access_card_entry;
        this.keyless_entry = keyless_entry;
        this.en_start_stop_btn = en_start_stop_btn;
        this.drive_modes = drive_modes;
        this.cooled_glove_box = cooled_glove_box;
        this.voice_ctrl = voice_ctrl;
        this.touch_sat_nav_sys = touch_sat_nav_sys;
        this.rear_curtain = rear_curtain;
    }

    public String getConv_id() {
        return conv_id;
    }

    public void setConv_id(String conv_id) {
        this.conv_id = conv_id;
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

    public boolean isPwr_steer() {
        return pwr_steer;
    }

    public void setPwr_steer(boolean pwr_steer) {
        this.pwr_steer = pwr_steer;
    }

    public boolean isPwr_win_front() {
        return pwr_win_front;
    }

    public void setPwr_win_front(boolean pwr_win_front) {
        this.pwr_win_front = pwr_win_front;
    }

    public boolean isPwr_win_rear() {
        return pwr_win_rear;
    }

    public void setPwr_win_rear(boolean pwr_win_rear) {
        this.pwr_win_rear = pwr_win_rear;
    }

    public boolean isRemote_trunk() {
        return remote_trunk;
    }

    public void setRemote_trunk(boolean remote_trunk) {
        this.remote_trunk = remote_trunk;
    }

    public boolean isLow_fuel_light() {
        return low_fuel_light;
    }

    public void setLow_fuel_light(boolean low_fuel_light) {
        this.low_fuel_light = low_fuel_light;
    }

    public boolean isRear_ac_vents() {
        return rear_ac_vents;
    }

    public void setRear_ac_vents(boolean rear_ac_vents) {
        this.rear_ac_vents = rear_ac_vents;
    }

    public boolean isSteer_mnt_ctrl() {
        return steer_mnt_ctrl;
    }

    public void setSteer_mnt_ctrl(boolean steer_mnt_ctrl) {
        this.steer_mnt_ctrl = steer_mnt_ctrl;
    }

    public boolean isCruise_ctrl() {
        return cruise_ctrl;
    }

    public void setCruise_ctrl(boolean cruise_ctrl) {
        this.cruise_ctrl = cruise_ctrl;
    }

    public boolean isPark_sensors() {
        return park_sensors;
    }

    public void setPark_sensors(boolean park_sensors) {
        this.park_sensors = park_sensors;
    }

    public boolean isPark_camera() {
        return park_camera;
    }

    public void setPark_camera(boolean park_camera) {
        this.park_camera = park_camera;
    }

    public boolean isGps() {
        return gps;
    }

    public void setGps(boolean gps) {
        this.gps = gps;
    }

    public boolean isAccess_card_entry() {
        return access_card_entry;
    }

    public void setAccess_card_entry(boolean access_card_entry) {
        this.access_card_entry = access_card_entry;
    }

    public boolean isKeyless_entry() {
        return keyless_entry;
    }

    public void setKeyless_entry(boolean keyless_entry) {
        this.keyless_entry = keyless_entry;
    }

    public boolean isEn_start_stop_btn() {
        return en_start_stop_btn;
    }

    public void setEn_start_stop_btn(boolean en_start_stop_btn) {
        this.en_start_stop_btn = en_start_stop_btn;
    }

    public String getDrive_modes() {
        return drive_modes;
    }

    public void setDrive_modes(String drive_modes) {
        this.drive_modes = drive_modes;
    }

    public boolean isCooled_glove_box() {
        return cooled_glove_box;
    }

    public void setCooled_glove_box(boolean cooled_glove_box) {
        this.cooled_glove_box = cooled_glove_box;
    }

    public boolean isVoice_ctrl() {
        return voice_ctrl;
    }

    public void setVoice_ctrl(boolean voice_ctrl) {
        this.voice_ctrl = voice_ctrl;
    }

    public boolean isTouch_sat_nav_sys() {
        return touch_sat_nav_sys;
    }

    public void setTouch_sat_nav_sys(boolean touch_sat_nav_sys) {
        this.touch_sat_nav_sys = touch_sat_nav_sys;
    }

    public boolean isRear_curtain() {
        return rear_curtain;
    }

    public void setRear_curtain(boolean rear_curtain) {
        this.rear_curtain = rear_curtain;
    }
	
        
}
