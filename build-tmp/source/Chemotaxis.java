import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Chemotaxis extends PApplet {

 //declare bacteria variables here   
 Bacteria cell;
 Bacteria [] colony;
 public void setup()   
 {     
 	//initialize bacteria variables here  
 	background(0,0,0);
 	cell = new Bacteria(250,250,100);
 	colony = new Bacteria[100];
 	for(int i = 0; i < 100; i++){
 		colony[i]= new Bacteria(250,250,(int)(Math.random()*255));
 	}
 	size(500,500);
 }   
 public void draw()   
 {    
 	//move and show the bacteria
 	fill(0,0,0,10);
 	rect(0,0,500,500);
 	cell.move();
 	cell.show();  
 	for(int i = 0; i < 100; i++){
 		colony[i].move();
 		colony[i].show();
 	}
 }  
 class Bacteria    
 {   
 	int xPos, yPos, bacteriaColor;
 	Bacteria(int x, int y, int bacColor){
 		xPos = x;
 		yPos = y;
 		bacteriaColor = bacColor;
 	}  
 	//lots of java!   
 	public void move(){
 		xPos += ((int)(Math.random()*3)-1);
 		yPos += ((int)(Math.random()*3)-1);
 	}
 	public void show(){
 		noStroke();
 		fill(200,150,bacteriaColor);
 		ellipse(xPos, yPos, 10, 10);
 	}
 }    
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Chemotaxis" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
