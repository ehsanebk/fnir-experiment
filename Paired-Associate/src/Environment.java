/**
 * @author Ehsan Khosroshahi
 * Experiment : Paired associate
 * Test Version 1
 * Block 1 (30 trials)
 * 
 *
 */

import java.awt.*;
import java.awt.event.*;

import javax.swing.*;

import java.util.Random;
import java.io.FileWriter;
import java.io.PrintWriter;
import java.io.IOException;

public class Environment extends JFrame implements KeyListener{

	JLabel num;
	JButton button;
	JTextField tf;

	JPanel buttonPanel;



	Random random;

	public static int timer =0; // the actual timing in the experiment
	public static int stimuliTime =0;


	final int NUMBER_OF_SESSIONS = 2;
	final int NUMBER_OF_TRIALS = 10;
	final int TIME_BETWEEN_STIMULUS = 2500; // Time in millisecond
	final int TIME_FOR_STIMULUS_APPERANCE = 1000;
	int counter;

	String[] n_Back  = {"COW","FUN","ACT","KEY","PEN","ZOO","CAR","LEG","CAT"
			,"DOG","FAT","GUN", "WAR", "ANT", "SUN","MAN"};

	String[][] study={
			{"KAMI", "1"},
			{"PATS", "1"},
			{"GAST", "3"},
			{"RASP", "1"},
			{"SLID", "3"},
			{"MILK", "1"},
			{"SAWN", "3"},
			{"SLUR", "3"},
			{"ZITS", "2"},
			{"BUSK", "3"},
			{"NUKE", "2"},
			{"TAGS", "4"},
			{"DOSE", "3"},
			{"VILE", "2"},
			{"DIET", "3"},
			{"KEEF", "1"},
			{"SCAT", "4"},
			{"AVOS", "3"},
			{"OHED", "1"},
			{"CRAW", "1"},
			{"FYKE", "4"},
			{"PICK", "2"},
			{"PATH", "2"},
			{"CATS", "4"},
			{"HASP", "1"},
			{"PADI", "1"},
			{"TACT", "4"},
			{"HEST", "3"},
			{"ROUP", "3"},
			{"CHAD", "1"},
			{"EGOS", "3"},
			{"GIES", "3"},
			{"VIGA", "1"},
			{"YUCA", "3"},
			{"TEFF", "3"}};

	// writing to a file for each participant
	String fileName = "./test.txt";
	boolean append_to_file  = false;
	FileWriter write; 
	PrintWriter print_line; 


	public Environment() {

		addKeyListener(this);
		setFocusable(true);
		setFocusTraversalKeysEnabled(false);

		setLayout(new GridLayout(3, 3, 5, 5));

		buttonPanel = new JPanel();

		button = new JButton("Start");
		button.setPreferredSize(new Dimension(200, 50));
		button.setBackground(Color.red);
		// button.setOpaque(true);
		buttonPanel.add(button, BorderLayout.NORTH);
		add(buttonPanel);

		add(new Convas());
		add(new Convas());
		add(new Convas());

		num = new JLabel();
		num.setFont(new Font("Serif", Font.PLAIN, 80));
		num.setHorizontalAlignment(SwingConstants.CENTER);
		num.setBorder(BorderFactory.createLineBorder(Color.BLUE, 2));
		add(num);

		add(new Convas());
		add(new Convas());
		add(new Convas());
		add(new Convas());

		setSize(900, 600);

		setVisible(true);
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

		event e = new event();
		button.addActionListener(e);

		random = new Random();

		try {
			write = new FileWriter(fileName, append_to_file);
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		print_line = new PrintWriter(write);


	}


	public class event implements ActionListener {

		public void actionPerformed(ActionEvent e) {


			button.setVisible(false);
			stimuliTime=0;


			Timer t = new Timer(500, new ActionListener(){      // Timer 1 seconds
				public void actionPerformed(ActionEvent e) {
					timer+=500;
					//System.out.println(timer);
				}
			});
			t.start();


			for (int i = 0; i < study.length; i++) {

				// Trial i at time 

				stimulusAtTime(stimuliTime,"<html>"+"*"+"</html>");
				stimulusAtTime(stimuliTime+=2000,"<html>"+study[i][0]+"<br/><center> - </center>"+
						"<br/> <center>"+study[i][1]+"</center></html>");
				stimulusAtTime(stimuliTime+=8000,"<html>"+"+"+"</html>");
				stimulusAtTime(stimuliTime+=10000,"<html>"+study[i][0]+"</html>");
				stimulusAtTime(stimuliTime+=16000,"<html>"+study[i][1]+"</html>");
				stimulusAtTime(stimuliTime+=18000,"<html>"+"*"+"</html>");
				distractorAtTime(stimuliTime += 20000 );
			}


		}

	}

	@Override
	public void keyPressed(KeyEvent e) {
		print_line.println("keyPressed="+KeyEvent.getKeyText(e.getKeyCode())+"--time="+ timer);
		print_line.flush();
		System.out.println("keyPressed="+KeyEvent.getKeyText(e.getKeyCode())+"--time="+ timer);

	}
	@Override
	public void keyReleased(KeyEvent e) {
		print_line.println("keyReleased="+KeyEvent.getKeyText(e.getKeyCode())+"--time="+ timer);
		print_line.flush();
		System.out.println("keyReleased="+KeyEvent.getKeyText(e.getKeyCode())+"--time="+ timer);

	}

	@Override
	public void keyTyped(KeyEvent e) {
		System.out.println("keyTyped="+KeyEvent.getKeyText(e.getKeyCode()));

	}

	// set the text to s on the screen at time t in the experiment 
	public void stimulusAtTime(int t,final String s){

		Timer stimulusTimer = new Timer(t,
				new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent arg0) {
				num.setText(s);
			}
		});
		stimulusTimer.setRepeats(false); // Only execute once
		stimulusTimer.start();

	}

	// the distractor : 1-Back task for 10 sec and it will update the timing (time)
	public void distractorAtTime(int t) {

		for (int i = 0; i < 10; i++) {
			stimulusAtTime(t,n_Back[randomInteger(1, 10, random)]);
			t+= 1000;
		} 
		stimuliTime =t; // updating the global time


	}



	private static int randomInteger(int Start, int End, Random aRandom) {
		if (Start > End) {
			throw new IllegalArgumentException("Start cannot exceed End.");
		}
		// get the range, casting to long to avoid overflow problems
		long range = (long) End - (long) Start + 1;
		// compute a fraction of the range, 0 <= frac < range
		long fraction = (long) (range * aRandom.nextDouble());
		int randomNumber = (int) (fraction + Start);
		return randomNumber;
	}

	public static void main(String args[]) {
		Environment environment = new Environment();
		environment.setExtendedState(Frame.MAXIMIZED_BOTH);


	}


}