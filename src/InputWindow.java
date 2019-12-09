import java.awt.BorderLayout;
import java.awt.Choice;
import java.awt.Color;
import java.awt.Dimension;
import java.awt.EventQueue;
import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;
import javax.swing.JLabel;
import javax.swing.BoxLayout;
import javax.swing.JButton;
import javax.swing.JTextField;
import javax.swing.border.LineBorder;

public class InputWindow {

	private final int FRAMEXPOS = 100;
	private final int FRAMEYPOS = 100;
	
	private final int FRAMEWIDTH = 600;
	private final int FRAMEHEIGHT = 750;
	
	private final int PANELWIDTH = 500;
	private final int PANELHEIGHT = 100;
	
	private final int PADDING = 25;
	
	private JFrame frame;
	
	private JScrollPane scrollPane;
	
	private JPanel topContainer;
	private JLabel uiTitle;
	
	private JPanel bottomContainer;
	private JButton submitButton;
	
	private JPanel mainContainer;
	private JPanel majorContainer;
	private JPanel coreClassesContainer;
	private JPanel electiveClassesContainer;
	private JPanel previousCoursesContainer;
	private JPanel busyContainer;
	private JPanel numClassesContainer;
	private JPanel workloadContainer;
	private JPanel ratingContainer;
	
	private JLabel majorLabel;
	private JLabel coreClassesLabel;
	private JLabel electiveClassesLabel;
	private JLabel previousCoursesLabel;
	private JLabel busyLabel;
	private JLabel numClassesLabel;
	private JLabel workloadLabel;
	private JLabel ratingLabel;
	
	private Choice majorChoices;
	private Choice numCoreClassesChoices;
	private Choice numElectiveClassesChoices;
	private JTextField previousCoursesTextField;
	private JTextField busyTextField;
	private Choice numClassesChoice;
	private Choice maxWorkloadChoice;
	private Choice minRatingChoice;
	
	
	//private Choice genericChoice = new Choice("0")
	
	//private BoxLayout layout = new BoxLayout(new JPanel(), BoxLayout.Y_AXIS);
	
	private final Font TITLEFONT = new Font("Courier", Font.BOLD, 24);
	private final Font MAINFONT = new Font("Courier", Font.BOLD, 14);
	
	private String[] majorList = {"Computer Science", "Math", "Economics", "Politics"};
	private String[] numCourseList = {"1", "2", "3", "4", "5", "6"};
	private String[] workloadList = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "10", 
										"11", "12", "13", "14", "15", "16", "17", "18", "19", "20",
										"21", "22", "23", "24", "25"};
	private String[] ratingList = {"1", "1.5", "2", "2.5", "3", "3.5", "4", "4.5", "5"};
	
	private final Color MAINCOLOR = new Color(255, 255, 255);
	private final Color BOXCOLOR = new Color(51, 153, 255);
	

	/**
	 * Create the application.
	 */
	public InputWindow() {
		initialize();
	}
	
	public Choice initializeChoices(Choice choice, String[] list) {
		
		for(int i = 0; i < list.length; i++) {
			choice.add(list[i]);
		}
		
		return choice;
	}
	
	public void compileInput() {
		System.out.println("major(" + majorChoices.getItem(majorChoices.getSelectedIndex()) + ")");
		System.out.println("num_core(" + numCoreClassesChoices.getItem(numCoreClassesChoices.getSelectedIndex()) + ")");
		System.out.println("num_elective(" + numElectiveClassesChoices.getItem(numElectiveClassesChoices.getSelectedIndex()) + ")");
		
		String[] previousCourses = previousCoursesTextField.getText().split(",");
		for(int i = 0; i < previousCourses.length; i++) {
			System.out.println("taken(" + previousCourses[i].trim() + ")");
		}
		
		String[] busyTimes = busyTextField.getText().split(",");
		for(int i = 0; i < busyTimes.length; i++) {
			System.out.println("taken(" + busyTimes[i].trim() + ")");
		}
		
		System.out.println("num_classes(" + numClassesChoice.getItem(numClassesChoice.getSelectedIndex()) + ")");
		System.out.println("workload(" + maxWorkloadChoice.getItem(maxWorkloadChoice.getSelectedIndex()) + ")");
		System.out.println("rating(" + minRatingChoice.getItem(minRatingChoice.getSelectedIndex()) + ")");
	}
	
	/**
	 * Initialize the contents of the frame.
	 */
	private void initialize() {
		
		frame = new JFrame("Course Planner");
		frame.setVisible(true);
		frame.setSize(FRAMEWIDTH, FRAMEHEIGHT);
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
<<<<<<< HEAD
			
		topContainer = new JPanel();
		topContainer.setBackground(MAINCOLOR);
		
		mainContainer = new JPanel();
		//mainContainer.setSize(FRAMEWIDTH, FRAMEHEIGHT);
		mainContainer.setBackground(Color.WHITE);
		
		scrollPane = new JScrollPane(mainContainer, JScrollPane.VERTICAL_SCROLLBAR_ALWAYS, JScrollPane.HORIZONTAL_SCROLLBAR_NEVER);
		//scrollPane.getViewport().setPreferredSize(new Dimension(FRAMEWIDTH, FRAMEHEIGHT));
=======
				
		JPanel container = new JPanel();
        JScrollPane scrollPane = new JScrollPane(container, JScrollPane.VERTICAL_SCROLLBAR_ALWAYS, JScrollPane.HORIZONTAL_SCROLLBAR_NEVER);
        //container.setPreferredSize(new Dimension(100, 250));
        container.setSize(new Dimension(FRAMEWIDTH, 250));
        container.setLayout(null);
        container.setBackground(Color.WHITE);

        JLabel takenClassLabel = new JLabel("Enter prviously taken courses here");
        takenClassLabel.setBounds(50, 11, 101, 14);
        container.add(takenClassLabel);
        
        JTextField takenClassTextField = new JTextField(16);
        takenClassTextField.setBounds(50, 50, 100, 50);
        takenClassTextField.setBackground(Color.RED);
        container.add(takenClassTextField);

        frame.getContentPane().add(scrollPane);
>>>>>>> e912d8bfe1c6f0479517db3bd2498a1dddc6add4
		
		majorContainer = new JPanel();
		BoxLayout layout = new BoxLayout(majorContainer, BoxLayout.Y_AXIS);
		majorContainer.setLayout(layout);
		majorContainer.setBounds(frame.getX() + PADDING, topContainer.getY() + (2 * PADDING), PANELWIDTH, PANELHEIGHT);
		majorContainer.setBackground(BOXCOLOR);
		
		majorLabel = new JLabel("Enter your major");
		
		
		coreClassesContainer = new JPanel();
		BoxLayout layout2 = new BoxLayout(coreClassesContainer, BoxLayout.Y_AXIS);
		coreClassesContainer.setLayout(layout2);
		coreClassesContainer.setBounds(frame.getX() + PADDING, majorContainer.getY() + majorContainer.getHeight() + PADDING, PANELWIDTH, PANELHEIGHT);
		coreClassesContainer.setBackground(BOXCOLOR);
		
		electiveClassesContainer = new JPanel();
		BoxLayout layout3 = new BoxLayout(electiveClassesContainer, BoxLayout.Y_AXIS);
		electiveClassesContainer.setLayout(layout3);
		electiveClassesContainer.setBounds(frame.getX() + PADDING, coreClassesContainer.getY() + coreClassesContainer.getHeight() + PADDING, PANELWIDTH, PANELHEIGHT);
		electiveClassesContainer.setBackground(BOXCOLOR);
		
		previousCoursesContainer = new JPanel();
		BoxLayout layout4 = new BoxLayout(previousCoursesContainer, BoxLayout.Y_AXIS);
		previousCoursesContainer.setLayout(layout4);
		previousCoursesContainer.setBounds(frame.getX() + PADDING, electiveClassesContainer.getY() + electiveClassesContainer.getHeight() + PADDING, PANELWIDTH, PANELHEIGHT);
		previousCoursesContainer.setBackground(BOXCOLOR);
			
		busyContainer = new JPanel();
		BoxLayout layout5 = new BoxLayout(busyContainer, BoxLayout.Y_AXIS);
		busyContainer.setLayout(layout5);
		busyContainer.setBounds(frame.getX() + PADDING, previousCoursesContainer.getY() + previousCoursesContainer.getHeight() + PADDING, PANELWIDTH, PANELHEIGHT);
		busyContainer.setBackground(BOXCOLOR);
		
		numClassesContainer = new JPanel();
		BoxLayout layout6 = new BoxLayout(numClassesContainer, BoxLayout.Y_AXIS);
		numClassesContainer.setLayout(layout6);
		numClassesContainer.setBounds(frame.getX() + PADDING, busyContainer.getY() + busyContainer.getHeight() + PADDING, PANELWIDTH, PANELHEIGHT);
		numClassesContainer.setBackground(BOXCOLOR);
		
		workloadContainer = new JPanel();
		BoxLayout layout7 = new BoxLayout(workloadContainer, BoxLayout.Y_AXIS);
		workloadContainer.setLayout(layout7);
		workloadContainer.setBounds(frame.getX() + PADDING, numClassesContainer.getY() + numClassesContainer.getHeight() + PADDING, PANELWIDTH, PANELHEIGHT);
		workloadContainer.setBackground(BOXCOLOR);
		
		ratingContainer = new JPanel();
		BoxLayout layout8 = new BoxLayout(ratingContainer, BoxLayout.Y_AXIS);
		ratingContainer.setLayout(layout8);
		ratingContainer.setBounds(frame.getX() + PADDING, workloadContainer.getY() + workloadContainer.getHeight() + PADDING, PANELWIDTH, PANELHEIGHT);
		ratingContainer.setBackground(BOXCOLOR);
		
		bottomContainer = new JPanel();
		bottomContainer.setBackground(MAINCOLOR);		
	
		
		uiTitle = new JLabel("Pomona College Course Planner");
		uiTitle.setFont(TITLEFONT);
		
		majorLabel = new JLabel("What is your major");
		majorLabel.setFont(MAINFONT);
		majorContainer.add(majorLabel);
		
		majorChoices = new Choice();
		initializeChoices(majorChoices, majorList);
		majorContainer.add(majorChoices);
		
		coreClassesLabel = new JLabel("How many core courses do you want to take?");
		coreClassesLabel.setFont(MAINFONT);
		coreClassesContainer.add(coreClassesLabel);
		
		numCoreClassesChoices = new Choice();
		initializeChoices(numCoreClassesChoices, numCourseList);
		coreClassesContainer.add(numCoreClassesChoices);
		
		electiveClassesLabel = new JLabel("How many elective courses do you want to take?");
		electiveClassesLabel.setFont(MAINFONT);
		electiveClassesContainer.add(electiveClassesLabel);
		
		numElectiveClassesChoices = new Choice();
		initializeChoices(numElectiveClassesChoices, numCourseList);
		electiveClassesContainer.add(numElectiveClassesChoices);
		
		previousCoursesLabel = new JLabel("What courses have you completed?");
		previousCoursesLabel.setFont(MAINFONT);
		previousCoursesContainer.add(previousCoursesLabel);
		
		previousCoursesTextField = new JTextField();
		previousCoursesContainer.add(previousCoursesTextField);
		
		busyLabel = new JLabel("When are you busy");
		busyLabel.setFont(MAINFONT);
		busyContainer.add(busyLabel);
		
		busyTextField = new JTextField();
		busyContainer.add(busyTextField);
		
		numClassesLabel = new JLabel("How many courses do you want to enroll in?");
		numClassesLabel.setFont(MAINFONT);
		numClassesContainer.add(numClassesLabel);
		
		numClassesChoice = new Choice();
		initializeChoices(numClassesChoice, numCourseList);
		numClassesContainer.add(numClassesChoice);
		
		workloadLabel = new JLabel("What is your maximum workload?");
		workloadLabel.setFont(MAINFONT);
		workloadContainer.add(workloadLabel);
		
		maxWorkloadChoice = new Choice();
		initializeChoices(maxWorkloadChoice, workloadList);
		workloadContainer.add(maxWorkloadChoice);
		
		ratingLabel = new JLabel("What is your mimimum class rating?");
		ratingLabel.setFont(MAINFONT);
		ratingContainer.add(ratingLabel);
		
		minRatingChoice = new Choice();
		initializeChoices(minRatingChoice, ratingList);
		ratingContainer.add(minRatingChoice);
		
		submitButton = new JButton("Submit");
		submitButton.setFont(MAINFONT);
		
		submitButton.addActionListener(new ActionListener()
	    {
	      public void actionPerformed(ActionEvent e)
	      {
	        compileInput();
	      }
	    });
		
		topContainer.add(uiTitle);
		bottomContainer.add(submitButton);
		
		frame.add(topContainer, BorderLayout.NORTH);
		frame.add(bottomContainer, BorderLayout.SOUTH);
		frame.add(mainContainer);
		frame.add(majorContainer);
		frame.add(coreClassesContainer);
		frame.add(electiveClassesContainer);
		frame.add(previousCoursesContainer);
		frame.add(busyContainer);
		frame.add(numClassesContainer);
		frame.add(workloadContainer);
		frame.add(ratingContainer);
		
		frame.getContentPane().add(scrollPane);
		//frame.add(scrollPane);
		
		
	}
	
	
	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					InputWindow window = new InputWindow();
					window.frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

}