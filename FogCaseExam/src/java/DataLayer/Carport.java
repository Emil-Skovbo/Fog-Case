/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DataLayer;

/**
 *
 * @author frizz
 */
public class Carport {
    private int length;
    private int heigth;
    private int width;
    private boolean shed;
    private boolean roofangle;

    public Carport(int length, int heigth, int width, boolean shed, boolean roofangle) {
        this.length = length;
        this.heigth = heigth;
        this.width = width;
        this.shed = shed;
        this.roofangle = roofangle;
    }
    
}
