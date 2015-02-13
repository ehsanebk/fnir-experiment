/**
 * @author Ehsan Khosroshahi
 *
 */

import java.awt.*;
import java.awt.event.*;

import javax.swing.*;

public class Environment extends JFrame {

	JLabel num;
	JButton button;
	JTextField tf;
	Timer timer;

	final int NUMBER_OF_TRIALS = 10;

	public Environment() {

		setLayout(new GridLayout(2, 2, 5, 5));

		button = new JButton("Start");
		add(button);

		tf = new JTextField();
		add(tf);

		add(new Convas());

		setSize(900, 600);

		setVisible(true);
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

		event e = new event();
		button.addActionListener(e);
	}

	public class event implements ActionListener {

		public void actionPerformed(ActionEvent e) {
			TimeClass tc = new TimeClass();
			timer = new Timer(1000, tc);
			timer.start();
			System.out.println("ended");

		}

	}

	public class TimeClass implements ActionListener {
		int counter = NUMBER_OF_TRIALS;

		public TimeClass() {

		}

		public void actionPerformed(ActionEvent tc) {
			counter--;
			
			if (counter >= 1) {
				tf.setText("" + counter);
			} else {
				timer.stop();
				tf.setText("DONE");
				Toolkit.getDefaultToolkit().beep();
			}
		}

	}

	public static void main(String args[]) {
		Environment environment = new Environment();
	}
}