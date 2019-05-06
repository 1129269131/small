package com.leyou.common.vo;

import java.util.List;


public class PageResult<T> {
    private Long total;// 总条数
    private Long totalPage;// 总页数
    private List<T> result;// 当前页数据
    private int code;
    private String msg;

    public PageResult() {
    }

    public PageResult(Long total, List<T> result,int code,String msg) {
        this.total = total;
        this.result = result;
        this.code = code;
        this.msg = msg;
    }

    public PageResult(Long total, Long totalPage, List<T> result) {
        this.total = total;
        this.totalPage = totalPage;
        this.result = result;
    }

    public Long getTotal() {
        return total;
    }

    public void setTotal(Long total) {
        this.total = total;
    }

    public List<T> getResult() {
        return result;
    }

    public void setResult(List<T> result) {
        this.result = result;
    }

    public Long getTotalPage() {
        return totalPage;
    }

    public void setTotalPage(Long totalPage) {
        this.totalPage = totalPage;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }
}
