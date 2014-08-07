/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package DataAccess;

/**
 *
 * @author Minh Hung
 */
public class test {
    public static void main(String[] args) {
        Technician db = new Technician();
        System.out.println(db.getNewTotal(100, "tech1"));
    }
}
