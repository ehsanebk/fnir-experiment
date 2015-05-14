/**
 * @author Ehsan Khosroshahi
 * Experiment : Paired associate
 * Test Version 1
 * Block 2 (30 trials)
 * 
 *
 */

import java.awt.*;
import java.awt.event.*;

import javax.swing.*;

import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Random;
import java.io.FileWriter;
import java.io.PrintWriter;
import java.io.IOException;

public class Paired_Block2 extends JFrame implements KeyListener{
	JLabel num;
	JButton button;
	JTextField tf;
	JPanel buttonPanel;
	Random random;
	KeyListener respond_to_probe;

	boolean key;
	int trial_number;
	Timer stimulusTimer;
	long startTime;

	// constant variables
	String FILE_NAME = "./Paired_Block2_take2.txt";  // writing to a file for each participant
	static final int TIME_BETWEEN_STUDY_AND_PROBE  = 6000;  
	static final int NUMBER_OF_N_BACK_STIMULI = 8;

	boolean append_to_file  = false;
	FileWriter write; 
	PrintWriter print_line; 

	List<String> N_BACK  = Arrays.asList("COW","FUN","ACT","KEY","PEN","ZOO","CAR","LEG","CAT"
			,"DOG","FAT","GUN", "WAR", "ANT", "SUN","MAN");

	String[][] study={
			// study            
			{"foot" , "3"},		//  **TRIAL  1**
			{"back" , "2"},		//  **TRIAL  2**
			{"game" , "2"},		//  **TRIAL  3**
			{"food" , "1"},		//  **TRIAL  4**
			{"role" , "3"},		//  **TRIAL  5**
			{"land" , "4"},		//  **TRIAL  6**
			{"club" , "4"},		//  **TRIAL  7**
			{"care" , "2"},		//  **TRIAL  8**
			{"wife" , "4"},		//  **TRIAL  9**
			{"rule" , "2"},		//  **TRIAL 10**
			{"data" , "4"},		//  **TRIAL 11**
			{"unit" , "4"},		//  **TRIAL 12**
			{"date" , "3"},		//  **TRIAL 13**
			{"wall" , "1"},     //  **TRIAL 14**
			{"firm" , "1"},		//  **TRIAL 15**
			{"king" , "3"},		//  **TRIAL 16**
			{"lord" , "1"},		//  **TRIAL 17**
			{"test" , "4"},		//  **TRIAL 18**
			{"site" , "2"},		//  **TRIAL 19**
			{"loss" , "3"},		//  **TRIAL 20**
			{"shop" , "1"},		//  **TRIAL 21**
			{"page" , "4"},		//  **TRIAL 22**
			{"hair" , "3"},		//  **TRIAL 23**
			{"love" , "1"},		//  **TRIAL 24**
			{"tree" , "2"},		//  **TRIAL 25**
			{"fire" , "2"},		//  **TRIAL 26**
			{"size" , "2"},		//  **TRIAL 27**
			{"rest" , "3"},		//  **TRIAL 28**
			{"list" , "3"},		//  **TRIAL 29**
			{"step" , "4"},		//  **TRIAL 30**
			{"film" , "3"},				// foils 1
			{"cell" , "2"},				// foils 2
			{"lady" , "4"},				// foils 3	
			{"mile" , "4"},				// foils 4
			{"risk" , "2"},				// foils 5
			{"task" , "1"},				// foils 6
			{"hall" , "2"},				// foils 7
			{"user" , "2"},				// foils 8
			{"army" , "4"},				// foils 9
			{"look" , "3"}};				// foils 10

	String[][] probe_feedback ={
			//probe and feedback
			{"foot" , "3"},	   //  **TRIAL  1** study:time-1 probe:time feedback:1 (0 trial delay)
			{"film" , "3"},	   //  **TRIAL  2** study:year-1 probe:kind feedback:3 (foil)
			{"foot" , "3"},	   //  **TRIAL  3** study:work-3 probe:time feedback:1 (2 trial delay)
			{"game" , "2"},	   //  **TRIAL  4** study:life-1 probe:work feedback:3 (1 trial delay)
			{"role" , "3"},	   //  **TRIAL  5** study:case-3 probe:case feedback:1 (0 trial delay)
			{"food" , "1"},	   //  **TRIAL  6** study:part-1 probe:life feedback:1 (2 trial delay)
			{"club" , "4"},	   //  **TRIAL  7** study:area-3 probe:area feedback:3 (0 trial delay)
			{"land" , "4"},	   //  **TRIAL  8** study:hand-3 probe:part feedback:1 (2 trial delay)
			{"back" , "2"},	   //  **TRIAL  9** study:week-2 probe:year feedback:1 (7 trial delay)
			{"care" , "2"},	   //  **TRIAL 10** study:word-3 probe:hand feedback:3 (2 trial delay)
			{"wife" , "4"},	   //  **TRIAL 11** study:fact-2 probe:week feedback:2 (2 trial delay)
			{"cell" , "2"},	   //  **TRIAL 12** study:head-4 probe:cost feedback:3 (foil)
			{"data" , "4"},	   //  **TRIAL 13** study:side-3 probe:fact feedback:2 (2 trial delay)
			{"lady" , "4"},	   //  **TRIAL 14** study:home-2 probe:time feedback:1 (foil)
			{"firm" , "1"},	   //  **TRIAL 15** study:book-3 probe:book feedback:3 (0 trial delay)
			{"wall" , "1"},	   //  **TRIAL 16** study:form-1 probe:home feedback:2 (2 trial delay)
			{"rule" , "2"},	   //  **TRIAL 17** study:room-4 probe:word feedback:3 (7 trial delay)
			{"mile" , "4"},	   //  **TRIAL 18** study:idea-3 probe:girl feedback:3 (foil)
			{"unit" , "4"},	   //  **TRIAL 19** study:name-1 probe:head feedback:4 (7 trial delay)
			{"site" , "2"},	   //  **TRIAL 20** study:body-1 probe:name feedback:3 (1 trial delay)
			{"shop" , "1"},	   //  **TRIAL 21** study:line-4 probe:line feedback:4 (0 trial delay)
			{"king" , "3"},	   //  **TRIAL 22** study:face-2 probe:form feedback:1 (6 trial delay)
			{"risk" , "2"},	   //  **TRIAL 23** study:road-2 probe:mind feedback:3 (foil)
			{"love" , "1"},	   //  **TRIAL 24** study:rate-4 probe:rate feedback:4 (0 trial delay)
			{"test" , "4"},	   //  **TRIAL 25** study:door-1 probe:idea feedback:1 (7 trial delay)
			{"fire" , "2"},	   //  **TRIAL 26** study:hour-1 probe:hour feedback:1 (0 trial delay)
			{"task" , "1"},	   //  **TRIAL 27** study:view-4 probe:bank feedback:1 (foil)
			{"rest" , "3"},	   //  **TRIAL 28** study:term-3 probe:term feedback:3 (0 trial delay)
			{"hair" , "3"},	   //  **TRIAL 29** study:city-3 probe:road feedback:2 (6 trial delay)
			{"list" , "3"}};    //  **TRIAL 30** study:need-1 probe:city feedback:3 (1 trial delay)

	String [] info ={
			"**TRIAL  1** study:time-1 probe:time feedback:1 (0 trial delay)" ,
			"**TRIAL  2** study:year-1 probe:kind feedback:3 (foil)",
			"**TRIAL  3** study:work-3 probe:time feedback:1 (2 trial delay)",
			"**TRIAL  4** study:life-1 probe:work feedback:3 (1 trial delay)",
			"**TRIAL  5** study:case-3 probe:case feedback:1 (0 trial delay)",
			"**TRIAL  6** study:part-1 probe:life feedback:1 (2 trial delay)",
			"**TRIAL  7** study:area-3 probe:area feedback:3 (0 trial delay)",
			"**TRIAL  8** study:hand-3 probe:part feedback:1 (2 trial delay)",
			"**TRIAL  9** study:week-2 probe:year feedback:1 (7 trial delay)",
			"**TRIAL 10** study:word-3 probe:hand feedback:3 (2 trial delay)",
			"**TRIAL 11** study:fact-2 probe:week feedback:2 (2 trial delay)",
			"**TRIAL 12** study:head-4 probe:cost feedback:3 (foil)",
			"**TRIAL 13** study:side-3 probe:fact feedback:2 (2 trial delay)",
			"**TRIAL 14** study:home-2 probe:time feedback:1 (foil)",
			"**TRIAL 15** study:book-3 probe:book feedback:3 (0 trial delay)",
			"**TRIAL 16** study:form-1 probe:home feedback:2 (2 trial delay)",
			"**TRIAL 17** study:room-4 probe:word feedback:3 (7 trial delay)",
			"**TRIAL 18** study:idea-3 probe:girl feedback:3 (foil)",
			"**TRIAL 19** study:name-1 probe:head feedback:4 (7 trial delay)",
			"**TRIAL 20** study:body-1 probe:name feedback:3 (1 trial delay)",
			"**TRIAL 21** study:line-4 probe:line feedback:4 (0 trial delay)",
			"**TRIAL 22** study:face-2 probe:form feedback:1 (6 trial delay)",
			"**TRIAL 23** study:road-2 probe:mind feedback:3 (foil)",
			"**TRIAL 24** study:rate-4 probe:rate feedback:4 (0 trial delay)",
			"**TRIAL 25** study:door-1 probe:idea feedback:1 (7 trial delay)",
			"**TRIAL 26** study:hour-1 probe:hour feedback:1 (0 trial delay)",
			"**TRIAL 27** study:view-4 probe:bank feedback:1 (foil)",
			"**TRIAL 28** study:term-3 probe:term feedback:3 (0 trial delay)",
			"**TRIAL 29** study:city-3 probe:road feedback:2 (6 trial delay)",
			"**TRIAL 30** study:need-1 probe:city feedback:3 (1 trial delay)"
	};



	public Paired_Block2() {

		if (!isDisplayable()) {
			// Can only do this when the frame is not visible
			setUndecorated(true);
		}

		GraphicsDevice gd =
				GraphicsEnvironment.getLocalGraphicsEnvironment().getDefaultScreenDevice();
		if (gd.isFullScreenSupported()) {
			//setUndecorated(true);
			gd.setFullScreenWindow(this);

		} else {
			System.err.println("Full screen not supported");
			setExtendedState(Frame.MAXIMIZED_BOTH);
			setUndecorated(true);
		}

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
		num.setFont(new Font("Serif", Font.PLAIN, 60));
		num.setForeground(Color.white);
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
			write = new FileWriter(FILE_NAME, append_to_file);
		} catch (IOException e1) {
			e1.printStackTrace();
		}
		print_line = new PrintWriter(write);

		/* A key handler which handle the key responses of the subject 
		            after the probe and go forward with the experiment 
		 */
		respond_to_probe = new KeyListener() {
			public void keyPressed(KeyEvent e) { }

			public void keyReleased(KeyEvent e) { 
				stimulusAtTime(0,"","");
				stimulusAtTime_feedback(100);
				key =true;
			}

			public void keyTyped(KeyEvent e) { }
		};

	}

	public class event implements ActionListener {

		public void actionPerformed(ActionEvent e) {
			button.setVisible(false);
			startTime = System.currentTimeMillis();

			// starting the trials Trial 
			trial_number = 0;
			// starting the experiment after 1 second of clicking the strat bottom
			stimulusAtTime_fixation(1000); 
		}
	}


	// set the text to s on the screen at time t after calling in the experiment and write it to text file
	public void stimulusAtTime(int t,final String s, final String information){

		stimulusTimer = new Timer(t, new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent arg0) {
				num.setText(s);
				if (information.length() >0){
					long endTime   = System.currentTimeMillis();
					long totalTime = endTime - startTime;
					print_line.println(totalTime + "\t" + information);
				}
			}
		});
		stimulusTimer.setRepeats(false); // Only execute once
		stimulusTimer.start();

	}

	public void stimulusAtTime_fixation(int t){

		print_line.flush();
		if (trial_number >=30){
			num.setText("END");	
		}
		else{
			stimulusTimer = new Timer(t, new ActionListener() {
				@Override
				public void actionPerformed(ActionEvent arg0) {
					num.setText("<html>"+"*"+"</html>");
					// writing to file:
					long endTime   = System.currentTimeMillis();
					long totalTime = endTime - startTime;
					print_line.println(totalTime + "\t" + "Fixation "+ info[trial_number]);

					stimulusAtTime_study(2000);
				}
			});
			stimulusTimer.setRepeats(false); // Only execute once
			stimulusTimer.start();
		}
	}

	public void stimulusAtTime_study(int t){

		stimulusTimer = new Timer(t, new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent arg0) {
				num.setText("<html>"+study[trial_number][0]+"<br/><center> - </center>"+
						"<br/> <center>"+study[trial_number][1]+"</center></html>");
				// writing to file:
				long endTime   = System.currentTimeMillis();
				long totalTime = endTime - startTime;
				print_line.println(totalTime + "\t" + "Study --> " +study[trial_number][0]+"-" +study[trial_number][1]);


				stimulusAtTime_warning(6000);
			}
		});
		stimulusTimer.setRepeats(false); // Only execute once
		stimulusTimer.start();

	}

	public void stimulusAtTime_warning(int t){

		stimulusTimer = new Timer(t, new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent arg0) {
				num.setText("<html>"+ "+" +"</html>");

				long endTime   = System.currentTimeMillis();
				long totalTime = endTime - startTime;
				print_line.println(totalTime + "\t" + "Warning --> +");

				stimulusAtTime_probe(TIME_BETWEEN_STUDY_AND_PROBE);
			}
		});
		stimulusTimer.setRepeats(false); // Only execute once
		stimulusTimer.start();

	}

	public void stimulusAtTime_probe(int t){

		key =false;
		stimulusTimer = new Timer(t, new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent arg0) {
				num.setText("<html>"+probe_feedback[trial_number][0]+"</html>");


				long endTime   = System.currentTimeMillis();
				long totalTime = endTime - startTime;
				print_line.println(totalTime + "\t" + "PROBE = "+probe_feedback[trial_number][0]);



				addKeyListener(respond_to_probe);

				Timer checkAfter6sec = new Timer(6000, new ActionListener() {
					@Override
					public void actionPerformed(ActionEvent arg0) {
						if (key == false){
							stimulusAtTime(0,"","");
							stimulusAtTime_feedback(100);
						}

					}
				});
				checkAfter6sec.setRepeats(false); // Only execute once
				checkAfter6sec.start();
			}
		});
		stimulusTimer.setRepeats(false); // Only execute once
		stimulusTimer.start();

	}

	public void stimulusAtTime_feedback(int t){

		removeKeyListener(respond_to_probe);
		stimulusTimer = new Timer(t, new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent arg0) {
				num.setText("<html>"+probe_feedback[trial_number][1]+"</html>");

				long endTime   = System.currentTimeMillis();
				long totalTime = endTime - startTime;
				print_line.println(totalTime + "\t" + "Feed Back = "+probe_feedback[trial_number][1]);

				distractorAtTime(2000);
			}
		});
		stimulusTimer.setRepeats(false); // Only execute once
		stimulusTimer.start();

	}

	// the distractor : 1-Back task for 10 sec and it will update the timing (time)
	public void distractorAtTime(int t) {
		Collections.shuffle(N_BACK);

		String stimulus=""; 
		for (int i = 0; i < NUMBER_OF_N_BACK_STIMULI; i++) {
			stimulus = N_BACK.get(randomInteger(1, 10, random));
			stimulusAtTime(t,stimulus, "N-Back :" + stimulus);
			stimulusAtTime(t+1000,"","");
			t+= 1200;
		} 

		trial_number++; // end of a trial:  adding 1 to the number of trials and going back to the fixation 
		stimulusAtTime_fixation(t);

	}


	// next 3 function are for capturing the key input and write them on a text file
	@Override
	public void keyPressed(KeyEvent e) {
		String r = KeyEvent.getKeyText(e.getKeyCode());
		if (r.equals("J")){
			long endTime   = System.currentTimeMillis();
			long totalTime = endTime - startTime;
			print_line.println(totalTime + "\t"+ "*key Pressed* ="+ "1");}
		else if (r.equals("K")){
			long endTime   = System.currentTimeMillis();
			long totalTime = endTime - startTime;
			print_line.println(totalTime + "\t"+ "*key Pressed* ="+ "2");}
		else if (r.equals("L")){
			long endTime   = System.currentTimeMillis();
			long totalTime = endTime - startTime;
			print_line.println(totalTime + "\t"+ "*key Pressed* ="+ "3");}
		else if (r.equals(";")){
			long endTime   = System.currentTimeMillis();
			long totalTime = endTime - startTime;
			print_line.println(totalTime + "\t"+ "*key Pressed* ="+ "4");}
		else if (r.equals('?')){
			long endTime   = System.currentTimeMillis();
			long totalTime = endTime - startTime;
			print_line.println(totalTime + "\t"+ "*key Pressed* ="+ "foil/1-back");}
		else{
			long endTime   = System.currentTimeMillis();
			long totalTime = endTime - startTime;
			print_line.println(totalTime + "\t"+ "*key Pressed* ="+ KeyEvent.getKeyText(e.getKeyCode()));}
	}
	@Override
	public void keyReleased(KeyEvent e) {
		if (e.getKeyCode() == KeyEvent.VK_ESCAPE){
			print_line.flush();
			System.exit(0);
		}
	}

	@Override
	public void keyTyped(KeyEvent e) {

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
		Paired_Block2 environment = new Paired_Block2();
		environment.setExtendedState(Frame.MAXIMIZED_BOTH);
		environment.setBackground(Color.BLACK);

	}


}