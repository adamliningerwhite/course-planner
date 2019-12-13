import java.awt.Choice;
import java.awt.Color;
import java.awt.Rectangle;

import javax.swing.BoxLayout;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextArea;

public class TextInputContainer {
	
	private JPanel container;
	private JLabel label;
	private JTextArea textArea;
	private BoxLayout layout;
	
	private final Color BOXCOLOR = new Color(51, 153, 255);

	
	public TextInputContainer(String lableText, Rectangle bounds) {
		container = new JPanel();
		label = new JLabel(lableText);
		textArea = new JTextArea();
		layout = new BoxLayout(container, BoxLayout.Y_AXIS);
		container.setLayout(layout);
		container.setBounds(bounds);
		
		container.add(label);
		container.add(textArea);
		container.setBackground(BOXCOLOR);
		
	}
	
	public JPanel getContainer() {
		return container;
	}
	
	public JLabel getLabel() {
		return label;
	}
	
	public JTextArea getTextArea() {
		return textArea;
	}

}
