package com.erp.entity;

import java.util.Date;

/**
 * 请假单
 */
public class BusLeave {
	private Long id;//主键ID
	private Integer days;// 请假天数
	private String content;// 请假内容
	private Date leaveDate = new Date();// 请假时间
	private String remark;// 备注
	private String username;// 请假人
	private Integer state=0;// 请假单状态 0初始录入,1.开始审批,2为审批完成

	public BusLeave() {
		super();
	}

	public BusLeave(String username) {
		this.username = username;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Integer getDays() {
		return days;
	}

	public void setDays(Integer days) {
		this.days = days;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getLeaveDate() {
		return leaveDate;
	}

	public void setLeaveDate(Date leaveDate) {
		this.leaveDate = leaveDate;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public Integer getState() {
		return state;
	}

	public void setState(Integer state) {
		this.state = state;
	}
	
	
}
