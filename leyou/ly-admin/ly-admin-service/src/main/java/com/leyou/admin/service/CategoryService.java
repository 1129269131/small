package com.leyou.admin.service;

import com.leyou.admin.mapper.CategoryMapper;
import com.leyou.admin.pojo.Category;
import com.leyou.common.vo.Common;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CategoryService {

    @Autowired
    private CategoryMapper categoryMapper;

    /**
     * 根据parentId查询子类目
     * @param pid
     * @return
     */
    public Common<List<Category>> queryCategoryListByParentId(Long pid) {
        Category record = new Category();
        record.setParentId(pid);
        Common<List<Category>> res = new Common<List<Category>>();
        List<Category> list = null;
        try {
            list = this.categoryMapper.select(record);
            res.setResult(list);
            res.setCode(0);
            res.setMsg("success");
        } catch (Exception e) {
//            logger.error(this.getClass().getName(),e);
        }
        return res;
    }
}
