package com.huai.dao;

import com.huai.model.User;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.SqlSession;

import com.huai.model.Item;
import com.huai.util.DBUtil;

import java.util.List;

public class ItemDao {

    private SqlSession sqlSession;

    public ItemDao() {
        sqlSession = DBUtil.getSqlSession();
    }


    public Item getItemByID(@Param("Name") String ItemName) {
        Item items = sqlSession.selectOne("UserMapper.getItembyName", ItemName);
        return items;
    }

    public List<Item> getAllItems(){
        List<Item> items = sqlSession.selectList("getAllItems");
        return items;
    }
}
