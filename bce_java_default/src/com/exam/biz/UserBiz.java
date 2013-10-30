package com.exam.biz;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.exam.mapper.UserMapper;
import com.exam.po.User;
import com.exam.util.MyBatisUtil;

public class UserBiz {

	static SqlSessionFactory sqlSessionFactory = null; 
    static { 
       sqlSessionFactory = MyBatisUtil.getSqlSessionFactory(); 
    }
	
	public String getUserAge(String name) { 
	       SqlSession sqlSession = sqlSessionFactory.openSession(); 
	       try { 
	           UserMapper userMapper = sqlSession.getMapper(UserMapper.class); 
	           User user = userMapper.getUser(name); 
	           return name +"，今年 "+ String.valueOf(user.getAge()) + "岁";
	       } finally { 
	           sqlSession.close();
	           
	       }
	    } 
}
