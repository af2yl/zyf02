package AF;

import java.util.HashMap;

public class UserFeng {
    static HashMap<String, String> users = new HashMap<>();//内存数据库
    static{
        users.put("zyf","123456");
        users.put("Jon","123654");
        users.put("cat",null);
    }
    public static boolean register(String name, String pass) {
        if (users.containsKey(name) || name.trim().isEmpty()) {
            System.err.println("注册失败");
            return false;
        }
        users.put(name, pass);
        System.err.println("注册成功!!");
        return true;
    }
    public static boolean login(String user, String pass) {
        if (!users.containsKey(user)) {
            System.err.println("用户名不存在");
            return false;
        }
        if (!users.get(user).equals(pass)) {
            System.err.println("密码错误");
            return false;
        }
        System.err.println("登录成功");
        return true;
    }
    private static boolean updatePassword(String name, String oldPass, String newPass) {
        if (!login(name, oldPass)) {
            System.err.println("旧密码错误,修改失败");
            return false;
        }
        users.put(name, newPass);
        System.err.println("修改密码成功，请使用新密码登录");
        return true;
    }

    public static void main(String[] args) {

        register("af", "123456");
        register("yl", "666666");
        System.out.println(login("af", "111111"));
        System.out.println(login("yl", "222222"));
        System.out.println(updatePassword("tom", "123456", "654321"));

        System.out.println(login("af", "111111"));
        System.out.println(login("yl", "654321"));
    }


}