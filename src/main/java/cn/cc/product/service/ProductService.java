package cn.cc.product.service;

import cn.cc.product.dataobject.ProductInfo;

import java.util.List;

public interface ProductService {
    List<ProductInfo> findUpAll();
}
