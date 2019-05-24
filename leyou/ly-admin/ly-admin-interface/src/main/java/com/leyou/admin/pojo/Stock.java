package com.leyou.admin.pojo;

import javax.persistence.Id;
import javax.persistence.Table;

@Table(name="tb_stock")
public class Stock {

    @Id
    private Long skuId;
    private Integer stock;

    public Long getSkuId() {
        return skuId;
    }

    public void setSkuId(Long skuId) {
        this.skuId = skuId;
    }

    public Integer getStock() {
        return stock;
    }

    public void setStock(Integer stock) {
        this.stock = stock;
    }
}
