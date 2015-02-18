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
	Timer timer;
	JPanel buttonPanel;

	Random random;

	final int NUMBER_OF_TRIALS = 10;
	final int TIME_BETWEEN_STIMULUS = 2500; // Time in millisecond
	final int TIME_FOR_STIMULUS_APPERANCE = 1000;
	int counter;

	public Environment() {

		setLayout(new GridLayout(3, 3, 5, 5));

		buttonPanel = new JPanel();

		button = new JButton("Start");
		button.setPreferredSize(new Dimension(200, 50));
		button.setBackground(Color.red);
		//button.setOpaque(true);
		buttonPanel.add(button, BorderLayout.NORTH);
		add(buttonPanel);

		add(new Convas());
		add(new Convas());
		add(new Convas());

		num = new JLabel();
		num.setFont(new Font("Serif", Font.PLAIN, 150));
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

		TimeClass tc = new TimeClass();
		timer = new Timer(TIME_BETWEEN_STIMULUS, tc);

		random = new Random();
	}

	public class event implements ActionListener {

		public void actionPerformed(ActionEvent e) {

			counter = NUMBER_OF_TRIALS;
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
			timer.start();

		}

	}

	public class TimeClass implements ActionListener {

		public TimeClass() {

		}

		public void actionPerformed(ActionEvent tc) {
			counter--;

			if (counter >= 1) {
				num.setText("" + randomInteger(1, 10, random));
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
				timer.stop();
				num.setText("DONE");
				Toolkit.getDefaultToolkit().beep();
			}
		}

	}

	// returns a random int between start and end
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