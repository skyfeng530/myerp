package com.erp.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.erp.dao.LogDao;
import com.erp.entity.Log;
import com.erp.service.LogService;
import com.erp.util.PageView;

@Transactional
@Service("logService")
public class LogServiceImpl implements LogService {
	@Autowired
	private LogDao logDao;

	public PageView query(PageView pageView, Log log) {
		List<Log> list = logDao.query(pageView, log);
		pageView.setRecords(list);
		return pageView;
	}

	public void add(Log log) {
		logDao.add(log);
	}

	public void delete(String id) {
		logDao.delete(id);
	}

	public Log getById(String id) {
		return logDao.getById(id);
	}

	public void modify(Log log) {
		logDao.modify(log);
	}

	public List<Log> findAll(Log log) {
		return logDao.queryAll(log);
	}

}
