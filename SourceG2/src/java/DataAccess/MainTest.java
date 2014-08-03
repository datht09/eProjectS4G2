/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package DataAccess;

import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author Think Different
 */
public class MainTest {
   
    public static void main(String[] args) {
        Admin admin=new Admin();
                Map map=new HashMap();
                String[] cate={"info","tel"};
                map.put("category", cate);
                 String[] de={"eduser","manser"};
                map.put("department", de);
        System.out.println(""+admin.getQueries(0, map,"",""));
    }
}
