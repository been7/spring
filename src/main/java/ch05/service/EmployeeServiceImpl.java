package ch05.service;

import ch05.dao.EmployeeDao;
import ch05.dao.EmployeeDaoImpl;
import ch05.domain.Employee;

public class EmployeeServiceImpl implements EmployeeService {
	private EmployeeDao empDao;
	
	public EmployeeServiceImpl() {
		this.empDao = new EmployeeDaoImpl(); //생성자를 통해 di?
	}
	
	@Override
	public Employee getEmployee(int empId) {
		return empDao.selectEmployee(empId);
	}
}
