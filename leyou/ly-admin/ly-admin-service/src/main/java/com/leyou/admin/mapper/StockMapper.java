package com.leyou.admin.mapper;

import com.leyou.admin.pojo.Stock;
import tk.mybatis.mapper.additional.idlist.IdListMapper;
import tk.mybatis.mapper.common.Mapper;

public interface StockMapper extends Mapper<Stock>, IdListMapper<Stock,Long> {
}
