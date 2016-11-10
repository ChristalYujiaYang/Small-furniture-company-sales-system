package domain;

public class order {
	private int orderid;
	private int userid;
	private int goodid;
	private int quantity;
	private float price;
	private float totalprice;
	private String goodname;
	private String photo1;
	private String type;
	
	public order()
    {
        super();
    }
    public order(int orderid, int userid, int goodid, int quantity, float price, float totalprice, String goodname, String photo1, String type)
    {
        super();
        this.userid = userid;
        this.orderid = orderid;
        this.goodid = goodid;
        this.quantity = quantity;
        this.price = price;
        this.photo1 = photo1;
        this.totalprice = totalprice;
        this.goodname = goodname;
        this.type = type;
    }
    public int getUserid()
    {
        return userid;
    }
    public void setUserid(int userid)
    {
        this.userid = userid;
    }
    public int getOrderid()
    {
        return orderid;
    }
    public void setOrderid(int orderid)
    {
        this.orderid = orderid;
    }
    public int getGoodid()
    {
        return goodid;
    }
    public void setGoodid(int goodid)
    {
        this.goodid = goodid;
    }
    public int getQuantity()
    {
        return quantity;
    }
    public void setQuantity(int quantity)
    {
        this.quantity = quantity;
    }
    public Float getPrice()
    {
        return price;
    }
    public void setPrice(Float price)
    {
        this.price = price;
    }
    public Float getTotalprice()
    {
        return totalprice;
    }
    public void setTotalprice(Float totalprice)
    {
        this.totalprice = totalprice;
    }
    public String getGoodname()
    {
        return goodname;
    }
    public void setGoodname(String goodname)
    {
        this.goodname = goodname;
    }
    public String getPhoto1()
    {
        return photo1;
    }
    public void setPhoto1(String photo1)
    {
        this.photo1 = photo1;
    }
    public String getType()
    {
        return type;
    }
    public void setType(String type)
    {
        this.type = type;
    }

}
