package com.leyou.admin.service;

import com.leyou.admin.mapper.SpecGroupMapper;
import com.leyou.admin.mapper.SpecParamMapper;
import com.leyou.admin.mapper.SpecificationMapper;
import com.leyou.admin.pojo.SpecGroup;
import com.leyou.admin.pojo.SpecParam;
import com.leyou.admin.pojo.Specification;
import com.leyou.common.vo.Common;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class SpecificationService {

    @Autowired
    private SpecificationMapper specificationMapper;

    @Autowired
    private SpecGroupMapper specGroupMapper;

    @Autowired
    private SpecParamMapper specParamMapper;

    public List<SpecGroup> queryGroupByCid(Long cid){
        SpecGroup group = new SpecGroup();
        group.setCid(cid);
        List<SpecGroup> list = specGroupMapper.select(group);
        if(CollectionUtils.isEmpty(list)){
            System.out.println("报错");
        }
        return list;
    }

    public Common<List<SpecGroup>> queryGroupByCid2(Long cid){
        Common<List<SpecGroup>> res = new Common<List<SpecGroup>>();
        SpecGroup group = new SpecGroup();
        group.setCid(cid);
        List<SpecGroup> list = specGroupMapper.select(group);
        if(CollectionUtils.isEmpty(list)){
            System.out.println("报错");
        }

        res.setResult(list);
        res.setCode(0);
        res.setMsg("success");
        return res;
    }

    public Common<List<SpecParam>> queryParamByCid(Long cid){
        Common<List<SpecParam>> res = new Common<List<SpecParam>>();
        SpecParam param = new SpecParam();
        param.setCid(cid);
        List<SpecParam> list = specParamMapper.select(param);
        if(CollectionUtils.isEmpty(list)){
            System.out.println("报错");
        }

        res.setResult(list);
        res.setCode(0);
        res.setMsg("success");
        return res;
    }

    public Specification queryById(Long id) {
        return this.specificationMapper.selectByPrimaryKey(id);
    }

    public List<SpecParam> queryParamList(Long gid,Long cid,Boolean searching){
        SpecParam param = new SpecParam();
        param.setGroupId(gid);
        param.setCid(cid);
        param.setSearching(searching);

        List<SpecParam> list = specParamMapper.select(param);
        if(CollectionUtils.isEmpty(list)){
            System.out.println("报错");
        }
        return list;
    }
    public List<SpecGroup> queryListByCid(Long cid){
        //查询规格组
        List<SpecGroup> specGroups = queryGroupByCid(cid);
        //查询当前分类下的参数
        List<SpecParam> specParams = queryParamList(null,cid,null);

        //先把规格参数变成map，map的key是规格组id,map的值是组下的所有参数
        Map<Long,List<SpecParam>> map = new HashMap<>();
        for(SpecParam param : specParams){
            if(!map.containsKey(param.getGroupId())){
                //这个组id在map中不存在，新增一个list
                map.put(param.getGroupId(), new ArrayList<>());
            }
            map.get(param.getGroupId()).add(param);
        }

        //填充param到group
        for(SpecGroup specGroup : specGroups){
            specGroup.setParams(map.get(specGroup.getId()));
        }
        return specGroups;
    }

}
