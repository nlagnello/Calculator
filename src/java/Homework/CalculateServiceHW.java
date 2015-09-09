/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Homework;

/**
 *
 * @author Nick
 */
public class CalculateServiceHW {
    public String calculateAreaOfRectangle(String sWidth, String sLength){
        
        
        double length = Double.parseDouble(sLength);
        double width = Double.parseDouble(sWidth);
        
        double area = length * width;
        
        
        return Double.toString(area) ;
    }
    
    public String calculateAreaOfCircle(String sRadius){
        double radius = Double.parseDouble(sRadius);
        
        double area = Math.PI * radius * radius;
        
        return Double.toString(area);
    }
    
    public String calculateAreaOfTriangle(String sWidth, String sLength){
        
        double length = Double.parseDouble(sLength);
        double width = Double.parseDouble(sWidth);
        
        double area = (length * width)/2;
        
        return Double.toString(area);
    }
}
