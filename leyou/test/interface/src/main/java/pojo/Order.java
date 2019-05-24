package pojo;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Table(name = "tb_order")
public class Order {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private Long total_pay;

    private Long actual_pay;

    private int payment_type;

    private Long post_fee;

    private String shippingName;

    private String shippingCode;

    private Long uid;

    private String buyerMessage;

    private Long addressId;

    private int buyerRate;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getTotal_pay() {
        return total_pay;
    }

    public void setTotal_pay(Long total_pay) {
        this.total_pay = total_pay;
    }

    public Long getActual_pay() {
        return actual_pay;
    }

    public void setActual_pay(Long actual_pay) {
        this.actual_pay = actual_pay;
    }

    public int getPayment_type() {
        return payment_type;
    }

    public void setPayment_type(int payment_type) {
        this.payment_type = payment_type;
    }

    public Long getPost_fee() {
        return post_fee;
    }

    public void setPost_fee(Long post_fee) {
        this.post_fee = post_fee;
    }

    public String getShippingName() {
        return shippingName;
    }

    public void setShippingName(String shippingName) {
        this.shippingName = shippingName;
    }

    public String getShippingCode() {
        return shippingCode;
    }

    public void setShippingCode(String shippingCode) {
        this.shippingCode = shippingCode;
    }

    public Long getUid() {
        return uid;
    }

    public void setUid(Long uid) {
        this.uid = uid;
    }

    public String getBuyerMessage() {
        return buyerMessage;
    }

    public void setBuyerMessage(String buyerMessage) {
        this.buyerMessage = buyerMessage;
    }

    public Long getAddressId() {
        return addressId;
    }

    public void setAddressId(Long addressId) {
        this.addressId = addressId;
    }

    public int getBuyerRate() {
        return buyerRate;
    }

    public void setBuyerRate(int buyerRate) {
        this.buyerRate = buyerRate;
    }
}
