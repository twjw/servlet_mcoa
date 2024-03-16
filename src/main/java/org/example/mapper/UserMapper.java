package org.example.mapper;

import org.example.entity.User;
import org.example.utils.MybatisUtils;

public class UserMapper {
  public User selectByUsername(String username) {
    return (User) MybatisUtils.executeQuery(sqlSession -> sqlSession.selectOne("usermapper.selectByUsername", username));
  }
}
