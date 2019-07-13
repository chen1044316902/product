package cn.cc.product.service.impl;

import cn.cc.product.dataobject.ProductInfo;
import cn.cc.product.repository.ProductInfoRepository;
import cn.cc.product.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class ProductServiceImpl implements ProductService {
    @Autowired
    ProductInfoRepository productInfoRepository;
    @Override
    public List<ProductInfo> findUpAll() {
        return null;
    }
}
