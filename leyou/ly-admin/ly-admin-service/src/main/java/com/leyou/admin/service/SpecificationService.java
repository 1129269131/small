package com.leyou.admin.service;

import com.leyou.admin.mapper.SpecGroupMapper;
import com.leyou.admin.mapper.SpecificationMapper;
import com.leyou.admin.pojo.SpecGroup;
import com.leyou.admin.pojo.Specification;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import java.util.List;

@Service
public class SpecificationService {

    @Autowired
    private SpecificationMapper specificationMapper;

    @Autowired
    private SpecGroupMapper specGroupMapper;

    public List<SpecGroup> queryGroupByCid(Long cid){
        SpecGroup group = new SpecGroup();
        group.setCid(cid);
        List<SpecGroup> list = specGroupMapper.select(group);
        if(CollectionUtils.isEmpty(list)){
            System.out.println("报错");
        }
        return list;
    }

    public Specification queryById(Long id) {
        return this.specificationMapper.selectByPrimaryKey(id);
    }
}
