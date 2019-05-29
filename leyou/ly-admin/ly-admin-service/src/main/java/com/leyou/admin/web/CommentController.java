package com.leyou.admin.web;

import com.leyou.admin.pojo.Cart;
import com.leyou.admin.pojo.Comment;
import com.leyou.admin.pojo.Orders;
import com.leyou.admin.service.CartService;
import com.leyou.admin.service.CommentService;
import com.leyou.common.vo.Common;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("comment")
public class CommentController {
    @Autowired
    private CommentService commentService;

    /**
     * 查询评价信息
     * @param skuId
     * @return
     */
    @PostMapping("queryComment")
    public ResponseEntity<Common<List<Comment>>> queryComment(@RequestParam(value = "skuId") Long skuId,@RequestParam(value = "commentType", defaultValue = "3") Integer commentType){
        return ResponseEntity.ok(commentService.queryComment(skuId,commentType));
    }

    @PostMapping("addComment")
    public ResponseEntity<Common<Void>> addComment(@RequestBody Comment comment){
        return ResponseEntity.ok(commentService.addComment(comment));
    }
}
