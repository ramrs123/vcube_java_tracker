package com.app.model;

public class ModuleModel {
	int moduleId;
	String moduleName;
	
	public ModuleModel(){};
	
	public ModuleModel(int moduleId, String moduleName) {
		this.moduleId = moduleId;
		this.moduleName = moduleName;
	}

	public int getModuleId() {
		return moduleId;
	}

	public void setModuleId(int moduleId) {
		this.moduleId = moduleId;
	}

	public String getModuleName() {
		return moduleName;
	}

	public void setModuleName(String moduleName) {
		this.moduleName = moduleName;
	}
	
	
	
	

}
