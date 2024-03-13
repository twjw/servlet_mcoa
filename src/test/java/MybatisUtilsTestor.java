import org.example.utils.MybatisUtils;
import org.junit.Test;

public class MybatisUtilsTestor {
  @Test
  public void testCase1() {
    String result = (String) MybatisUtils.executeQuery(sqlSession -> sqlSession.selectOne("test.sample"));
    System.out.println(result);
  }
}
