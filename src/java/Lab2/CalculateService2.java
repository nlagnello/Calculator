/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Lab2;

/**
 *
 * @author Nick
 */
public class CalculateService2 {
    
    public String calculateAreaOfRectangle(String sWidth, String sLength){
        
        
        double length = Double.parseDouble(sLength);
        double width = Double.parseDouble(sWidth);
        
        double area = length * width;
        
        
        return Double.toString(area) ;
    }
}
