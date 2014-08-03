/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package app;

import java.util.HashMap;
import java.util.Map;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Think Different
 */
public class PlayRun {
    public static void main(String[] args) {
         Random random=new Random();
        int k=random.nextInt(10);
        Map<Integer,Integer> map=new HashMap<>();
        for(int i=10;i<20;i++){
            
          
          while (map.containsKey(k)){
              k=  random.nextInt(10);
              System.out.println("So:"+k);
          }
           System.out.println("So l:"+k+" So2:"+i);
            map.put(k,i);
            
     
        }
    
   //    try {
      //      String writeToFile = Main.writeToFile("D:\\danh-sach-huy-VIP-CAUMB-CAUMN t4-5-6",Main.getResult());
       // } catch (Exception ex) {
       //     Logger.getLogger(PlayRun.class.getName()).log(Level.SEVERE, null, ex);
      //  }
    }
}
