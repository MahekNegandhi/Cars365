package Model;

public class EntertainDetails_Master {
        
        private String entertain_id;	//(varchar(20) : primary keys)
	private String brand_id; 	//	(varchar(10) : foreign key)	
	private String model_id; 	//(varchar(10) : foreign key)
	private String variant_id; 	//(varchar(10) : foreign key)
	private boolean cd_player;	//	(boolean)
	private boolean radio;		//(boolean)
	private boolean tdin_audio;	//(boolean)
	private boolean bluetooth;	//	(boolean)
	private boolean usb_aux;		//(boolean)			
	private boolean touch_screen;	//(boolean)

    public EntertainDetails_Master() {
    }

    public EntertainDetails_Master(String entertain_id, String brand_id, String model_id, String variant_id, boolean cd_player, boolean radio, boolean tdin_audio, boolean bluetooth, boolean usb_aux, boolean touch_screen) {
        this.entertain_id = entertain_id;
        this.brand_id = brand_id;
        this.model_id = model_id;
        this.variant_id = variant_id;
        this.cd_player = cd_player;
        this.radio = radio;
        this.tdin_audio = tdin_audio;
        this.bluetooth = bluetooth;
        this.usb_aux = usb_aux;
        this.touch_screen = touch_screen;
    }

    public String getEntertain_id() {
        return entertain_id;
    }

    public void setEntertain_id(String entertain_id) {
        this.entertain_id = entertain_id;
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

    public boolean isCd_player() {
        return cd_player;
    }

    public void setCd_player(boolean cd_player) {
        this.cd_player = cd_player;
    }

    public boolean isRadio() {
        return radio;
    }

    public void setRadio(boolean radio) {
        this.radio = radio;
    }

    public boolean isTdin_audio() {
        return tdin_audio;
    }

    public void setTdin_audio(boolean tdin_audio) {
        this.tdin_audio = tdin_audio;
    }

    public boolean isBluetooth() {
        return bluetooth;
    }

    public void setBluetooth(boolean bluetooth) {
        this.bluetooth = bluetooth;
    }

    public boolean isUsb_aux() {
        return usb_aux;
    }

    public void setUsb_aux(boolean usb_aux) {
        this.usb_aux = usb_aux;
    }

    public boolean isTouch_screen() {
        return touch_screen;
    }

    public void setTouch_screen(boolean touch_screen) {
        this.touch_screen = touch_screen;
    }
	
        
    
}
