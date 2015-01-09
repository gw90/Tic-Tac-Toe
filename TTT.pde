import java.util.Random;
import javax.swing.JOptionPane;

    int loc;
    String[] board  = new String[9];
    
    Random generator = new Random();
    
    
    for(int i = 0; i<=8; i++){
      board[i] = "    ";
    }
    
    int numMoves = 0;
    String move = "  X ";
    //JOptionPane.showMessageDialog(null,  " 0  |  1 | 2  \n--------------\n 3  |  4 | 5  \n--------------\n 6  |  7 | 8  ", "Board Cordinates", JOptionPane.DEFAULT_OPTION);
    
    while(numMoves<9){
      boolean correct = false;
      //human makes his move
      while(correct==false){//Input Dialog Input Dialog Input Dialog Input Dialog Input Dialog Input Dialog Input Dialog Input Dialog Input Dialog Input Dialog Input Dialog Input Dialog Input Dialog Input Dialog Input Dialog Input Dialog Input Dialog Input Dialog Input Dialog 
        loc = Integer.parseInt(JOptionPane.showInputDialog(null, " 0  |  1 | 2  "+"        " + board[0] + " " + "|" + " " + board[1] + " | " + board[2] + "\n---+---+------      ---+----+----\n 3  |  4 | 5          "+ board[3] + " | " + board[4] + " | " + board[5] + "\n---+---+------      ---+----+----\n 6  |  7 | 8          "+ board[6] + " | " + board[7] + " | " + board[8]+"\n \ntype in a cordinate.", "Board Cordinates", JOptionPane.DEFAULT_OPTION));
        if(loc <= 8 && loc>=0){
          if(  !(board[loc].equals("  X "))  &&  !(board[loc].equals("  O "))  ){
            correct=true;
            board[loc]=move;
            numMoves = numMoves +1;
            JOptionPane.showMessageDialog(null,  " " + board[0] + " " + "|" + " " + board[1] + " | " + board[2] + "\n--------------\n" + " " + board[3] + " | " + board[4] + " | " + board[5] + "\n--------------\n " + board[6] + " | " + board[7] + " | " + board[8],  "", JOptionPane.DEFAULT_OPTION);
            //JOptionPane.showMessageDialog(null,  " 0  |  1 | 2  \n--------------\n 3  |  4 | 5  \n--------------\n 6  |  7 | 8  ", "Board Cordinates", JOptionPane.DEFAULT_OPTION);
          }
          
        }
        
      }
      
      if (move.equals("  X ")){
        move = "  O ";
      }
      else if (move.equals("  O ")){
        move = "  X ";
      }
      
      //Computer MOVE!!!!!!!
      boolean correctC=false;
      while(correctC==false){
        int random = generator.nextInt(9);
        loc = random;
        
        if( !(board[loc].equals("  X "))  &&  !(board[loc].equals("  O "))  ){
          
          correctC= true;
          board[loc]= move;
        }
          
        
        
      }
      JOptionPane.showMessageDialog(null,  " " + board[0] + " " + "|" + " " + board[1] + " | " + board[2] + "\n--------------\n" + " " + board[3] + " | " + board[4] + " | " + board[5] + "\n--------------\n " + board[6] + " | " + board[7] + " | " + board[8],  "", JOptionPane.DEFAULT_OPTION);
      
      if (move.equals("  X ")){
        move = "  O ";
      }
      else if (move.equals("  O ")){
        move = "  X ";
      }
    }
 
