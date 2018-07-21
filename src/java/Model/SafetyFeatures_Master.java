package Model;

public class SafetyFeatures_Master {
    
        private String feature_id;	 //(varchar(20) : primary keys)
	private String brand_id; 	 //	(varchar(10) : foreign key)	
	private String model_id; 	 //(varchar(10) : foreign key)
	private String variant_id; 	 //(varchar(10) : foreign key)
	private boolean anti_lock_break;  //(boolean)
	private boolean brake_assist;	 //(boolean)
	private boolean central_lock;	 //(boolean)
	private boolean pwr_door_lock;	 //(boolean)
	private boolean child_safety_lock; //(boolean)
	private boolean anti_theft_alarm;  //(boolean)
	private boolean drvr_airbag;	   //(boolean)
	private boolean passenger_airbag;    //(boolean)
	private boolean side_front_airbag;    //(boolean)
	private boolean side_rear_airbag;     //(boolean)
	private boolean projector_headlamp;    //(boolean)
	private boolean rear_seat_belt;	     //  (boolean)
	private boolean seat_belt_warn;	       //(boolean)
	private boolean traction_ctrl;	       //(boolean)
	private boolean child_seat;	       //(boolean)
	private boolean hill_assist;		 //      (boolean)
	private boolean engine_immobile;        //(boolean)
	private boolean engine_check_warn;    //(boolean)
	private boolean EBD;		     //	       (boolean)	

    public SafetyFeatures_Master() {
    }

    public SafetyFeatures_Master(String feature_id, String brand_id, String model_id, String variant_id, boolean anti_lock_break, boolean brake_assist, boolean central_lock, boolean pwr_door_lock, boolean child_safety_lock, boolean anti_theft_alarm, boolean drvr_airbag, boolean passenger_airbag, boolean side_front_airbag, boolean side_rear_airbag, boolean projector_headlamp, boolean rear_seat_belt, boolean seat_belt_warn, boolean traction_ctrl, boolean child_seat, boolean hill_assist, boolean engine_immobile, boolean engine_check_warn, boolean EBD) {
        this.feature_id = feature_id;
        this.brand_id = brand_id;
        this.model_id = model_id;
        this.variant_id = variant_id;
        this.anti_lock_break = anti_lock_break;
        this.brake_assist = brake_assist;
        this.central_lock = central_lock;
        this.pwr_door_lock = pwr_door_lock;
        this.child_safety_lock = child_safety_lock;
        this.anti_theft_alarm = anti_theft_alarm;
        this.drvr_airbag = drvr_airbag;
        this.passenger_airbag = passenger_airbag;
        this.side_front_airbag = side_front_airbag;
        this.side_rear_airbag = side_rear_airbag;
        this.projector_headlamp = projector_headlamp;
        this.rear_seat_belt = rear_seat_belt;
        this.seat_belt_warn = seat_belt_warn;
        this.traction_ctrl = traction_ctrl;
        this.child_seat = child_seat;
        this.hill_assist = hill_assist;
        this.engine_immobile = engine_immobile;
        this.engine_check_warn = engine_check_warn;
        this.EBD = EBD;
    }

    public String getFeature_id() {
        return feature_id;
    }

    public void setFeature_id(String feature_id) {
        this.feature_id = feature_id;
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

    public boolean isAnti_lock_break() {
        return anti_lock_break;
    }

    public void setAnti_lock_break(boolean anti_lock_break) {
        this.anti_lock_break = anti_lock_break;
    }

    public boolean isBrake_assist() {
        return brake_assist;
    }

    public void setBrake_assist(boolean brake_assist) {
        this.brake_assist = brake_assist;
    }

    public boolean isCentral_lock() {
        return central_lock;
    }

    public void setCentral_lock(boolean central_lock) {
        this.central_lock = central_lock;
    }

    public boolean isPwr_door_lock() {
        return pwr_door_lock;
    }

    public void setPwr_door_lock(boolean pwr_door_lock) {
        this.pwr_door_lock = pwr_door_lock;
    }

    public boolean isChild_safety_lock() {
        return child_safety_lock;
    }

    public void setChild_safety_lock(boolean child_safety_lock) {
        this.child_safety_lock = child_safety_lock;
    }

    public boolean isAnti_theft_alarm() {
        return anti_theft_alarm;
    }

    public void setAnti_theft_alarm(boolean anti_theft_alarm) {
        this.anti_theft_alarm = anti_theft_alarm;
    }

    public boolean isDrvr_airbag() {
        return drvr_airbag;
    }

    public void setDrvr_airbag(boolean drvr_airbag) {
        this.drvr_airbag = drvr_airbag;
    }

    public boolean isPassenger_airbag() {
        return passenger_airbag;
    }

    public void setPassenger_airbag(boolean passenger_airbag) {
        this.passenger_airbag = passenger_airbag;
    }

    public boolean isSide_front_airbag() {
        return side_front_airbag;
    }

    public void setSide_front_airbag(boolean side_front_airbag) {
        this.side_front_airbag = side_front_airbag;
    }

    public boolean isSide_rear_airbag() {
        return side_rear_airbag;
    }

    public void setSide_rear_airbag(boolean side_rear_airbag) {
        this.side_rear_airbag = side_rear_airbag;
    }

    public boolean isProjector_headlamp() {
        return projector_headlamp;
    }

    public void setProjector_headlamp(boolean projector_headlamp) {
        this.projector_headlamp = projector_headlamp;
    }

    public boolean isRear_seat_belt() {
        return rear_seat_belt;
    }

    public void setRear_seat_belt(boolean rear_seat_belt) {
        this.rear_seat_belt = rear_seat_belt;
    }

    public boolean isSeat_belt_warn() {
        return seat_belt_warn;
    }

    public void setSeat_belt_warn(boolean seat_belt_warn) {
        this.seat_belt_warn = seat_belt_warn;
    }

    public boolean isTraction_ctrl() {
        return traction_ctrl;
    }

    public void setTraction_ctrl(boolean traction_ctrl) {
        this.traction_ctrl = traction_ctrl;
    }

    public boolean isChild_seat() {
        return child_seat;
    }

    public void setChild_seat(boolean child_seat) {
        this.child_seat = child_seat;
    }

    public boolean isHill_assist() {
        return hill_assist;
    }

    public void setHill_assist(boolean hill_assist) {
        this.hill_assist = hill_assist;
    }

    public boolean isEngine_immobile() {
        return engine_immobile;
    }

    public void setEngine_immobile(boolean engine_immobile) {
        this.engine_immobile = engine_immobile;
    }

    public boolean isEngine_check_warn() {
        return engine_check_warn;
    }

    public void setEngine_check_warn(boolean engine_check_warn) {
        this.engine_check_warn = engine_check_warn;
    }

    public boolean isEBD() {
        return EBD;
    }

    public void setEBD(boolean EBD) {
        this.EBD = EBD;
    }
        
        
        
	
}
