void polyCube() {
  beginShape(QUADS);
  
  // +Z "front" face
  vertex(-1, -1,  1); // x, y , z
  vertex( 1, -1,  1);
  vertex( 1,  1,  1);
  vertex(-1,  1,  1);

  // -Z "back" face
  vertex( 1, -1, -1);
  vertex(-1, -1, -1);
  vertex(-1,  1, -1);
  vertex( 1,  1, -1);

  // +Y "bottom" face
  vertex(-1,  1,  1);
  vertex( 1,  1,  1);
  vertex( 1,  1, -1);
  vertex(-1,  1, -1);

  // -Y "top" face
  vertex(-1, -1, -1);
  vertex( 1, -1, -1);
  vertex( 1, -1,  1);
  vertex(-1, -1,  1);

  // +X "right" face
  vertex( 1, -1,  1);
  vertex( 1, -1, -1);
  vertex( 1,  1, -1);
  vertex( 1,  1,  1);

  // -X "left" face
  vertex(-1, -1, -1);
  vertex(-1, -1,  1);
  vertex(-1,  1,  1);
  vertex(-1,  1, -1);

  endShape();
}