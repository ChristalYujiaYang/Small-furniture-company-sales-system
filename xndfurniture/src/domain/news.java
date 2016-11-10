package domain;

import java.util.Date;

public class news {
	private int newsid;
	private String title;
	private String text;
	private Date time;
	private int type;
	
	public news()
    {
        super();
        // TODO Auto-generated constructor stub
    }
    public news(int newsid, String title, String text, Date time, int type)
    {
        super();
        this.newsid = newsid;
        this.title = title;
        this.text = text;
        this.time = time;
        this.type = type;
    }
    public int getNewsid()
    {
        return newsid;
    }
    public void setNewsid(int newsid)
    {
        this.newsid = newsid;
    }
    public String getTitle()
    {
        return title;
    }
    public void setTitle(String title)
    {
        this.title = title;
    }
    public String getText()
    {
        return text;
    }
    public void setText(String text)
    {
        this.text = text;
    }
    public Date getTime()
    {
        return time;
    }
    public void setTime(Date time)
    {
        this.time = time;
    }
    public int getType()
    {
        return type;
    }
    public void setType(int type)
    {
        this.type = type;
    }

}
