package com.erp.dao;


import com.erp.base.BaseDao;
import com.erp.entity.Roles;
import com.erp.entity.User;


public interface UserDao extends BaseDao<User>{
	public int countUser(String userName,String userPassword);
	
	public User querySingleUser(String userName);
	
	public Roles findbyUserRole(String userId);
}
