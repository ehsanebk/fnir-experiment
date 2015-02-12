/**
 * @author Ehsan Khosroshahi
 *
 */

import java.awt.*;
import java.awt.event.*;
import javax.swing.*;

public class Environment extends JPanel {
	Color color;
	public Environment() {
		this.color = Color.black;
	}

	public void paintComponent(Graphics g) {
		int width = getWidth();
		int height = getHeight();
		g.setColor(Color.black);
		g.drawOval(0, 0, width, height);
		g.drawString("3", 200,200);
	}

	public static void main(String args[]) {
		JFrame frame = new JFrame("Oval Sample");
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		
		
		frame.add(new Environment());
		frame.setSize(900, 600);
		frame.setVisible(true);
		
	}
}