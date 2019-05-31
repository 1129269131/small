package com.leyou.admin.pojo;

public class Cart {
    private Long skuId;
    private String title;
    private String img;
    private Long price;
    private Integer num;
    private String ownSpec;
    private Long newPrice;
    private Long oldPrice;
    private String style;
    private String packageStyle;

    public Long getSkuId() {
        return skuId;
    }

    public void setSkuId(Long skuId) {
        this.skuId = skuId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public Long getPrice() {
        return price;
    }

    public void setPrice(Long price) {
        this.price = price;
    }

    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }

    public String getOwnSpec() {
        return ownSpec;
    }

    public void setOwnSpec(String ownSpec) {
        this.ownSpec = ownSpec;
    }

    public Long getNewPrice() {
        return newPrice;
    }

    public void setNewPrice(Long newPrice) {
        this.newPrice = newPrice;
    }

    public Long getOldPrice() {
        return oldPrice;
    }

    public void setOldPrice(Long oldPrice) {
        this.oldPrice = oldPrice;
    }

    public String getStyle() {
        return style;
    }

    public void setStyle(String style) {
        this.style = style;
    }

    public String getPackageStyle() {
        return packageStyle;
    }

    public void setPackageStyle(String packageStyle) {
        this.packageStyle = packageStyle;
    }
}
