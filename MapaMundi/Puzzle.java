package MapaMundi;
import java.awt.*;
import java.applet.*;

public class Puzzle extends Applet{
	public static final int PIEZAS = 25;
	Image imagenes[];
	Image imagen;
	Graphics noseve;
	Pieza piezas[];
	Pieza activa;
	Rectangle huecos[][];
	int contador=0;
    public void init(){
    	imagen = createImage(700, 500);
    	noseve = imagen.getGraphics();
    	imagenes = new Image[PIEZAS];
    	piezas = new Pieza[PIEZAS];
    	huecos= new Rectangle[5][5];
    	for (int i = 0; i <5; i++){
    		for (int j = 0; j < 5; j++) {
    			huecos[i][j]= new Rectangle((j*60)+50, i*60, 60,60);
    		}
    	}
    	for(int i=0; i<PIEZAS; i++){
    			imagenes[i] = getImage(getCodeBase(), "MapaMundi/directorioImagenes/" + (i+1)+ ".png");
    			piezas[i] = new Pieza(imagenes[i],i, true);
    	}
    }
  
    public void paint(Graphics g){
    	noseve.setColor(Color.black);
    	noseve.fillRect(0, 0, 700, 500);
    	for(int i=0; i<PIEZAS; i++){
    		piezas[i].dibujar(noseve, this);
    	}
    	noseve.setColor(Color.WHITE);
    	for (int i = 0; i <5; i++){
    		for (int j = 0; j < 5; j++) {
				noseve.drawRect(huecos[i][j].x,huecos[i][j].y,huecos[i][j].width,huecos[i][j].height);
			
			}
    		
    		if(contador==25){
    	noseve.drawString("Greografia Nivel Experto", 10, 330);
    	repaint();
    	}
    	g.drawImage(imagen, 0, 0, this);
    }
    }
    public void update(Graphics g){
    	paint(g);
    }
   
    public boolean mouseDown(Event ev, int x, int y){
		for (int i = 0;i<25; i++) 
			if(piezas[i].contains(x,y))
				activa=piezas[i];
				
				repaint();
				if(activa.movible==false){
					activa=null;
				}
			
    	return true;
    }
    
    public boolean mouseUp(Event ev, int x, int y){
		if(activa != null){
			for(int i=0; i<5; i++){
				for (int j = 0; j < 5; j++) {
					if(huecos[i][j].intersects(activa)){
						if(activa.posicion==(i*5)+j){
							activa.moverJusto(huecos[i][j].x, huecos[i][j].y);
							contador=contador+1;
							activa.movible= false;		
							}
							}
						}
					}
				}
		activa=null;
    	return true;
    }
 
 
   public boolean mouseDrag(Event ev, int x, int y){
		if(activa != null){
			activa.mover(x, y);
			repaint();
		}
    	return true;
    }
}