package ch05.dao;

import ch05.config.Configuration;
import ch05.dao.map.EmployeeMap;
import ch05.domain.Employee;

public class EmployeeDaoImpl implements EmployeeDao { //dependency는 매퍼
	private EmployeeMap empMap;
	
	public EmployeeDaoImpl() { //생성자를 통한 DI
		this.empMap = Configuration.getMapper(EmployeeMap.class);
	}
	
	@Override 
	public Employee selectEmployee(int empId) {
		return empMap.selectEmployee(empId);
	}
} // 퍼시스턴스 끝.