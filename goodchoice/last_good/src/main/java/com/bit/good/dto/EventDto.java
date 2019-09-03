package com.bit.good.dto;

public class EventDto {

	private int no, total;
	private String sub,startdate,enddate,thumbnail,bodyimage;
	public EventDto() {
		// TODO Auto-generated constructor stub
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getSub() {
		return sub;
	}
	public void setSub(String sub) {
		this.sub = sub;
	}
	public String getStartdate() {
		return startdate;
	}
	public void setStartdate(String startdate) {
		this.startdate = startdate;
	}
	public String getEnddate() {
		return enddate;
	}
	public void setEnddate(String enddate) {
		this.enddate = enddate;
	}
	public String getThumbnail() {
		return thumbnail;
	}
	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}
	public String getBodyimage() {
		return bodyimage;
	}
	public void setBodyimage(String bodyimage) {
		this.bodyimage = bodyimage;
	}
	public EventDto(int no, String sub, String startdate, String enddate, String thumbnail, String bodyimage) {
		this.no = no;
		this.sub = sub;
		this.startdate = startdate;
		this.enddate = enddate;
		this.thumbnail = thumbnail;
		this.bodyimage = bodyimage;
	}
	
	
	
}
