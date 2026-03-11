//Peter Shumway |Feb 23 2026 | Timeline
void setup() {
  size(950, 400);
}
void draw() {
  background(#FAD027);
  drawRef();
  histEvent(100, 200, "Oct 2002", true, "Jonothan Kuminga is born in the Democratic Republic of Congo.");
  histEvent(250, 300, "Aug 2016", false, "Jonothan moves to the US to pursue basketball.");
  histEvent(350, 200, "Sep 2019", true, "Jonothan transfers to the Patrick High School.");
  histEvent(500, 300, "July 2020", false, "Jonothan signs with NBA G League Ignite, playing pro instead of college.");
  histEvent(600, 200, "Feb 2021", true, "Kuminga makes G league debut in Orlando.");
  histEvent(680, 300, "Mar 2021", false, "Kuminga scores a 30pt game in the G league, solidifying lottery draft status.");
  histEvent(780, 200, "July 2021", true, "Kuminga gets drafted 7th overall by the Golden State Warriors.");
  histEvent(850, 300, "Oct 2021", false, "Kuminga makes his NBA regular-season debut with the Warriors.");
}
void drawRef() {
  textAlign(CENTER);
  textSize(36);
  fill(#F55F41);
  text("Jonothan Kuminga: Timeline", width/2, 70);
  textSize(20);
  text("By: Peter Shumway", width/2, 90);
  strokeWeight(5);
  line(50, 250, 900, 250);
  fill(0);
  text("2000", 50, 245);
  text("2025", 900, 245);
  strokeWeight(2);
  line(50, 245, 50, 255);
  line(900, 245, 900, 255);
  line(150, 245, 150, 255);
  line(250, 245, 250, 255);
  line(350, 245, 350, 255);
  line(450, 245, 450, 255);
  line(550, 245, 550, 255);
  line(650, 245, 650, 255);
  line(750, 245, 750, 255);
  line(850, 245, 850, 255);
}
void histEvent(int x, int y, String title, boolean top, String detail) {
  if (top == true) {
    line(x, y, x-15, y+50);
  } else {
    line(x, y, x-15, y-50);
  }
  rectMode(CENTER);
  fill(#5393FA);
  rect(x, y, 100, 30, 10);
  fill(0);
  textSize(15);
  text(title, x, y+5);
  if (mouseX > x-50 && mouseX < x+50 && mouseY > y-15 && mouseY < y+15) {
    textSize(30);
    text(detail, width/2, 350);
  }
}
