package org.example.service;

import org.example.entity.User;
import org.junit.Test;

import static org.junit.Assert.*;
import static org.junit.Assert.assertEquals;

public class UserServiceTest {
  private UserService userService = new UserService();

  @Test
  public void checkLoginSucceed() {
    User user = userService.checkLogin("test", "test");
    System.out.println(user);
    assertEquals("驗證輸入正確的登入", "test", user.getUsername());
  }

  @Test
  public void checkLoginUsernameError() {
    User user = null;
    try {
      user = userService.checkLogin("test1", "test");
    } catch (Exception e) {
      assertEquals("驗證輸入錯帳號的登入", "帳號不存在", e.getMessage());
    }
  }

  @Test
  public void checkLoginPasswordError() {
    User user = null;
    try {
      user = userService.checkLogin("test", "test1");
    } catch (Exception e) {
      assertEquals("驗證輸入錯密碼的登入", "密碼不存在", e.getMessage());
    }
  }
}
