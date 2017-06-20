void texture_back(PImage tex) {
  beginShape(QUADS);
  texture(tex);
  
  // +Z "front" face
  vertex(-1, -1,  1, 0, 0); // x, y , z , tex_x, tex_y, tex
  vertex( 1, -1,  1, 1, 0);
  vertex( 1,  1,  1, 1, 1);
  vertex(-1,  1,  1, 0, 1);
  
  endShape();
}