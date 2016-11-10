package domain;

import java.sql.Date;

public class feedback {
	private int feedbackid;
	private String username;
	private String feedbacktitle;
	private String feedbackcontent;
	private Date time;
	
	public feedback()
    {
        super();
        // TODO Auto-generated constructor stub
    }
    public feedback(int feedbackid, String username, String feedbacktitle, String feedbackcontent, Date time)
    {
        super();
        this.feedbackid = feedbackid;
        this.username = username;
        this.feedbacktitle = feedbacktitle;
        this.feedbackcontent = feedbackcontent;
        this.time = time;
    }
    public int getFeedbackid()
    {
        return feedbackid;
    }
    public void setFeedbackid(int feedbackid)
    {
        this.feedbackid = feedbackid;
    }
    public String getUsername()
    {
        return username;
    }
    public void setUsername(String username)
    {
        this.username = username;
    }
    public String getFeedbacktitle()
    {
        return feedbacktitle;
    }
    public void setFeedbacktitle(String feedbacktitle)
    {
        this.feedbacktitle = feedbacktitle;
    }
    public String getFeedbackcontent()
    {
        return feedbackcontent;
    }
    public void setFeedbackcontent(String feedbackcontent)
    {
        this.feedbackcontent = feedbackcontent;
    }
    public Date getTime()
    {
        return time;
    }
    public void setTime(Date time)
    {
        this.time = time;
    }
}
