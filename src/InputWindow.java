import java.awt.Color;
import java.awt.Dimension;
import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTextField;

public class InputWindow {

	private final int FRAMEXPOS = 100;
	private final int FRAMEYPOS = 100;
	
	private final int FRAMEWIDTH = 600;
	private final int FRAMEHEIGHT = 750;
	
	private JFrame frame;
	private JScrollPane scrollFrame;

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

	/**
	 * Create the application.
	 */
	public InputWindow() {
		initialize();
	}

	//scrollFrame = new JScrollPane(JScrollPane.VERTICAL_SCROLLBAR_ALWAYS, JScrollPane.HORIZONTAL_SCROLLBAR_NEVER);
	//frame.setContentPane(scrollFrame);
	
	/**
	 * Initialize the contents of the frame.
	 */
	private void initialize() {
		frame = new JFrame("Schedule User Interface");
		frame.setBounds(FRAMEXPOS, FRAMEYPOS, FRAMEWIDTH, FRAMEHEIGHT);
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
				
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
		
		
		
		
	}

}