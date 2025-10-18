package iuh.fit.se.DAO;

import iuh.fit.se.Entities.Employee;

import java.util.List;

public interface EmployeeDAO {
    public void update(int id, String role, String name);
    public List<Employee> getAll();
    public Employee getById(int id);
    public void deleteById(int id);
    public void save(Employee employee);
}
