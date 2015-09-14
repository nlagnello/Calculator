/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Lab4;

/**
 *
 * @author Nick
 */
public class CalculateService4 {
    
    public double calculateAreaOfRectangle(String sWidth, String sLength){
        
        
        double length = Double.parseDouble(sLength);
        double width = Double.parseDouble(sWidth);
        
        double area = length * width;
        
        
        return area;
    }
    
    public double calculateAreaOfCircle(String sRadius){
        double radius = Double.parseDouble(sRadius);
        
        double area = Math.PI * radius * radius;
        
        return area;
    }
    
    public double calculateAreaOfTriangle(String sWidth, String sLength){
        
        double length = Double.parseDouble(sLength);
        double width = Double.parseDouble(sWidth);
        
        double area = (length * width)/2;
        
        return area;
    }
}
