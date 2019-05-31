package admin.web;
import admin.pojo.Orders;
import admin.pojo.OrdersDetail;
import com.leyou.admin.pojo.Cart;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("test")
public class AdvertisementController {

    @PostMapping("check")
    public void queryAdvertisement(){
        System.out.println(6666);
    }

    @PostMapping("order")
    public void queryAdvertisement(@RequestBody Orders orders){
        System.out.println(6666);
    }

    @PostMapping("orderDetail")
    public void queryAdvertisement(@RequestBody OrdersDetail ordersDetail){
        System.out.println(6666);
    }

    @PostMapping("cart")
    public void cart(@RequestBody Cart cart){
        System.out.println(6666);
    }
}
