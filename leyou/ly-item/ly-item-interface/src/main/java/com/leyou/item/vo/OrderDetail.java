package com.leyou.item.vo;

public class OrderDetail {
    private Integer goodId;
    private Integer number;
    private float express;
    private float specialPrice;
    private float redEnvelope;

    public Integer getGoodId() {
        return goodId;
    }

    public void setGoodId(Integer goodId) {
        this.goodId = goodId;
    }

    public Integer getNumber() {
        return number;
    }

    public void setNumber(Integer number) {
        this.number = number;
    }

    public float getExpress() {
        return express;
    }

    public void setExpress(float express) {
        this.express = express;
    }

    public float getSpecialPrice() {
        return specialPrice;
    }

    public void setSpecialPrice(float specialPrice) {
        this.specialPrice = specialPrice;
    }

    public float getRedEnvelope() {
        return redEnvelope;
    }

    public void setRedEnvelope(float redEnvelope) {
        this.redEnvelope = redEnvelope;
    }
}
