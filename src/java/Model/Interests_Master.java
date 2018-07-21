package Model;

import java.util.Date;

public class Interests_Master {
        private String interest_id;	//(varchar(20) : primary key)
	
	private String ad_id;		//(varchar(50) : foreign key)
	
	private String user_id;		//(varchar(50) : foreign key)
	
	private Date shown_date;	//(datetime)

    public Interests_Master(String interest_id, String ad_id, String user_id, Date shown_date) {
        this.interest_id = interest_id;
        this.ad_id = ad_id;
        this.user_id = user_id;
        this.shown_date = shown_date;
    }

    public Interests_Master() {
    }

    public String getInterest_id() {
        return interest_id;
    }

    public void setInterest_id(String interest_id) {
        this.interest_id = interest_id;
    }

    public String getAd_id() {
        return ad_id;
    }

    public void setAd_id(String ad_id) {
        this.ad_id = ad_id;
    }

    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }

    public Date getShown_date() {
        return shown_date;
    }

    public void setShown_date(Date shown_date) {
        this.shown_date = shown_date;
    }
        
        

}
