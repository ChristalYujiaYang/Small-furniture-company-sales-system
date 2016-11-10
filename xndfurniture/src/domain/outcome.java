package domain;

public class outcome {
	private int outcomeid;
	private String casename;
	private String describe;
	private String website;
	private String photo1;
	private String photo2;
	private String photo3;
	private String photo4;
	private String photo5;
	private String photo6;
	private String photo7;
	public outcome()
    {
        super();
        // TODO Auto-generated constructor stub
    }
    public outcome(int outcomeid, String casename, String describe, String website,String photo1, String photo2, 
    		String photo3, String photo4, String photo5, String photo6, String photo7)
    {
        super();
        this.outcomeid = outcomeid;
        this.casename = casename;
        this.describe = describe;
        this.website = website;
        this.photo1= photo1;
        this.photo2 = photo2;
        this.photo3 = photo3;
        this.photo4 = photo4;
        this.photo5 = photo5;
        this.photo6 = photo6;
        this.photo7 = photo7;
    }
    public int getOutcomeid()
    {
        return outcomeid;
    }
    public void setOutcomeid(int outcomeid)
    {
        this.outcomeid = outcomeid;
    }
    public String getCasename()
    {
        return casename;
    }
    public void setCasename(String casename)
    {
        this.casename = casename;
    }
    public String getDescribe()
    {
        return describe;
    }
    public void setDescribe(String describe)
    {
        this.describe = describe;
    }
    public String getWebsite()
    {
        return website;
    }
    public void setWebsite(String website)
    {
        this.website = website;
    }
    public String getPhoto1()
    {
        return photo1;
    }
    public void setPhoto1(String photo1)
    {
        this.photo1 = photo1;
    }
    public String getPhoto2()
    {
        return photo2;
    }
    public void setPhoto2(String photo2)
    {
        this.photo2 = photo2;
    }
    public String getPhoto3()
    {
        return photo3;
    }
    public void setPhoto3(String photo3)
    {
        this.photo3 = photo3;
    }
    public String getPhoto4()
    {
        return photo4;
    }
    public void setPhoto4(String photo4)
    {
        this.photo4 = photo4;
    }
    public String getPhoto5()
    {
        return photo5;
    }
    public void setPhoto5(String photo5)
    {
        this.photo5 = photo5;
    }
    public String getPhoto6()
    {
        return photo6;
    }
    public void setPhoto6(String photo6)
    {
        this.photo6 = photo6;
    }
    public String getPhoto7()
    {
        return photo7;
    }
    public void setPhoto7(String photo7)
    {
        this.photo7 = photo7;
    }

}
