import processing.sound.*;   
int id;
SoundFile cM,cm,dM,dm,eM,fM,fm,gM,gm,aM,am,bM; 
boolean active;
void setup()
{
  active = false;
  size(700,400);
  rectMode(CENTER);
  cM = new SoundFile(this,"piano-c_C_major.wav");
  cm = new SoundFile(this,"piano-c_C#_major.wav");
  dM = new SoundFile(this,"piano-d_D_major.wav");
  dm = new SoundFile(this,"piano-eb_D_major.wav");
  eM = new SoundFile(this,"piano-e_E_major.wav");
  fM = new SoundFile(this,"piano-f_F_major.wav");
  fm = new SoundFile(this,"piano-f_F#_major.wav");
  gM = new SoundFile(this,"piano-g_G_major.wav");
  gm = new SoundFile(this,"piano-g_G#_major.wav");
  aM = new SoundFile(this,"piano-a_A_major.wav");
  am = new SoundFile(this,"piano-bb_A_major.wav");
  bM = new SoundFile(this,"piano-b_B_major.wav");
  int id =0;
}
 
void draw()
{
  //println(active);
   fill(255);
  rect(40,100,100,height/2);
  rect(140,100,100,height/2);
  rect(240,100,100,height/2);
  rect(340,100,100,height/2);
  rect(440,100,100,height/2);
  rect(540,100,100,height/2);
  rect(640,100,100,height/2);
  
  fill(0);
  rect(90,50,50,height/4);
  rect(190,50,50,height/4);
  rect(390,50,50,height/4);
  rect(490,50,50,height/4);
  rect(590,50,50,height/4);

  
  switch (id) 
  {
    case 1: 
    fill(0);
    rect(40,100,100,height/2);
    break;
    case 2:
    fill(0);
    rect(140,100,100,height/2);
    break;
    case 3:
    fill(0);
    rect(240,100,100,height/2);
    break;
    case 4:
    fill(0);
    rect(340,100,100,height/2);
    break;
    case 5:
    fill(0);
    rect(440,100,100,height/2);
    break;
    case 6:
    fill(0);
    rect(540,100,100,height/2);
    break;
    case 7:
    fill(0);
    rect(640,100,100,height/2);
    break;
   
    
  }
  
  switch (id) {
    
    case 8:
    fill(255);
    rect(90,50,50,height/4);
    break;
    
    case 9:
    fill(255);
    rect(190,50,50,height/4);
    break;
    
    case 10:
    fill(255);
    rect(390,50,50,height/4);
    break;
    
    case 11:
    fill(255);
    rect(490,50,50,height/4);
    break;
    
    case 12:
    fill(255);
    rect(590,50,50,height/4);
    break;
    
    
  }

}
 
void keyPressed()
{
  
  active=true;
  
  if (key == 's')
  {   
    cM.play();
    id = 1;
  }
  else if (key == 'e')
  {
    cm.play();
    id = 8;
  }
  else if (key == 'd')
  {
    dM.play();
    id = 2;
  }
  else if (key == 'r')
  {
    dm.play();
    id = 9;
  }
  else if (key == 'f')
  {
    eM.play();
    id = 3;
  }
  else if (key == 'g')
  {
    fM.play();
    id = 4;
  }
  else if (key == 'y')
  {
    fm.play();
    id = 10;
  }
  else if (key == 'h')
  {
    gM.play();
    id = 5;
  }
  else if (key == 'u')
  {
    gm.play();
    id = 11;
  }
  else if (key == 'j')
  {
    aM.play();
    id = 6;
  }
  else if (key == 'i')
  {
    am.play();
    id = 12;
  }
  else if (key == 'k')
  {
    bM.play();
    id = 7;
  }
  
}
void keyReleased() {
  active = false;
  id=0;
}
