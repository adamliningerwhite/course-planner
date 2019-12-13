import java.awt.Choice;
import java.awt.Color;

import javax.swing.BoxLayout;
import javax.swing.JLabel;
import javax.swing.JPanel;

import java.awt.Rectangle;

public class ChoiceInputContainer {
	
	private JPanel container;
	private JLabel label;
	private Choice choices;
	private BoxLayout layout;
	
	private final Color BOXCOLOR = new Color(51, 153, 255);
	

	public ChoiceInputContainer(String lableText, String[] choicesText, Rectangle bounds) {
		container = new JPanel();
		label = new JLabel(lableText);
		choices = new Choice();
		layout = new BoxLayout(container, BoxLayout.Y_AXIS);
		container.setBounds(bounds);
		container.setLayout(layout);
		container.setBackground(BOXCOLOR);
		
		container.add(label);
		container.add(choices);

		initializeChoices(choicesText);
		
	}

	public void initializeChoices(String[] choiceText) {
		
		for(int i = 0; i < choiceText.length; i++) {
			choices.add(choiceText[i]);
		}
		
	}
	
	public JPanel getContainer() {
		return container;
	}
	
	public JLabel getLabel() {
		return label;
	}
	
	public Choice getChoice() {
		return choices;
	}

}
