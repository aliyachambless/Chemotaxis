 //declare bacteria variables here   
 Predator [] hunters;
 Bacteria [] colony;
 void setup()   
 {     
 	//initialize bacteria variables here  
 	background(0,0,0);
 	colony = new Bacteria[100];
 	hunters = new Predator[10];
 	for(int i = 0; i < 100; i++){
 		colony[i]= new Bacteria(250,250,(int)(Math.random()*255));
 	}
 	hunters[0] = new Predator(50,50,100);
 	size(500,500);
 }   
 void draw()   
 {    
 	//move and show the bacteria
 	fill(0,0,0,10);
 	rect(0,0,500,500); 
 	for(int i = 0; i < colony.length; i++){
 		colony[i].move();
 		colony[i].show();
 	}
 	// for(int i = 0; i < hunters.length; i++){
 	// 	hunters[i].move();
 	// 	hunters[i].show();
 	// }
 	hunters[0].move();
 	hunters[0].show();
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
 	void move(){
 		if(xPos > hunters[0].xPos && xPos < hunters[0].xPos + 100){
 			xPos += ((int)(Math.random()*3)-1+(int)(Math.random()*2));
 		}
 		else if(xPos > hunters[0].xPos - 100){
 			xPos += ((int)(Math.random()*3)-1+(int)(Math.random()*2)-1);
 		}
 		if(yPos > hunters[0].yPos && yPos < hunters[0].yPos + 100){
 			yPos += ((int)(Math.random()*3)-1+(int)(Math.random()*2));
 		}
 		else if(yPos > hunters[0].yPos - 100){
 			yPos += ((int)(Math.random()*3)-1+(int)(Math.random()*2)-1);
 		}
 	}
 	void show(){
 		noStroke();
 		fill(200,150,bacteriaColor);
 		ellipse(xPos, yPos, 10, 10);
 	}
 }    
 class Predator 
 {
 	int xPos, yPos, predatorColor;
 	Predator(int x, int y, int pColor){
 		xPos = x;
 		yPos = y;
 		predatorColor = pColor;
 	}
 	void move(){
 		if(xPos < mouseX){
 			xPos += ((int)(Math.random()*2));
 		}
 		else if(xPos > mouseX){
 			xPos += ((int)(Math.random()*2)-1);
 		}
 		if(yPos < mouseY){
 			yPos += ((int)(Math.random()*2));
 		}
 		else if(yPos > mouseY){
 			yPos += ((int)(Math.random()*2)-1);
 		}
 	}
 	void show(){
 		noStroke();
 		fill(255,predatorColor,10);
 		ellipse(xPos, yPos, 20, 20);
 	}
 }