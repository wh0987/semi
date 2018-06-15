import java.awt.Container;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.*;



import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextField;
 
public class EventFireGui extends JFrame {
	
 MakeJaDoS jad = new MakeJaDoS(0, 0);
 private static final long serialVersionUID = -711163588504124217L;
 
 public EventFireGui() {
  super("JAVA DoS");
  
  setBounds(100 , 100 , 300 , 200);
  setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
  
  Container contentPane = this.getContentPane();
  JPanel pane = new JPanel();
  JButton buttonStart = new JButton("Start");
  JButton buttonStop = new JButton("Stop");
  JTextField typePeriod = new JTextField(5);
  JTextField urlPeriod = new JTextField(30);
  JTextField packetPeriod = new JTextField(10);
  JLabel labelPeriod = new JLabel("Input url : ");
  JLabel labelPeriod2 = new JLabel("Input type : ");
  JLabel labelPeriod3 = new JLabel("Input packetamount : ");
  
  pane.setLayout(new GridLayout(4,2)); //GridLayout 
  add(pane); // JFrame에 pane라는 패널 추가
  setSize(400, 300); // 윈도우의 크기 가로x세로
  setVisible(true); // 창을 보여줄떄 true, 숨길때 false 


  pane.add(labelPeriod);
  pane.add(urlPeriod);
  pane.add(labelPeriod2);
  pane.add(typePeriod);
  pane.add(labelPeriod3);
  pane.add(packetPeriod);
  pane.add(buttonStart);
  pane.add(buttonStop);
  contentPane.add(pane);

  setVisible(true);
  
  buttonStart.addActionListener(new ActionListener() {
	  public void actionPerformed(ActionEvent e) {
			String amount = packetPeriod.getText();
			String type = typePeriod.getText();
			String url = urlPeriod.getText();
			
			try {
				jad.packetmount(amount);
				int optype = jad.urlcheck(type, url);
				jad.attack(optype);
				
			} catch (Exception e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
	  }
  });
  buttonStop.addActionListener(new ActionListener() {
	  public void actionPerformed(ActionEvent e) {
			
	  }
  });
 }

}	


