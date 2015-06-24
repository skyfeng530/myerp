package com.erp.service;

import java.io.InputStream;
import java.util.List;

import org.activiti.engine.repository.Deployment;
import org.activiti.engine.repository.ProcessDefinition;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

public interface IWorkflowService {

	public void saveNewDeploye(CommonsMultipartFile file, String filename);

	public List<Deployment> findDeploymentList();

	public List<ProcessDefinition> findProcessDefinitionList();

	public void deleteProcessDefinitionByDeploymentId(String deploymentId);

	public InputStream findImageInputStream(String deploymentId,
			String imageName);

	public ProcessDefinition findProcessDefinitionListByPdId(String pdid);

}
