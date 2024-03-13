package org.example.utils;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.IOException;
import java.io.Reader;
import java.util.function.Function;

public class MybatisUtils {
  private static SqlSessionFactory sqlSessionFactory = null;

  static {
    try (Reader reader = Resources.getResourceAsReader("mybatis-config.xml")) {
      sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);
    } catch (IOException e) {
      throw new ExceptionInInitializerError(e);
    }
  }

  public static Object executeQuery(Function<SqlSession, Object> func) {
    SqlSession sqlSession = sqlSessionFactory.openSession();

    try {
      Object obj = func.apply(sqlSession);
      return obj;
    } finally {
      sqlSession.close();
    }
  }

  public static Object executeUpdate(Function<SqlSession, Object> func) {
    // openSession 傳入 false 參數表示手動提交/回滾事務
    SqlSession sqlSession = sqlSessionFactory.openSession(false);

    try {
      Object obj = func.apply(sqlSession);
      sqlSession.commit();
      return obj;
    } catch (Exception e) {
      sqlSession.rollback();
      throw e;
    } finally {
      sqlSession.close();
    }
  }
}
