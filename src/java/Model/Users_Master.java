package Model;

public class Users_Master {
        
    
        private int user_id;			//(int ) : primary key)
        private String user_name;            //(varchar(100))
	private String user_email;	//(varchar(100))   (apply unique constraint)
	private String password;	//(varchar(20))
	private String primary_contact;	//(varchar(10))
	private boolean user_verified;		//boolean  (field to verify user's email-id which is going to be user_name)
	private int verification_code; 	//int

    public Users_Master() {
    }

    public Users_Master(int user_id, String user_name, String user_email, String password, String primary_contact, boolean user_verified) {
        this.user_id = user_id;
        this.user_name = user_name;
        this.user_email = user_email;
        this.password = password;
        this.primary_contact = primary_contact;
        this.user_verified = user_verified;
        //this.verification_code = verification_code;
    }

    public Users_Master(int user_id, String user_name, String user_email, String password, String primary_contact) {
        this.user_id = user_id;
        this.user_name = user_name;
        this.user_email = user_email;
        this.password = password;
        this.primary_contact = primary_contact;
    }

    
    public Users_Master(String user_name, String user_email, String password, String primary_contact) {
        this.user_name = user_name;
        this.user_email = user_email;
        this.password = password;
        this.primary_contact = primary_contact;
    }


    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public String getUser_email() {
        return user_email;
    }

    public void setUser_email(String user_email) {
        this.user_email = user_email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPrimary_contact() {
        return primary_contact;
    }

    public void setPrimary_contact(String primary_contact) {
        this.primary_contact = primary_contact;
    }

    public boolean isUser_verified() {
        return user_verified;
    }

    public void setUser_verified(boolean user_verified) {
        this.user_verified = user_verified;
    }

    public int getVerification_code() {
        return verification_code;
    }

    public void setVerification_code(int verification_code) {
        this.verification_code = verification_code;
    }
      
    
}
