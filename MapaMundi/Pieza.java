package MapaMundi;

import java.applet.Applet;
import java.awt.Color;
import java.awt.Graphics;
import java.awt.Image;
import java.awt.Rectangle;

public class Pieza extends Rectangle {
	Image imagen;
	int posicion;
	boolean movible;
	public Pieza(Image img,int pos, boolean mov) {
		super((int)(Math.random()*240)+400, (int)(Math.random()*240),60,60);
		imagen=img;
		posicion= pos;
		movible= mov;
	}
    public void dibujar(Graphics gg,Applet a ){
        	gg.drawImage(imagen, x, y, a);
        
	}
    public void dibujarHuecos(Graphics g){
    	g.drawRect(x, y, width, height);
    	g.setColor(Color.RED);
    	g.drawString(""+posicion,x+ 10,y+10);
    }
    public void mover(int posx, int posy){
	 x=posx-(60/2);
	 y=posy-(60/2);
 }
    public void moverJusto(int posx, int posy){
   	x=posx;
   	y=posy;
    }
}
