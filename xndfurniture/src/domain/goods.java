package domain;

public class goods {
	private int goodid;
	private String goodname;
	private String describe;
	private float price;
	private String phonenumber;
	private int ordernumber;
	private String photo1;
	private String photo2;
	private String photo3;
	private String photo4;
	private String photo5;
	private String photo6;
	
	public goods()
    {
        super();
        // TODO Auto-generated constructor stub
    }
    public goods(int goodid, String goodname, String describe, float price, String phonenumber, int ordernumber,
    		String photo1, String photo2, String photo3, String photo4, String photo5, String photo6)
    {
        super();
        this.goodid = goodid;
        this.goodname = goodname;
        this.describe = describe;
        this.phonenumber = phonenumber;
        this.price = price;
        this.ordernumber = ordernumber;
        this.photo1= photo1;
        this.photo2 = photo2;
        this.photo3 = photo3;
        this.photo4 = photo4;
        this.photo5 = photo5;
        this.photo6 = photo6;
    }
    public int getGoodid()
    {
        return goodid;
    }
    public void setGoodid(int goodid)
    {
        this.goodid = goodid;
    }
    public String getGoodname()
    {
        return goodname;
    }
    public void setGoodname(String goodname)
    {
        this.goodname = goodname;
    }
    public String getDescribe()
    {
        return describe;
    }
    public void setDescribe(String describe)
    {
        this.describe = describe;
    }
    public String getPhonenumber()
    {
        return phonenumber;
    }
    public void setPhonenumber(String phonenumber)
    {
        this.phonenumber = phonenumber;
    }
    public float getPrice()
    {
        return price;
    }
    public void setPrice(float price)
    {
        this.price = price;
    }
    public int getOrdernumber()
    {
        return ordernumber;
    }
    public void setOrdernumber(int ordernumber)
    {
        this.ordernumber = ordernumber;
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

}
