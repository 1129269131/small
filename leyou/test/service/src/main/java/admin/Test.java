package admin;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import tk.mybatis.spring.annotation.MapperScan;

@SpringBootApplication
@EnableDiscoveryClient
@MapperScan("com.leyou.admin.mapper") // mapper接口的包扫描
public class Test {

    public static void main(String[] args) {
        SpringApplication.run(Test.class, args);
    }

}
