package com.app.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.app.model.ModuleModel;
import com.app.utility.DBConnection;

public class ModuleDao implements ModuleDaoInterface {

	@Override
	public List<ModuleModel> getAllModules() {
		List<ModuleModel> modules = new ArrayList<>();
		try {
			Connection conn = DBConnection.getConnection();
			String sql = "SELECT * FROM modules";
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				ModuleModel m = new ModuleModel();
				int id = rs.getInt(1);
				m.setModuleId(id);
				String moduleName = rs.getString(2);
				m.setModuleName(moduleName);
				modules.add(m);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return modules;
	}

}
