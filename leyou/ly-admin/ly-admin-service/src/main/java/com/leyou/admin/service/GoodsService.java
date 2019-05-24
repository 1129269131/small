package com.leyou.admin.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.leyou.admin.mapper.SkuMapper;
import com.leyou.admin.mapper.SpuDetailMapper;
import com.leyou.admin.mapper.SpuMapper;
import com.leyou.admin.mapper.StockMapper;
import com.leyou.admin.pojo.*;
import com.leyou.common.vo.Common;
import com.leyou.common.vo.PageResult;
import com.netflix.discovery.converters.Auto;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;
import tk.mybatis.mapper.entity.Example;

import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Service
public class GoodsService {

    @Autowired
    private SpuMapper spuMapper;

    @Autowired
    private SpuDetailMapper detailMapper;

    @Autowired
    private CategoryService categoryService;

    @Autowired
    private BrandService brandService;

    @Autowired
    private SkuMapper skuMapper;

    @Autowired
    private StockMapper stockMapper;

    public List<Sku> querySkuBySpuId(Long spuId){
        //查询sku
        Sku sku = new Sku();
        sku.setSpuId(spuId);
        List<Sku> skuList = skuMapper.select(sku);
        if(CollectionUtils.isEmpty(skuList)){
            System.out.println("报错");
        }

        //查询库存
        List<Long> ids = skuList.stream().map(Sku::getId).collect(Collectors.toList());
        List<Stock> stockList = stockMapper.selectByIdList(ids);
        if(CollectionUtils.isEmpty(stockList)){
            System.out.println("报错");
        }

        //我们把stock变成一个map，其key是:sku的id，值是库存值
        Map<Long, Integer> stockMap = stockList.stream()
                .collect(Collectors.toMap(Stock::getSkuId,Stock::getStock));
        skuList.forEach(s -> s.setStock(stockMap.get(s.getId())));
        return skuList;
    }

    public SpuDetail queryDetailById(Long spuId){
        SpuDetail detail = detailMapper.selectByPrimaryKey(spuId);
        if(detail == null){
            System.out.println("报错");
        }
        return  detail;
    }

    public PageResult<Spu> querySpuByPage(Integer page,Integer rows,Boolean saleable,String key){
        PageHelper.startPage(page, rows);
        Example example = new Example(Spu.class);
        Example.Criteria criteria = example.createCriteria();
        if(StringUtils.isNotBlank(key)){
            criteria.andLike("title","%"+key+"%");
        }
        if(saleable != null){
            criteria.andEqualTo("saleable",saleable);
        }
        example.setOrderByClause("last_update_time DESC");

        List<Spu> spus = spuMapper.selectByExample(example);

        if(CollectionUtils.isEmpty(spus)){
            System.out.println("无商品信息");
        }

        //获取分类和品牌的名称
        loadCategoryAndBrandName(spus);

        PageInfo<Spu> info = new PageInfo<>(spus);

        return new PageResult<>(info.getTotal(),spus,0,"success");
    }

    private void loadCategoryAndBrandName(List<Spu> spus){
        for(Spu spu:spus){
            List<String> names = categoryService.queryByIds(Arrays.asList(spu.getCid1(),spu.getCid2(),spu.getCid3()))
                    .stream().map(Category::getName).collect(Collectors.toList());
            spu.setCname(StringUtils.join(names,"/"));
            spu.setBname(brandService.queryById(spu.getBrandId()).getName());
        }
    }

    public Common<Spu> querySpuById(Long id){
        Common<Spu> res = new Common<Spu>();
        //查询spu
        Spu spu = spuMapper.selectByPrimaryKey(id);
        if(spu == null){
            System.out.println("报错");
        }
        //查询sku
        spu.setSkus(querySkuBySpuId(id));
        //查询detail
//        spu.setSpuDetail(queryDetailById(id));

        res.setResult(spu);
        res.setCode(0);
        res.setMsg("success");
        return res;
    }

}
