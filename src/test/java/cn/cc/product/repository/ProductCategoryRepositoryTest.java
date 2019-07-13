package cn.cc.product.repository;

import cn.cc.product.ProductApplicationTests;
import cn.cc.product.dataobject.ProductCategory;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.Arrays;
import java.util.List;

import static org.junit.Assert.*;
@Component
public class ProductCategoryRepositoryTest extends ProductApplicationTests {
    @Autowired
    private  ProductCategoryRepository productCategoryRepository;
    @Test
    public void findByCategoryTypeIn() {
        List<ProductCategory> byCategoryTypeIn = productCategoryRepository.findByCategoryTypeIn(Arrays.asList(11, 22));
        Assert.assertTrue(byCategoryTypeIn.size() > 0);
    }
}