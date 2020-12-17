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
        Item items = sqlSession.selectOne("ItemMapper.getItembyName", ItemName);
        return items;
    }

    public List<Item> getAllItems(){
        List<Item> items = sqlSession.selectList("ItemMapper.getAllItems");
        return items;
    }

    public int InsertItem(@Param("Item") Item item){
        int complete = sqlSession.insert("ItemMapper.insertItem", item);
        sqlSession.commit();
        return complete;
    }

    public int updateItemByName(@Param("Item") Item item){
        int complete = sqlSession.update("ItemMapper.updateItembyName", item);
        sqlSession.commit();
        return complete;
    }

    public int deleteItemByName(@Param("Name") String Name){
        int complete = sqlSession.delete("ItemMapper.deleteItembyName", Name);
        sqlSession.commit();
        return complete;
    }
}
