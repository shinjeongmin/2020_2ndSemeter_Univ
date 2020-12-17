package com.huai.dao;

import org.apache.ibatis.annotations.Insert;
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
		sqlSession.commit();
		return user;
	}

	public User getUserByID2(@Param("Id") String Id) {
		User user = sqlSession.selectOne("UserMapper.getUserbyId2", Id);
		sqlSession.commit();
		return user;
	}

	public User getUserByID3(@Param("User") User user) {
		User user_ = sqlSession.selectOne("UserMapper.getUserbyId3", user);
		sqlSession.commit();
		return user_;
	}

	public List<User> getAllUsers(){
		List<User> users = sqlSession.selectList("UserMapper.getAllUsers");
		sqlSession.commit();
		return users;
	}

	public int InsertUser(@Param("User") User user){
		int complete = sqlSession.insert("UserMapper.insertUser", user);
		sqlSession.commit();
		return complete;
	}

	public int updateUserById(@Param("User") User user){
		int complete = sqlSession.update("UserMapper.updateUserbyId", user);
		sqlSession.commit();
		return complete;
	}

	public int deleteUserById(@Param("Id") String Id){
		int complete = sqlSession.delete("UserMapper.deleteUserbyId", Id);
		sqlSession.commit();
		return complete;
	}
}
