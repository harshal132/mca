import java.awt.*;  
import java.awt.event.*;  
class AEvent extends Frame implements ActionListener{  
TextField tf;  
AEvent(){  
 //Java event handling by implementing ActionListener 
//create components  
tf=new TextField();  
tf.setBounds(60,50,170,20);  
Button b=new Button("click me");  
b.setBounds(100,120,80,30);  
  
//register listener  
b.addActionListener(this);
//passing current instance  
  
//add components and set size, layout and visibility  
add(b);// this will add button to the window
add(tf);  // this will add textfield to window
setSize(300,300);  // windows size
setLayout(null);  
setVisible(true); // to se the window 
}  
public void actionPerformed(ActionEvent e){  
tf.setText("Welcome");  
}  
public static void main(String args[]){  
new AEvent();  
}  
}  