package org.example.service;

import org.example.entity.User;
import org.example.mapper.UserMapper;
import org.example.service.exception.LoginException;

public class UserService {
  private UserMapper userMapper = new UserMapper();

  public User checkLogin(String username,String password) {
    User user = userMapper.selectByUsername(username);
    if (user == null) {
      throw new LoginException("帳號不存在");
    }

    if (!password.equals(user.getPassword())) {
      throw new LoginException("密碼不存在");
    }

    return user;
  }
}
