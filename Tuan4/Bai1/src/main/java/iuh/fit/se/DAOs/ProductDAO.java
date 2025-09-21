package iuh.fit.se.DAOs;

import iuh.fit.se.Entities.Product;

import java.util.List;

public interface ProductDAO {
    public List<Product> findAll();

    public Product getById(int id);

    public void addProduct(Product p);
}