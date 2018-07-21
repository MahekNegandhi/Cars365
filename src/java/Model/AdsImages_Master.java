package Model;
public class AdsImages_Master {
        private String image_id;		//(varchar(20) : primary key)
	
	private int ad_id;		//(varchar(50) : foreign key)
	
	private String image_url;	//(varchar(50))

    public AdsImages_Master(String image_id, int ad_id, String image_url) {
        this.image_id = image_id;
        this.ad_id = ad_id;
        this.image_url = image_url;
    }

    public AdsImages_Master() {
    }

    public AdsImages_Master(int ad_id, String image_url) {
        this.ad_id = ad_id;
        this.image_url = image_url;
    }
    

    public String getImage_id() {
        return image_id;
    }

    public void setImage_id(String image_id) {
        this.image_id = image_id;
    }

    public int getAd_id() {
        return ad_id;
    }

    public void setAd_id(int ad_id) {
        this.ad_id = ad_id;
    }

    public String getImage_url() {
        return image_url;
    }

    public void setImage_url(String image_url) {
        this.image_url = image_url;
    }
}
