float[] ZIP_CODE;
float[] X_COORD;
float[] Y_COORD;
float[] TOWN_NAME;
float[] STATE;
Place[] all_data;
String[] TOWN_NAMES_STATE;
//Define all the arrays and data types

void setup(){
  size(displayWidth, displayHeight);
  background(255);
  //set up background color and size
  String[] lines = loadStrings("zips.txt");
  ZIP_CODE= new float[lines.length];
  X_COORD= new float[lines.length];
  Y_COORD= new float[lines.length];
  TOWN_NAMES_STATE= new String[lines.length];
  all_data= new Place[41556];
  //build new arrays for 41566 x,y coordinates and zip codes

   for (int i=0; i<lines.length; i++) {
   if (lines[i].charAt(0) == '#') continue;
   String[] pieces = split(lines[i], "\t");
   
   // split the data loaded from the txt file.
   ZIP_CODE[i] = float(pieces[0]);
   X_COORD[i] = float(pieces[1]);
   Y_COORD[i] = float(pieces[2]);
   TOWN_NAMES_STATE[i] = pieces[3];
   //define each kind of data according to their positions in the splited array pieces
   }
   }
   
   
   
   
   
   
void draw() {
   
   for (int i=0;i<41556;i++){
   all_data[i]= new Place(i);   
   all_data[i].draw();
  //creat the new Place objects and call its draw method.
    }
}




 class Place{
   float zipcode;
   float x_corrd;
   float y_corrd;
   String town_name_state;
   //define all the class variables
    Place(int a){
     zipcode=ZIP_CODE[a];
     x_corrd= X_COORD[a];
     y_corrd=Y_COORD[a];
     town_name_state=TOWN_NAMES_STATE[a];
     //define the initial values of the class variables 
   }
   
  void draw() {
     float m = map(this.x_corrd, -0.3667764, 0.35192886, 0, displayWidth);
     float n = map(this.y_corrd, 0.87044954,0.4181981, 0, displayHeight);
     //map the coordinate values
     if (this.zipcode>15000&&this.zipcode<19700){
       stroke(255,0,0);
     }else{
       stroke(0);
     }
     //make the point in PA into red, others remain black
     point(m, n); 
   }
 }