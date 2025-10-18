package iuh.fit.se.DAO.DAOImpl;

import iuh.fit.se.DAO.EmployeeDAO;
import iuh.fit.se.Entities.Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import javax.sql.DataSource;
import java.util.List;

public class EmployeeDAOImpl implements EmployeeDAO {

    private JdbcTemplate jdbcTemplate;

    @Autowired
    public void setDataSource(DataSource dataSource) {
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    @Override
    public void update(int id, String role, String name) {

    }

    @Override
    public List<Employee> getAll() {
        return List.of();
    }

    @Override
    public Employee getById(int id) {
        return null;
    }

    @Override
    public void deleteById(int id) {

    }

    @Override
    public void save(Employee employee) {

    }
}
