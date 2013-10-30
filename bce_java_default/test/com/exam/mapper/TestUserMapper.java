package com.exam.mapper;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;

import com.exam.po.User;
import com.exam.util.MyBatisUtil;
  
public class TestUserMapper { 
    static SqlSessionFactory sqlSessionFactory = null; 
    static { 
       sqlSessionFactory = MyBatisUtil.getSqlSessionFactory(); 
    } 
    
    @Test 
    public void testAdd() { 
       SqlSession sqlSession = sqlSessionFactory.openSession(); 
       try { 
           UserMapper userMapper = sqlSession.getMapper(UserMapper.class); 
           User user = new User("tom",new Integer(5)); 
           userMapper.insertUser(user); 
           sqlSession.commit();//这里一定要提交，不然数据进不去数据库中 
       } finally { 
           sqlSession.close(); 
       } 
    } 
    
    @Test 
    public void getUser() { 
       SqlSession sqlSession = sqlSessionFactory.openSession(); 
       try { 
           UserMapper userMapper = sqlSession.getMapper(UserMapper.class); 
           User user = userMapper.getUser("jun"); 
           System.out.println("name: "+user.getName()+"|age: "+user.getAge()); 
       } finally { 
           sqlSession.close(); 
       } 
    } 
  
} 