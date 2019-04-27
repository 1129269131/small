package com.leyou.auth.client;

import com.leyou.item.api.UserApi;
import org.springframework.cloud.openfeign.FeignClient;

@FeignClient(value = "item-service")
public interface UserClient extends UserApi {
}

