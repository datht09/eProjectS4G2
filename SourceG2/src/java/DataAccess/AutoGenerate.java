/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package DataAccess;

import Entity.QueryCategory;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 *
 * @author Think Different
 */
public class AutoGenerate {
    public static String getStatusComplaint(int i){
        switch(i){
            case 0:
                return "Pending";
            case 1:
                return "Processing";
            case 2:
                return "Resolved";
            case 3:
                return "NOT Resolved";
            case 4:
                return "Cancel";
            default:
                return "";
                }
    }
        public static String getCategoryName(String id){
          DBFunction db=new DBFunction();
            for(QueryCategory category:db.getListCategory()){
                if(category.getId().equalsIgnoreCase(id)){
                    return category.getName();
                }
            }
            return "";
        };
     public static String MD5Hex(String s) {
        String result = null;
        try {
            MessageDigest md5 = MessageDigest.getInstance("MD5");
            byte[] digest = md5.digest(s.getBytes());
            result = toHex(digest);
        }
        catch (NoSuchAlgorithmException e) {
            // this won't happen, we know Java has MD5!
        }
        return result;
    }

    private static String toHex(byte[] a) {
        StringBuilder sb = new StringBuilder(a.length * 2);
        for (int i = 0; i < a.length; i++) {
            sb.append(Character.forDigit((a[i] & 0xf0) >> 4, 16));
            sb.append(Character.forDigit(a[i] & 0x0f, 16));
        }
        return sb.toString();
    }
    
}
