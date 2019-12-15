import java.awt.Choice;
import java.awt.Color;
import java.awt.Dimension;

import javax.swing.BoxLayout;
import javax.swing.JLabel;
import javax.swing.JPanel;

import java.awt.Rectangle;

public class ChoiceInputContainer {
	
	private JPanel labelContainer;
	private JPanel choiceContainer;
	private JPanel mainContainer;
	private JLabel label;
	private Choice choices;
	private BoxLayout layout;
	
	private final Color BOXCOLOR = new Color(51, 153, 255);
	
	public ChoiceInputContainer(String lableText, String[] choicesText, Rectangle bounds) {
		mainContainer = new JPanel();
		labelContainer = new JPanel();
		choiceContainer = new JPanel();
		
		mainContainer.setBackground(BOXCOLOR);
		labelContainer.setBackground(BOXCOLOR);
		choiceContainer.setBackground(BOXCOLOR);
				
		label = new JLabel(lableText);
		choices = new Choice();
		
		layout = new BoxLayout(mainContainer, BoxLayout.Y_AXIS);
		mainContainer.setBounds(bounds);
		mainContainer.setLayout(layout);
		
		labelContainer.add(label);
		choiceContainer.add(choices);
		mainContainer.add(labelContainer);
		mainContainer.add(choiceContainer);

		initializeChoices(choicesText);
	}

	public void initializeChoices(String[] choiceText) {		
		for(int i = 0; i < choiceText.length; i++) {
			choices.add(choiceText[i]);
		}
	}
	
	public JPanel getContainer() {
		return mainContainer;
	}
	
	public JLabel getLabel() {
		return label;
	}
	
	public Choice getChoice() {
		return choices;
	}

}
