package com.leyou.admin.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.leyou.admin.mapper.SpuDetailMapper;
import com.leyou.admin.mapper.SpuMapper;
import com.leyou.admin.pojo.Category;
import com.leyou.admin.pojo.Spu;
import com.leyou.common.vo.PageResult;
import com.netflix.discovery.converters.Auto;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;
import tk.mybatis.mapper.entity.Example;

import java.util.Arrays;
import java.util.List;
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

}
