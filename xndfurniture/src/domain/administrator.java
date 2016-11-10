package domain;

public class administrator {
	private int adminid;
	private String adminname;
	private String password;
	
	public administrator()
    {
        super();
        // TODO Auto-generated constructor stub
    }
    public administrator(int adminid, String adminname, String password)
    {
        super();
        this.adminid = adminid;
        this.adminname = adminname;
        this.password = password;
    }
    public int getAdminid()
    {
        return adminid;
    }
    public void setAdminid(int adminid)
    {
        this.adminid = adminid;
    }
    public String getAdminname()
    {
        return adminname;
    }
    public void setAdminname(String adminname)
    {
        this.adminname = adminname;
    }
    public String getPassword()
    {
        return password;
    }
    public void setPassword(String password)
    {
        this.password = password;
    }
}
