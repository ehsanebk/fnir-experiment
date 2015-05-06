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

import com.sun.corba.se.impl.oa.poa.ActiveObjectMap.Key;

import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Random;
import java.io.FileWriter;
import java.io.PrintWriter;
import java.io.IOException;


//5230 *key Pressed* =J		1
//5960 *key Pressed* =K		2
//6400 *key Pressed* =L		3
//6710 *key Pressed* =;		4
//7490 *key Pressed* =?		foil or 1-back

public class Paired_Block1 extends JFrame implements KeyListener{

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

	// writing to a file for each participant
	String fileName = "./Paired_Block_1tastingForTImeing.txt";
	boolean append_to_file  = false;
	FileWriter write; 
	PrintWriter print_line; 

	List<String> n_Back  = Arrays.asList("COW","FUN","ACT","KEY","PEN","ZOO","CAR","LEG","CAT"
			,"DOG","FAT","GUN", "WAR", "ANT", "SUN","MAN");

	String[][] study={
			// study            
			{"time", "1"},		//  **TRIAL  1**
			{"year", "1"},		//  **TRIAL  2**
			{"work", "3"},		//  **TRIAL  3**
			{"life", "1"},		//  **TRIAL  4**
			{"case", "3"},		//  **TRIAL  5**
			{"part", "1"},		//  **TRIAL  6**
			{"area", "3"},		//  **TRIAL  7**
			{"hand", "3"},		//  **TRIAL  8**
			{"week", "2"},		//  **TRIAL  9**
			{"word", "3"},		//  **TRIAL 10**
			{"fact", "2"},		//  **TRIAL 11**
			{"head", "4"},		//  **TRIAL 12**
			{"side", "3"},		//  **TRIAL 13**
			{"home", "2"},      //  **TRIAL 14**
			{"book", "3"},		//  **TRIAL 15**
			{"form", "1"},		//  **TRIAL 16**
			{"room", "4"},		//  **TRIAL 17**
			{"idea", "3"},		//  **TRIAL 18**
			{"name", "1"},		//  **TRIAL 19**
			{"body", "1"},		//  **TRIAL 20**
			{"line", "4"},		//  **TRIAL 21**
			{"face", "2"},		//  **TRIAL 22**
			{"road", "2"},		//  **TRIAL 23**
			{"rate", "4"},		//  **TRIAL 24**
			{"door", "1"},		//  **TRIAL 25**
			{"hour", "1"},		//  **TRIAL 26**
			{"view", "4"},		//  **TRIAL 27**
			{"term", "3"},		//  **TRIAL 28**
			{"city", "3"},		//  **TRIAL 29**
			{"need", "1"},		//  **TRIAL 30**
			{"kind", "foil"},				// foils 1
			{"cost", "foil"},				// foils 2
			{"type", "foil"},				// foils 3	
			{"girl", "foil"},				// foils 4
			{"mind", "foil"},				// foils 5
			{"bank", "foil"},				// foils 6
			{"sort", "foil"},				// foils 7
			{"team", "foil"},				// foils 8
			{"town", "foil"},				// foils 9
			{"plan", "foil"}};				// foils 10

	String[][] probe_feedback ={
			//probe and feedback
			{"time", "1"},	   //  **TRIAL  1** study:time-1 probe:time feedback:1 (0 trial delay)
			{"kind", "foil"},	   //  **TRIAL  2** study:year-1 probe:kind feedback:3 (foil)
			{"time", "1"},	   //  **TRIAL  3** study:work-3 probe:time feedback:1 (2 trial delay)
			{"work", "3"},	   //  **TRIAL  4** study:life-1 probe:work feedback:3 (1 trial delay)
			{"case", "3"},	   //  **TRIAL  5** study:case-3 probe:case feedback:1 (0 trial delay)
			{"life", "1"},	   //  **TRIAL  6** study:part-1 probe:life feedback:1 (2 trial delay)
			{"area", "3"},	   //  **TRIAL  7** study:area-3 probe:area feedback:3 (0 trial delay)
			{"part", "1"},	   //  **TRIAL  8** study:hand-3 probe:part feedback:1 (2 trial delay)
			{"year", "1"},	   //  **TRIAL  9** study:week-2 probe:year feedback:1 (7 trial delay)
			{"hand", "3"},	   //  **TRIAL 10** study:word-3 probe:hand feedback:3 (2 trial delay)
			{"week", "2"},	   //  **TRIAL 11** study:fact-2 probe:week feedback:2 (2 trial delay)
			{"cost", "foil"},	   //  **TRIAL 12** study:head-4 probe:cost feedback:3 (foil)
			{"fact", "2"},	   //  **TRIAL 13** study:side-3 probe:fact feedback:2 (2 trial delay)
			{"type", "foil"},	   //  **TRIAL 14** study:home-2 probe:time feedback:1 (foil)
			{"book", "3"},	   //  **TRIAL 15** study:book-3 probe:book feedback:3 (0 trial delay)
			{"home", "2"},	   //  **TRIAL 16** study:form-1 probe:home feedback:2 (2 trial delay)
			{"word", "3"},	   //  **TRIAL 17** study:room-4 probe:word feedback:3 (7 trial delay)
			{"girl", "foil"},	   //  **TRIAL 18** study:idea-3 probe:girl feedback:3 (foil)
			{"head", "4"},	   //  **TRIAL 19** study:name-1 probe:head feedback:4 (7 trial delay)
			{"name", "3"},	   //  **TRIAL 20** study:body-1 probe:name feedback:3 (1 trial delay)
			{"line", "4"},	   //  **TRIAL 21** study:line-4 probe:line feedback:4 (0 trial delay)
			{"form", "1"},	   //  **TRIAL 22** study:face-2 probe:form feedback:1 (6 trial delay)
			{"mind", "foil"},	   //  **TRIAL 23** study:road-2 probe:mind feedback:3 (foil)
			{"rate", "4"},	   //  **TRIAL 24** study:rate-4 probe:rate feedback:4 (0 trial delay)
			{"idea", "1"},	   //  **TRIAL 25** study:door-1 probe:idea feedback:1 (7 trial delay)
			{"hour", "1"},	   //  **TRIAL 26** study:hour-1 probe:hour feedback:1 (0 trial delay)
			{"bank", "foil"},	   //  **TRIAL 27** study:view-4 probe:bank feedback:1 (foil)
			{"term", "3"},	   //  **TRIAL 28** study:term-3 probe:term feedback:3 (0 trial delay)
			{"road", "2"},	   //  **TRIAL 29** study:city-3 probe:road feedback:2 (6 trial delay)
			{"city", "3"}};    //  **TRIAL 30** study:need-1 probe:city feedback:3 (1 trial delay)

	String [] info ={
			"**TRIAL  1** study:time-1 probe:time feedback:1 (0 trial delay)" ,
			"**TRIAL  2** study:year-1 probe:kind feedback:foil (foil)",
			"**TRIAL  3** study:work-3 probe:time feedback:1 (2 trial delay)",
			"**TRIAL  4** study:life-1 probe:work feedback:3 (1 trial delay)",
			"**TRIAL  5** study:case-3 probe:case feedback:1 (0 trial delay)",
			"**TRIAL  6** study:part-1 probe:life feedback:1 (2 trial delay)",
			"**TRIAL  7** study:area-3 probe:area feedback:3 (0 trial delay)",
			"**TRIAL  8** study:hand-3 probe:part feedback:1 (2 trial delay)",
			"**TRIAL  9** study:week-2 probe:year feedback:1 (7 trial delay)",
			"**TRIAL 10** study:word-3 probe:hand feedback:3 (2 trial delay)",
			"**TRIAL 11** study:fact-2 probe:week feedback:2 (2 trial delay)",
			"**TRIAL 12** study:head-4 probe:cost feedback:foil (foil)",
			"**TRIAL 13** study:side-3 probe:fact feedback:2 (2 trial delay)",
			"**TRIAL 14** study:home-2 probe:time feedback:foil (foil)",
			"**TRIAL 15** study:book-3 probe:book feedback:3 (0 trial delay)",
			"**TRIAL 16** study:form-1 probe:home feedback:2 (2 trial delay)",
			"**TRIAL 17** study:room-4 probe:word feedback:3 (7 trial delay)",
			"**TRIAL 18** study:idea-3 probe:girl feedback:foil (foil)",
			"**TRIAL 19** study:name-1 probe:head feedback:4 (7 trial delay)",
			"**TRIAL 20** study:body-1 probe:name feedback:3 (1 trial delay)",
			"**TRIAL 21** study:line-4 probe:line feedback:4 (0 trial delay)",
			"**TRIAL 22** study:face-2 probe:form feedback:1 (6 trial delay)",
			"**TRIAL 23** study:road-2 probe:mind feedback:foil (foil)",
			"**TRIAL 24** study:rate-4 probe:rate feedback:4 (0 trial delay)",
			"**TRIAL 25** study:door-1 probe:idea feedback:1 (7 trial delay)",
			"**TRIAL 26** study:hour-1 probe:hour feedback:1 (0 trial delay)",
			"**TRIAL 27** study:view-4 probe:bank feedback:foil (foil)",
			"**TRIAL 28** study:term-3 probe:term feedback:3 (0 trial delay)",
			"**TRIAL 29** study:city-3 probe:road feedback:2 (6 trial delay)",
			"**TRIAL 30** study:need-1 probe:city feedback:3 (1 trial delay)"
	};




	public Paired_Block1() {

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
			write = new FileWriter(fileName, append_to_file);
		} catch (IOException e1) {
			e1.printStackTrace();
		}
		print_line = new PrintWriter(write);

		respond_to_probe = new KeyListener() {
			public void keyPressed(KeyEvent e) { }

			public void keyReleased(KeyEvent e) { 
				stimulusAtTime(0,"","");
				stimulusAtTime_feedback(100,"<html>"+probe_feedback[trial_number][1]+"</html>","Feed Back = "+probe_feedback[trial_number][1]);
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
			stimulusAtTime_fixation(1000,"<html>"+"*"+"</html>", "*"); 
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
					print_line.println(totalTime + " " + information);
				}
			}
		});
		stimulusTimer.setRepeats(false); // Only execute once
		stimulusTimer.start();

	}

	public void stimulusAtTime_fixation(int t,final String s, final String information){

		print_line.flush();
		if (trial_number >=30){
			num.setText("END");	
		}
		else{
			stimulusTimer = new Timer(t, new ActionListener() {
				@Override
				public void actionPerformed(ActionEvent arg0) {
					num.setText(s);
					if (information.length() >0){
						long endTime   = System.currentTimeMillis();
						long totalTime = endTime - startTime;
						print_line.println(totalTime + " " + information);
					}
					stimulusAtTime_study(2000,"<html>"+study[trial_number][0]+"<br/><center> - </center>"+
							"<br/> <center>"+study[trial_number][1]+"</center></html>", info[trial_number] );
				}
			});
			stimulusTimer.setRepeats(false); // Only execute once
			stimulusTimer.start();
		}
	}

	public void stimulusAtTime_study(int t,final String s, final String information){

		stimulusTimer = new Timer(t, new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent arg0) {
				num.setText(s);
				if (information.length() >0){
					long endTime   = System.currentTimeMillis();
					long totalTime = endTime - startTime;
					print_line.println(totalTime + " " + information);
				}

				stimulusAtTime_warning(6000,"<html>"+ "+" +"</html>", "Study --> +");
			}
		});
		stimulusTimer.setRepeats(false); // Only execute once
		stimulusTimer.start();

	}

	public void stimulusAtTime_warning(int t,final String s, final String information){

		stimulusTimer = new Timer(t, new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent arg0) {
				num.setText(s);
				if (information.length() >0){
					long endTime   = System.currentTimeMillis();
					long totalTime = endTime - startTime;
					print_line.println(totalTime + " " + information);
				}
				stimulusAtTime_probe(6000,"<html>"+probe_feedback[trial_number][0]+"</html>","Probe = "+probe_feedback[trial_number][0] );
			}
		});
		stimulusTimer.setRepeats(false); // Only execute once
		stimulusTimer.start();

	}
	public void stimulusAtTime_probe(int t,final String s, final String information){

		key =false;
		stimulusTimer = new Timer(t, new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent arg0) {
				num.setText(s);

				if (information.length() >0){
					long endTime   = System.currentTimeMillis();
					long totalTime = endTime - startTime;
					print_line.println(totalTime + " " + information);
				}


				addKeyListener(respond_to_probe);

				Timer checkAfter6sec = new Timer(6000, new ActionListener() {
					@Override
					public void actionPerformed(ActionEvent arg0) {
						if (key == false){
							stimulusAtTime(0,"","");
							stimulusAtTime_feedback(100,"<html>"+probe_feedback[trial_number][1]+"</html>","Feed Back = "+probe_feedback[trial_number][1]);
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

	public void stimulusAtTime_feedback(int t,final String s, final String information){

		removeKeyListener(respond_to_probe);
		stimulusTimer = new Timer(t, new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent arg0) {
				num.setText(s);
				if (information.length() >0){
					long endTime   = System.currentTimeMillis();
					long totalTime = endTime - startTime;
					print_line.println(totalTime + " " + information);
				}
				distractorAtTime(2000);
			}
		});
		stimulusTimer.setRepeats(false); // Only execute once
		stimulusTimer.start();

	}

	// the distractor : 1-Back task for 10 sec and it will update the timing (time)
	public void distractorAtTime(int t) {
		Collections.shuffle(n_Back);

		String stimulus=""; 
		for (int i = 0; i < 10; i++) {
			stimulus = n_Back.get(randomInteger(1, 10, random));
			stimulusAtTime(t,stimulus, "N-Back :" + stimulus);
			stimulusAtTime(t+1000,"","");
			t+= 1200;
		} 

		trial_number++; // end of a trial:  adding 1 to the number of trials and going back to the fixation 
		stimulusAtTime_fixation(t,"<html>"+"*"+"</html>", "Fixation --> *");

	}


	// next 3 function are for capturing the key input and write them on a text file
	@Override
	public void keyPressed(KeyEvent e) {
		String r = KeyEvent.getKeyText(e.getKeyCode());
		if (r.equals("J")){
			long endTime   = System.currentTimeMillis();
			long totalTime = endTime - startTime;
			print_line.println(totalTime + " "+ "*key Pressed* ="+ "1");}
		else if (r.equals("K")){
			long endTime   = System.currentTimeMillis();
			long totalTime = endTime - startTime;
			print_line.println(totalTime + " "+ "*key Pressed* ="+ "2");}
		else if (r.equals("L")){
			long endTime   = System.currentTimeMillis();
			long totalTime = endTime - startTime;
			print_line.println(totalTime + " "+ "*key Pressed* ="+ "3");}
		else if (r.equals(";")){
			long endTime   = System.currentTimeMillis();
			long totalTime = endTime - startTime;
			print_line.println(totalTime + " "+ "*key Pressed* ="+ "4");}
		else if (r.equals('?')){
			long endTime   = System.currentTimeMillis();
			long totalTime = endTime - startTime;
			print_line.println(totalTime + " "+ "*key Pressed* ="+ "foil/1-back");}
		else{
			long endTime   = System.currentTimeMillis();
			long totalTime = endTime - startTime;
			print_line.println(totalTime + " "+ "*key Pressed* ="+ KeyEvent.getKeyText(e.getKeyCode()));}
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
		Paired_Block1 environment = new Paired_Block1();
		environment.setExtendedState(Frame.MAXIMIZED_BOTH);
		environment.setBackground(Color.BLACK);

	}


}