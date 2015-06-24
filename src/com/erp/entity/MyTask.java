package com.erp.entity;

import java.util.Date;

/**
 * 请假单
 */
public class MyTask {
	private Long id;//主键ID
	private String pdname;// 申请单类型
	private String pdid;// 流程定义id
	private String pdkey;// 流程定义key
	private Date applyDate;// 申请时间
	private String username;// 申请人
	private Integer state=0;// 申请单状态 0初始录入,1.开始审批,2为审批完成

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getPdname() {
		return pdname;
	}

	public void setPdname(String pdname) {
		this.pdname = pdname;
	}

	public String getPdid() {
		return pdid;
	}

	public void setPdid(String pdid) {
		this.pdid = pdid;
	}

	public String getPdkey() {
		return pdkey;
	}

	public void setPdkey(String pdkey) {
		this.pdkey = pdkey;
	}

	public Date getApplyDate() {
		return applyDate;
	}

	public void setApplyDate(Date applyDate) {
		this.applyDate = applyDate;
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
