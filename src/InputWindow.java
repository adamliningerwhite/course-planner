import java.awt.BorderLayout;
import java.awt.Choice;
import java.awt.Color;
import java.awt.Dimension;
import java.awt.EventQueue;
import java.awt.Font;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.awt.Rectangle;

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
	
	private final int FRAMEWIDTH = 1200;
	private final int FRAMEHEIGHT = 750;
	
	private final int PANELWIDTH = 500;
	private final int PANELHEIGHT = 50;
	private final int PANELHEIGHT2 = 100;
	
	
	private final int XPADDING = 50;
	private final int YPADDING = 25;
	
	private JFrame frame;
	private JPanel mainContainer;
	
	private ChoiceInputContainer majorContainer;
	private ChoiceInputContainer coreClassesContainer;
	private ChoiceInputContainer electiveClassesContainer;
	private TextInputContainer previousClassesContainer;
	private TextInputContainer busyContainer;
	private ChoiceInputContainer numClassesContainer;
	private ChoiceInputContainer numClassesPerDayContainer;
	private TextInputContainer departmentContainer;
	private TextInputContainer notDepartmentContainer;
	private ChoiceInputContainer workloadContainer;
	private ChoiceInputContainer ratingContainer;
	
	private JPanel topContainer;
	private JLabel uiTitle;
	
	private JPanel bottomContainer;
	private JButton submitButton;
	
	private final Font TITLEFONT = new Font("Courier", Font.BOLD, 24);
	private final Font MAINFONT = new Font("Courier", Font.BOLD, 14);
	
	private String[] majorList = {"csci", "math", "econ", "poli"};
	private String[] numCourseList = {"0", "1", "2", "3", "4", "5", "6"};
	private String[] workloadList = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "10", 
										"11", "12", "13", "14", "15", "16", "17", "18", "19", "20",
										"21", "22", "23", "24", "25"};
	private String[] ratingList = {"1", "1.5", "2", "2.5", "3", "3.5", "4", "4.5", "5"};
	
	private final Color MAINCOLOR = new Color(255, 255, 255);
	

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
	
	public void compileInput() throws IOException {
		BufferedWriter writer = new BufferedWriter(new FileWriter("student-input.lp"));		
		
		writer.write("major(" + majorContainer.getChoice().getItem(majorContainer.getChoice().getSelectedIndex()) + ").\n");
		writer.write("core_num(" + coreClassesContainer.getChoice().getItem(coreClassesContainer.getChoice().getSelectedIndex()) + ").\n");
		writer.write("elective_num(" + electiveClassesContainer.getChoice().getItem(electiveClassesContainer.getChoice().getSelectedIndex()) + ").\n");
		
		if(!previousClassesContainer.getTextArea().getText().equals("")) {
			String[] previousCourses = previousClassesContainer.getTextArea().getText().split(",");
			for(int i = 0; i < previousCourses.length; i++) {
				writer.write("taken(" + previousCourses[i].trim() + ").\n");
				for(int sectionNum = 1; sectionNum < 5; sectionNum++) {
					writer.write("taken(" + previousCourses[i].trim() + "_0" + sectionNum + ").\n");
				}
			}
		}
		
		if(!busyContainer.getTextArea().getText().equals("")) {
			System.out.println("x" + busyContainer.getTextArea().getText() + "x");
			String[] busyTimes = busyContainer.getTextArea().getText().split(",");
			for(int i = 0; i < busyTimes.length; i++) {
				String[] busyTime = busyTimes[i].split("-");
				writer.write("busy(" + busyTime[0].trim() + ", " + busyTime[1].trim() + ", " + busyTime[2].trim() + ").\n");
			}
		}
		
		writer.write("num_classes(" + numClassesContainer.getChoice().getItem(numClassesContainer.getChoice().getSelectedIndex()) + ").\n");
		writer.write("day_max(" + numClassesPerDayContainer.getChoice().getItem(numClassesPerDayContainer.getChoice().getSelectedIndex()) + ").\n");
		
		if(!departmentContainer.getTextArea().getText().equals("")) {
			String[] departments = departmentContainer.getTextArea().getText().split(",");
			for(int i = 0; i < departments.length; i++) {
				String[] department = departments[i].split("-");
				writer.write("desired_num(" + department[0].trim() + ", " + department[1].trim() + ").\n");
			}
		}
		
		if(!notDepartmentContainer.getTextArea().getText().equals("")) {
			String[] notDepartments = notDepartmentContainer.getTextArea().getText().split(",");
			for(int i = 0; i < notDepartments.length; i++) {
				writer.write("forbidden_dept(" + notDepartments[i].trim() + ").\n");
			}
		}
		
		writer.write("max_workload(" + workloadContainer.getChoice().getItem(workloadContainer.getChoice().getSelectedIndex()) + ").\n");
		writer.write("min_rating(" + ratingContainer.getChoice().getItem(ratingContainer.getChoice().getSelectedIndex()) + ").\n");
		
		writer.close();
		
//		String command = "/Users/AdamLiningerWhite/course-planner/course-planner/bin/clingo ../classes.lp ../chooser.lp ../student-input.lp > output.txt";
//		String dir = "/Users/AdamLiningerWhite/course-planner/course-planner/bin/";
//		Runtime.getRuntime().exec(command, null, new File(dir));
		
		ProcessBuilder pb = new ProcessBuilder("bin/clingo", "classes.lp", "chooser.lp");
		pb.directory(new File("/Users/AdamLiningerWhite/course-planner/course-planner"));
		pb.redirectOutput(new File ("/Users/AdamLiningerWhite/course-planner/course-planner/output.txt"));
		Process process = pb.start();
		try {
			System.out.println("Reached");
			process.waitFor();
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("Done");
		
	}
	
	/**
	 * Initialize the contents of the frame.
	 */
	private void initialize() {
		
		frame = new JFrame("Course Planner");
		frame.setVisible(true);
		frame.setSize(FRAMEWIDTH, FRAMEHEIGHT);
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

		topContainer = new JPanel();
		topContainer.setBackground(MAINCOLOR);
		uiTitle = new JLabel("Pomona College Course Planner");
		uiTitle.setFont(TITLEFONT);
		topContainer.add(uiTitle);
		
		mainContainer = new JPanel();
		mainContainer.setBackground(Color.WHITE);
		mainContainer.setLayout(new GridLayout(1,2));
		
		int firstColX = frame.getX() + XPADDING;
		int secondColX = firstColX + PANELWIDTH + XPADDING;
		
		Rectangle majorBounds = new Rectangle(firstColX, topContainer.getY() + (2 * YPADDING), PANELWIDTH, PANELHEIGHT);
		majorContainer = new ChoiceInputContainer("What is your major?", majorList,  majorBounds);
		
		Rectangle coreClassesBounds = new Rectangle(firstColX, ((int) majorBounds.getY()) + ((int) majorBounds.getHeight()) + YPADDING, PANELWIDTH, PANELHEIGHT);
		coreClassesContainer = new ChoiceInputContainer("How many core requirements do you want to satisfy?", numCourseList, coreClassesBounds);
		
		Rectangle electiveClassesBounds = new Rectangle(firstColX, (int) coreClassesBounds.getY() + (int) coreClassesBounds.getHeight() + YPADDING, PANELWIDTH, PANELHEIGHT);
		electiveClassesContainer = new ChoiceInputContainer("How many elective requirements do you want to satisfy?", numCourseList, electiveClassesBounds);
		
		Rectangle previousClassesBounds = new Rectangle(firstColX, (int) electiveClassesBounds.getY() + (int) electiveClassesBounds.getHeight() + YPADDING, PANELWIDTH, PANELHEIGHT2);
		previousClassesContainer = new TextInputContainer("What classes have you taken?", previousClassesBounds);
		
		Rectangle busyBounds = new Rectangle(firstColX, (int) previousClassesBounds.getY() + (int) previousClassesBounds.getHeight() + YPADDING, PANELWIDTH, PANELHEIGHT2);
		busyContainer = new TextInputContainer("What times are you busy or don't want to take class?", busyBounds);
		
		Rectangle numClassesBounds = new Rectangle(secondColX, topContainer.getY() + (2 * YPADDING), PANELWIDTH, PANELHEIGHT);
		numClassesContainer = new ChoiceInputContainer("How many classes do you want to take?", numCourseList, numClassesBounds);
		
		Rectangle numClassesPerDayBounds = new Rectangle(secondColX, (int) numClassesBounds.getY() + (int) numClassesBounds.getHeight() + YPADDING, PANELWIDTH, PANELHEIGHT);
		numClassesPerDayContainer = new ChoiceInputContainer("What is the maximum number of classes you want in a day", numCourseList, numClassesPerDayBounds);
		
		Rectangle departmentBounds = new Rectangle(secondColX, (int) numClassesPerDayBounds.getY() + (int) numClassesPerDayBounds.getHeight() + YPADDING, PANELWIDTH, PANELHEIGHT2);
		departmentContainer = new TextInputContainer("What departments do you want to take classes in and associated number in that department?", departmentBounds);
		
		Rectangle notDepartmentBounds = new Rectangle(secondColX, (int) departmentBounds.getY() + (int) departmentBounds.getHeight() + YPADDING, PANELWIDTH, PANELHEIGHT2);
		notDepartmentContainer = new TextInputContainer("What departments do you not want to take classes in?", notDepartmentBounds);
		
		Rectangle workloadBounds = new Rectangle(secondColX, (int) notDepartmentBounds.getY() + (int) notDepartmentBounds.getHeight() + YPADDING, PANELWIDTH, PANELHEIGHT);
		workloadContainer = new ChoiceInputContainer("What is you maximum workload?", workloadList, workloadBounds);
		
		Rectangle ratingBounds = new Rectangle(secondColX, (int) workloadBounds.getY() + (int) workloadBounds.getHeight() + YPADDING, PANELWIDTH, PANELHEIGHT);
		ratingContainer = new ChoiceInputContainer("What is you minimum class rating?", ratingList, ratingBounds);
		
		bottomContainer = new JPanel();
		bottomContainer.setBackground(MAINCOLOR);
		submitButton = new JButton("Submit");
		submitButton.setFont(MAINFONT);
		bottomContainer.add(submitButton);
		
		frame.add(topContainer, BorderLayout.NORTH);
		frame.add(bottomContainer, BorderLayout.SOUTH);

		frame.add(mainContainer);
		frame.add(majorContainer.getContainer());
		frame.add(coreClassesContainer.getContainer());
		frame.add(electiveClassesContainer.getContainer());
		frame.add(previousClassesContainer.getContainer());
		frame.add(busyContainer.getContainer());
		frame.add(numClassesContainer.getContainer());
		frame.add(numClassesPerDayContainer.getContainer());
		frame.add(departmentContainer.getContainer());
		frame.add(notDepartmentContainer.getContainer());
		frame.add(workloadContainer.getContainer());
		frame.add(ratingContainer.getContainer());		
		frame.add(new JPanel());
		
		submitButton.addActionListener(new ActionListener()
	    {
	      public void actionPerformed(ActionEvent e)
	      {
	        try {
				compileInput();
			} catch (IOException e1) {
				e1.printStackTrace();
			}
	      }
	    });
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