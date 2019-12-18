import java.awt.BorderLayout;
import java.awt.Choice;
import java.awt.Color;
import java.awt.Dimension;
import java.awt.EventQueue;
import java.awt.Font;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.regex.Pattern;
import java.awt.Rectangle;
import java.io.FileReader;
import java.util.regex.Pattern;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;
import javax.swing.JLabel;
import javax.swing.BoxLayout;
import javax.swing.JButton;
import javax.swing.JTextField;
import javax.swing.border.LineBorder;
import javax.swing.plaf.synth.SynthSeparatorUI;

public class InputWindow {

	private final int FRAMEXPOS = 100;
	private final int FRAMEYPOS = 100;
	
	private final int FRAMEWIDTH = 1200;
	private final int FRAMEHEIGHT = 700;
	
	private final int PANELWIDTH = 500;
	private final int PANELHEIGHT = 65;
	private final int PANELHEIGHT2 = 95;
	
	private final int XPADDING = 55;
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
	
	private String[] majorList = {"csci", "math", "econ", "poli", "chem", "hist", "art", "bio", "engl", "psych"};
	private String[] numCourseList = {"0", "1", "2", "3", "4", "5", "6"};
	private String[] workloadList = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "10", 
										"11", "12", "13", "14", "15", "16", "17", "18", "19", "20",
										"21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40"};
	private String[] ratingList = {"1", "1.5", "2", "2.5", "3", "3.5", "4", "4.5", "5"};
	
	private final Color MAINCOLOR = new Color(255, 255, 255);
	
	private String cwd = System.getProperty("user.dir");
	

	/**
	 * Create the application.
	 */
	public InputWindow() {
		initialize();
	}
	
	public void compileInput() throws IOException {

		BufferedWriter writer = new BufferedWriter(new FileWriter(cwd + "/student-input.lp"));
				
		writer.write(parseMajor());
		writer.write(parseCoreRequirements());
		writer.write(parseElectiveRequirements());
		writer.write(parsePreviousClasses());
		writer.write(parseBusyTimes());
		writer.write(parseNumClasses());
		writer.write(parseMaxClassesPerDay());
		writer.write(parseDesiredDepartments());
		writer.write(parseForbiddenDepartments());
		writer.write(parseMaxWorkload());
		writer.write(parseMinRating());
					
		writer.close();
		
		create_schedule();
	}
	
	private void create_schedule() throws IOException {
		ProcessBuilder pb = new ProcessBuilder("./clingo", "classes.lp", "chooser.lp", "student-input.lp");
		pb.directory(new File(cwd));
		pb.redirectOutput(new File (cwd + "/results.txt"));
		Process process = pb.start();
		try {
			System.out.println("Reached");
			process.waitFor();
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("Done");

		String[] pickedClasses = parseOptimum();
		displaySchedule(pickedClasses);
		
	}

	private void displaySchedule(String[] pickedClasses) {
		System.out.println("I am printing results");
		JPanel results = new JPanel();
		BoxLayout layout = new BoxLayout(results, BoxLayout.Y_AXIS);
		results.setLayout(layout);

		for(String pickedClass: pickedClasses) {
			JLabel label = new JLabel(pickedClass);
			results.add(label);
		}

		JFrame resultsFrame = new JFrame();
		
		resultsFrame.setVisible(true);
		resultsFrame.setSize(FRAMEWIDTH, FRAMEHEIGHT);
		resultsFrame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		resultsFrame.add(results);

	}


	private String[] parseOptimum() {
		int numClasses = Integer.parseInt(numClassesContainer.getChoice().getItem(numClassesContainer.getChoice().getSelectedIndex()));

		String[] pickedClasses = new String[numClasses];
		int classCtr = 0;
		String filePath = cwd + "/results.txt";
		BufferedReader br;
		String pattern = "picked_class.*";
		String unsat = "UNSATISFIABLE";
		String line = "";
	
		try {
			br = new BufferedReader(new FileReader(filePath));
			try {
				while((line = br.readLine()) != null) {
					String[] words = line.split(" ");
	
					for (String word : words) {
					  if (Pattern.matches(pattern, word)) {
						int index = classCtr % numClasses;
						pickedClasses[index] = word;
						classCtr++;
					  } else if (word.equals(unsat)) {
						return new String[] {unsat};
					  }
					}	
				}
				br.close();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return pickedClasses;
	}
	
	private String parseMajor() {
		String studentMajor = majorContainer.getChoice().getItem(majorContainer.getChoice().getSelectedIndex());
		return "major(" + studentMajor + ").\n";
	}
	
	private String parseCoreRequirements() {
		String numCoreRequirements = coreClassesContainer.getChoice().getItem(coreClassesContainer.getChoice().getSelectedIndex());
		return "core_num(" + numCoreRequirements + ").\n";
	}
	
	private String parseElectiveRequirements() {
		String numElectiveRequirements = electiveClassesContainer.getChoice().getItem(electiveClassesContainer.getChoice().getSelectedIndex());
		return "elective_num(" + numElectiveRequirements + ").\n";
	}
	
	private String parsePreviousClasses() {
		String input = previousClassesContainer.getTextArea().getText();
		String output = "";
		
		if(!input.equals("")) {
			try {
				String[] previousClasses = input.split(",");
				
				for(String previousClass: previousClasses) {
					previousClass = previousClass.trim();
					output += "taken(" + previousClass + ").\n";
					for(int sectionNum = 1; sectionNum < 5; sectionNum++) {
						output += "taken(" + previousClass + "_0" + sectionNum + ").\n";
					}
				}
			} catch(Exception e) {
				previousClassesContainer.getTextArea().setText("Oops, something went wrong please make sure to input in the format: \n[courseCode1, courseCode2, etc.]");
				return "";
			}
			
		}
			
		return output;
	}
	
	private String parseBusyTimes() {
		String input = busyContainer.getTextArea().getText();
		String output = "";
		
		if(!input.equals("")) {
			String[] busyTimes;
			try {
				busyTimes = busyContainer.getTextArea().getText().split(",");
				
				for(String busyTime: busyTimes) {
					String[] busyFields = busyTime.split("_");
					String day = busyFields[0].trim();
					
					String[] startEnd = busyFields[1].split("-");
					String[] startTimeFields = startEnd[0].split(":");
					String[] endTimeFields = startEnd[1].split(":");
					
					String start = startTimeFields[0] + startTimeFields[1];
					String end = endTimeFields[0] + endTimeFields[1];
					
					if (startTimeFields[2].equals("pm") && !startTimeFields[0].equals("12")) {
						System.out.println("adding time");
						start = Integer.toString((Integer.parseInt(startTimeFields[0]) + 12)) + startTimeFields[1];
					}

					if (endTimeFields[2].equals("pm")  && !endTimeFields[0].equals("12")) {
						end = Integer.toString((Integer.parseInt(endTimeFields[0]) + 12)) + endTimeFields[1];
					}

					output += "busy(" + day + ", "+ Integer.parseInt(start) + ", " + Integer.parseInt(end) + ").\n";
				}
			} catch(Exception e) {
				busyContainer.getTextArea().setText("Oops, something went wrong please make sure to input in the format: \n[Day1-Start1-End1, Day2-Start2-End2, etc.]");
				return "";
			}
	
		}
		return output;
	}
	
	private String parseNumClasses() {
		String numClasses = numClassesContainer.getChoice().getItem(numClassesContainer.getChoice().getSelectedIndex());
		return "num_classes(" + numClasses + ").\n";
	}
	
	private String parseMaxClassesPerDay() {
		String maxClassesPerDay = numClassesPerDayContainer.getChoice().getItem(numClassesPerDayContainer.getChoice().getSelectedIndex());
		return "day_max(" + maxClassesPerDay + ").\n";

	}
	
	private String parseDesiredDepartments() {
		String input = departmentContainer.getTextArea().getText();
		String output = "";
		
		if(!input.equals("")) {
			
			try {
				String[] departments = input.split(",");
				
				for(String department: departments) {
					String[] departmentFields = department.split("-");
					output += "desired_dept(" + departmentFields[0].trim() + ", " + departmentFields[1].trim() + ").\n";
				}
			} catch(Exception e) {
				departmentContainer.getTextArea().setText("Oops, something went wrong please make sure to input in the format: \n[department1-num1, department2-num2, etc.]");
				return "";
			}
			
		}
		
		return output;
	}
	
	private String parseForbiddenDepartments() {
		String input = notDepartmentContainer.getTextArea().getText();
		String output = "";
		
		if(!input.equals("")) {
			try {
				String[] forbiddenDepartments = notDepartmentContainer.getTextArea().getText().split(",");
				
				for(String forbiddenDepartment: forbiddenDepartments) {
					output += "forbidden_dept(" + forbiddenDepartment.trim() + ").\n";
				}
			} catch(Exception e) {
				notDepartmentContainer.getTextArea().setText("Oops, something went wrong please make sure to input in the format: \n[department1, department2, etc.]");
				return "";
			}
			
		}
		
		return output;
	}
	
	private String parseMaxWorkload() {
		String workload = workloadContainer.getChoice().getItem(workloadContainer.getChoice().getSelectedIndex());
		return "max_workload(" +  (Integer.parseInt(workload)* 10) + ").\n";
	}
	
	private String parseMinRating() {
		String rating = ratingContainer.getChoice().getItem(ratingContainer.getChoice().getSelectedIndex());
		return "min_rating(" +  ( (int) (Double.parseDouble(rating) * 10)) + ").\n";

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
		previousClassesContainer = new TextInputContainer("What classes have you taken?", "Ex. csci051, csci062 (use all three digits & separate with commas)", previousClassesBounds);
		
		Rectangle busyBounds = new Rectangle(firstColX, (int) previousClassesBounds.getY() + (int) previousClassesBounds.getHeight() + YPADDING, PANELWIDTH, PANELHEIGHT2);
		busyContainer = new TextInputContainer("What times are you busy or don't want to take class?", "Ex. tues_11:00:am-12:00:pm, thurs_1:00:pm-3:00:pm \nDays are {mon/tues/wed/thurs/fri}",busyBounds);
		
		Rectangle numClassesBounds = new Rectangle(secondColX, topContainer.getY() + (2 * YPADDING), PANELWIDTH, PANELHEIGHT);
		numClassesContainer = new ChoiceInputContainer("How many classes do you want to take?", numCourseList, numClassesBounds);
		
		Rectangle numClassesPerDayBounds = new Rectangle(secondColX, (int) numClassesBounds.getY() + (int) numClassesBounds.getHeight() + YPADDING, PANELWIDTH, PANELHEIGHT);
		numClassesPerDayContainer = new ChoiceInputContainer("What is the maximum number of classes you want in a day", numCourseList, numClassesPerDayBounds);
		
		Rectangle departmentBounds = new Rectangle(secondColX, (int) numClassesPerDayBounds.getY() + (int) numClassesPerDayBounds.getHeight() + YPADDING, PANELWIDTH, PANELHEIGHT2);
		departmentContainer = new TextInputContainer("What departments do you want to take classes and number of classes?", "Ex. csci-1, poli-2 (department-num)",departmentBounds);
		
		Rectangle notDepartmentBounds = new Rectangle(secondColX, (int) departmentBounds.getY() + (int) departmentBounds.getHeight() + YPADDING, PANELWIDTH, PANELHEIGHT2);
		notDepartmentContainer = new TextInputContainer("What departments do you not want to take classes in?", "Ex. poli, csci (separate with commas)",notDepartmentBounds);
		
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