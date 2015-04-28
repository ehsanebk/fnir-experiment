/**
 * @author Ehsan Khosroshahi
 *
 */

import java.awt.*;
import java.awt.event.*;

import javax.swing.*;

import java.util.Random;

public class Environment extends JFrame {

	JLabel num;
	JButton button;
	JTextField tf;
	Timer timerFirstBlock_blank;
	Timer timerFirstBlock_0back;
	Timer timerFirstBlock_1back;
	Timer timerFirstBlock_2back;
	JPanel buttonPanel;

	Random random;

	final int NUMBER_OF_SESSIONS = 2;
	final int NUMBER_OF_TRIALS = 10;
	final int TIME_BETWEEN_STIMULUS = 2500; // Time in millisecond
	final int TIME_FOR_STIMULUS_APPERANCE = 1000;
	int counter;
	
	int[] fristBlock_Blank = {0,4,3,7,5,9,8,1,2,6};
	int[] fristBlock_0Back = {8,7,4,5,2,3,1,9,6,0};
	int[] fristBlock_1Back = {4,7,0,9,5,3,6,2,1,8};
	int[] fristBlock_2Back = {1,6,7,0,3,9,4,5,2,8};
	
	int[] secondBlock_Blank = {3,5,8,1,9,6,0,4,2,7};
	int[] secondBlock_0Back = {7,3,6,4,0,5,8,1,9,2};
	int[] secondBlock_1Back = {6,5,7,0,1,2,9,8,3,4};
	int[] secondBlock_2Back = {9,0,1,7,3,2,6,8,4,5};
	
	int[] thirdBlock_Blank = {9,5,1,7,8,3,4,6,0,2};
	int[] thirdBlock_0Back = {2,5,3,4,8,0,7,1,9,6};
	int[] thirdBlock_1Back = {9,2,5,3,7,8,1,6,0,4};
	int[] thirdBlock_2Back = {7,6,0,2,1,3,5,9,4,8};
	
	
	
	public Environment() {

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
		num.setFont(new Font("Serif", Font.PLAIN, 100));
		num.setHorizontalAlignment(SwingConstants.CENTER);
		num.setBorder(BorderFactory.createLineBorder(Color.BLUE, 5));
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
		
		

		TimeZero tc0 = new TimeZero();
		TimeFirst tc1 = new TimeFirst();
		TimeSecond tc2 = new TimeSecond();
		TimeThird tc3 = new TimeThird();
		timerFirstBlock_blank = new Timer(TIME_BETWEEN_STIMULUS, tc0);
		timerFirstBlock_0back = new Timer(TIME_BETWEEN_STIMULUS, tc1);
		timerFirstBlock_1back = new Timer(TIME_BETWEEN_STIMULUS, tc2);
		timerFirstBlock_2back = new Timer(TIME_BETWEEN_STIMULUS, tc3);
		

		//random = new Random();
	}
	
	public void stimulusAtTime(int t,final String s){
		
		Timer stimulusTimer = new Timer(t,
				new ActionListener() {
					@Override
					public void actionPerformed(ActionEvent arg0) {
						num.setText("<html> var1 <br/> var2 </html>");
					}
				});
		stimulusTimer.setRepeats(false); // Only execute once
		stimulusTimer.start();
		
	}
	
	
	public class event implements ActionListener {

		public void actionPerformed(ActionEvent e) {
			stimulusAtTime(0, "eeee");
			button.setText("STOP");
			counter = 0;
			num.setText("START");
			Timer stimulusTimer = new Timer(TIME_FOR_STIMULUS_APPERANCE,
					new ActionListener() {
						@Override
						public void actionPerformed(ActionEvent arg0) {
							num.setText("");
						}
					});
			stimulusTimer.setRepeats(false); // Only execute once
			stimulusTimer.start();
			
			stimulusAtTime(0, "eeee");
			
			timerFirstBlock_blank.start();
			
			timerFirstBlock_0back.setInitialDelay(35000);
			timerFirstBlock_0back.start();

			timerFirstBlock_1back.setInitialDelay(70000);
			timerFirstBlock_1back.start();

			timerFirstBlock_2back.setInitialDelay(105000);
			timerFirstBlock_2back.start();

		}

	}

	public class TimeZero implements ActionListener {

		public TimeZero() {

		}

		public void actionPerformed(ActionEvent tc0) {
			counter++;

			if (counter <10) {
				num.setText("" + fristBlock_Blank[counter]);
				Timer stimulusTimer = new Timer(TIME_FOR_STIMULUS_APPERANCE,
						new ActionListener() {
							@Override
							public void actionPerformed(ActionEvent arg0) {
								num.setText("");
							}
						});
				stimulusTimer.setRepeats(false); // Only execute once
				stimulusTimer.start();
			} else {
				timerFirstBlock_blank.stop();
				num.setText("DONE");
				Toolkit.getDefaultToolkit().beep();
			}
		}

	}

	public class TimeFirst implements ActionListener {

		public TimeFirst() {

		}

		public void actionPerformed(ActionEvent tc1) {
			counter++;

			if (counter <20) {
				num.setText("" + fristBlock_0Back[counter%10]);
				Timer stimulusTimer = new Timer(TIME_FOR_STIMULUS_APPERANCE,
						new ActionListener() {
							@Override
							public void actionPerformed(ActionEvent arg0) {
								num.setText("");
							}
						});
				stimulusTimer.setRepeats(false); // Only execute once
				stimulusTimer.start();
			} else {
				timerFirstBlock_0back.stop();
				num.setText("DONE");
				Toolkit.getDefaultToolkit().beep();
			}
		}

	}
	public class TimeSecond implements ActionListener {

		public TimeSecond() {

		}

		public void actionPerformed(ActionEvent tc2) {
			counter++;

			if (counter <30) {
				num.setText("" + fristBlock_1Back[counter%10]);
				Timer stimulusTimer = new Timer(TIME_FOR_STIMULUS_APPERANCE,
						new ActionListener() {
							@Override
							public void actionPerformed(ActionEvent arg0) {
								num.setText("");
							}
						});
				stimulusTimer.setRepeats(false); // Only execute once
				stimulusTimer.start();
			} else {
				timerFirstBlock_1back.stop();
				num.setText("DONE");
				Toolkit.getDefaultToolkit().beep();
			}
		}

	}
	
	public class TimeThird implements ActionListener {

		public TimeThird() {

		}

		public void actionPerformed(ActionEvent tc3) {
			counter++;

			if (counter <40) {
				num.setText("" + fristBlock_2Back[counter%10]);
				Timer stimulusTimer = new Timer(TIME_FOR_STIMULUS_APPERANCE,
						new ActionListener() {
							@Override
							public void actionPerformed(ActionEvent arg0) {
								num.setText("");
							}
						});
				stimulusTimer.setRepeats(false); // Only execute once
				stimulusTimer.start();
			} else {
				timerFirstBlock_1back.stop();
				num.setText("DONE");
				Toolkit.getDefaultToolkit().beep();
			}
		}

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