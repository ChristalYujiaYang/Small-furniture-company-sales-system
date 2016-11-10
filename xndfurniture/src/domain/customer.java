package domain;

public class customer {
	private int userid;
	private String username;
	private String password;
	private String phonenumber;
	private String email;
	
	public customer()
    {
        super();
        // TODO Auto-generated constructor stub
    }
    public customer(int userid, String username, String password, String phonenumber, String email)
    {
        super();
        this.userid = userid;
        this.username = username;
        this.password = password;
        this.phonenumber = phonenumber;
        this.email = email;
    }
    public int getUserid()
    {
        return userid;
    }
    public void setUserid(int userid)
    {
        this.userid = userid;
    }
    public String getUsername()
    {
        return username;
    }
    public void setUsername(String username)
    {
        this.username = username;
    }
    public String getPassword()
    {
        return password;
    }
    public void setPassword(String password)
    {
        this.password = password;
    }
    public String getPhonenumber()
    {
        return phonenumber;
    }
    public void setPhonenumber(String phonenumber)
    {
        this.phonenumber = phonenumber;
    }
    public String getEmail()
    {
        return email;
    }
    public void setEmail(String email)
    {
        this.email = email;
    }

}
