package ch05.dao;

import ch05.config.Configuration;
import ch05.dao.map.EmployeeMap;
import ch05.domain.Employee;

public class EmployeeDaoImpl implements EmployeeDao { //dependency�� ����
	private EmployeeMap empMap;
	
	public EmployeeDaoImpl() { //�����ڸ� ���� DI
		this.empMap = Configuration.getMapper(EmployeeMap.class);
	}
	
	@Override 
	public Employee selectEmployee(int empId) {
		return empMap.selectEmployee(empId);
	}
} // �۽ý��Ͻ� ��.