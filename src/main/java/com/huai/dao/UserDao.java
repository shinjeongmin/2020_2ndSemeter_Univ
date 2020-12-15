package com.huai.dao;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.SqlSession;

import com.huai.model.User;
import com.huai.util.DBUtil;

import java.util.List;

public class UserDao {

	private SqlSession sqlSession;

	public UserDao() {
		sqlSession = DBUtil.getSqlSession();
	}


	public User getUserByID(@Param("userId") int userId) {
		User user = sqlSession.selectOne("UserMapper.getUserbyId", userId);
		return user;
	}

	public User getUserByID2(@Param("Id") String Id) {
		User user = sqlSession.selectOne("UserMapper.getUserbyId2", Id);
		return user;
	}

	public List<User> getAllUsers(){
		List<User> users = sqlSession.selectList("getAllUsers");
		return users;
	}
}
