import java.awt.Choice;
import java.awt.Color;
import java.awt.Dimension;
import java.awt.Rectangle;

import javax.swing.Box;
import javax.swing.BoxLayout;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextArea;

public class TextInputContainer {
	
	private JPanel labelContainer;
	private JPanel textContainer;
	private JPanel mainContainer;
	private JLabel label;
	private JTextArea textArea;
	private BoxLayout layout;
	
	private final Color BOXCOLOR = new Color(51, 153, 255);

	
	public TextInputContainer(String lableText, String exampleText, Rectangle bounds) {
		mainContainer = new JPanel();
		labelContainer = new JPanel();
		textContainer = new JPanel();
		
		mainContainer.setBackground(BOXCOLOR);
		labelContainer.setBackground(BOXCOLOR);
		textContainer.setBackground(BOXCOLOR);
		
		label = new JLabel(lableText);
		textArea = new JTextArea(exampleText);
		textArea.setLineWrap(true);
		textArea.setColumns(42);
		textArea.setRows(3);

		layout = new BoxLayout(mainContainer, BoxLayout.Y_AXIS);
		mainContainer.setLayout(layout);
		mainContainer.setBounds(bounds);
		
		labelContainer.add(label);
		textContainer.add(textArea);
		mainContainer.add(labelContainer);
		mainContainer.add(textContainer);		
	}
	
	public JPanel getContainer() {
		return mainContainer;
	}
	
	public JLabel getLabel() {
		return label;
	}
	
	public JTextArea getTextArea() {
		return textArea;
	}

}
