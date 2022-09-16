package ch05.dao;

import ch05.domain.Employee;

public interface EmployeeDao {
	Employee selectEmployee(int empId); //매퍼의 메소드명과 동일하게
}
