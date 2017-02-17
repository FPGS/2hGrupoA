package ejercicio_arkanoid;

import java.awt.*;
import java.util.List;

public class Pelota extends Block{
	int velX, velY;
	boolean fin;
	public Pelota(){
		super(150, 260, 9, 9, Color.white);
		velX = -3;
		velY = -2;
		fin = false;
	}
	
	public void actualizar(List<Block> muro, Raqueta raqueta){
		x += velX;
		y += velY;
		for(int i=0; i<muro.size(); i++)
			if(this.intersects(muro.get(i))){
				muro.remove(i);
				velY = -velY;
			}
		//Intersección entre pelota-raqueta
		if (this.intersects(raqueta))
			velY = -velY;
		
		//Hago que rebote en las paredes
		if((x<=0) || (x>=291))
			velX = -velX;
		if((y<0))
			velY = -velY;
		if(y>300)
			fin = true;
	}
	
	public void dibujar(Graphics g){
		g.setColor(color);
		g.fillOval(x, y, width, height);
	}
}