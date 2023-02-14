package bloodDonation;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JTextPane;
import javax.swing.SwingConstants;
import javax.swing.JLabel;
import javax.imageio.ImageIO;
import javax.swing.DefaultComboBoxModel;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JTextField;
import javax.swing.JScrollBar;
import javax.swing.JSpinner;
import javax.swing.JList;
import javax.swing.JOptionPane;

import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.swing.JComboBox;
import java.awt.SystemColor;

public class pInsert extends JFrame {

	private JPanel contentPane;
	private JTextField textField;
	private JTextField textField_1;
	private JTextField textField_2;
	private JTextField textField_3;
	private JTextField textField_4;
	private JTextField textField_6;
	private JTextField textField_7;
	private JTextField textField_8;
	private JTextField textField_9;
	private JLabel lblNewLabel;
	private JLabel lblNewLabel_11;
	private JComboBox comboBox;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					pInsert frame = new pInsert();
					frame.setVisible(true);
					frame.setIconImage(ImageIO.read(getClass().getResourceAsStream("/Images/appImg.jpg")));
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the frame.
	 */
	public pInsert() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 984, 560);
		contentPane = new JPanel();
		contentPane.setBackground(Color.WHITE);
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		
		JPanel WelcomeImage = new JPanel();
		WelcomeImage.setBackground(Color.WHITE);
		WelcomeImage.setBounds(10, 0, 543, 622);
		contentPane.add(WelcomeImage);
		WelcomeImage.setLayout(null);
		
		JLabel PlaneImage = new JLabel();
		PlaneImage.setBounds(-16, 0, 559, 523); 
		WelcomeImage.add(PlaneImage);
		PlaneImage.setHorizontalAlignment(SwingConstants.CENTER);
		PlaneImage.setIcon(new ImageIcon(homePage.class.getResource("/Images/patient1.jpg")));
		
		lblNewLabel = new JLabel("Patient's Information:");
		lblNewLabel.setFont(new Font("Tahoma", Font.BOLD, 25));
		lblNewLabel.setBounds(558, 0, 289, 58);
		contentPane.add(lblNewLabel);
		
		textField = new JTextField();
		textField.setBackground(SystemColor.menu);
		textField.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		textField.setBounds(558, 80, 226, 30);
		contentPane.add(textField);
		textField.setColumns(10);
		
		textField_1 = new JTextField();
		textField_1.setBackground(SystemColor.menu);
		textField_1.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		textField_1.setBounds(728, 217, 63, 30);
		contentPane.add(textField_1);
		textField_1.setColumns(10);
		
		JLabel lblNewLabel_1 = new JLabel("Name");
		lblNewLabel_1.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		lblNewLabel_1.setBounds(558, 51, 103, 23);
		contentPane.add(lblNewLabel_1);
		
		JLabel lblNewLabel_2 = new JLabel("SSN");
		lblNewLabel_2.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		lblNewLabel_2.setBounds(794, 51, 49, 23);
		contentPane.add(lblNewLabel_2);
		
		JLabel lblNewLabel_3 = new JLabel("Age");
		lblNewLabel_3.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		lblNewLabel_3.setBounds(727, 184, 89, 30);
		contentPane.add(lblNewLabel_3);
		
		JLabel lblNewLabel_4 = new JLabel("Phone Number");
		lblNewLabel_4.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		lblNewLabel_4.setBounds(558, 121, 183, 23);
		contentPane.add(lblNewLabel_4);
		
		JLabel lblNewLabel_5 = new JLabel("Address");
		lblNewLabel_5.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		lblNewLabel_5.setBounds(739, 121, 103, 23);
		contentPane.add(lblNewLabel_5);
		
		JLabel lblNewLabel_6 = new JLabel("Blood Group");
		lblNewLabel_6.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		lblNewLabel_6.setBounds(807, 184, 163, 30);
		contentPane.add(lblNewLabel_6);
		
		JLabel lblNewLabel_7 = new JLabel("Disease");
		lblNewLabel_7.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		lblNewLabel_7.setBounds(558, 189, 119, 20);
		contentPane.add(lblNewLabel_7);
		
		JLabel lblNewLabel_8 = new JLabel("Emergency Level");
		lblNewLabel_8.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		lblNewLabel_8.setBounds(558, 246, 226, 47);
		contentPane.add(lblNewLabel_8);
		
		JLabel lblNewLabel_9 = new JLabel("Blood Unit's Code");
		lblNewLabel_9.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		lblNewLabel_9.setBounds(558, 328, 196, 37);
		contentPane.add(lblNewLabel_9);
		
		JLabel lblNewLabel_10 = new JLabel("Employee's SSN");
		lblNewLabel_10.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		lblNewLabel_10.setBounds(774, 253, 231, 33);
		contentPane.add(lblNewLabel_10);
		
		textField_2 = new JTextField();
		textField_2.setBackground(SystemColor.menu);
		textField_2.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		textField_2.setBounds(794, 80, 166, 30);
		contentPane.add(textField_2);
		textField_2.setColumns(10);
		
		textField_3 = new JTextField();
		textField_3.setBackground(SystemColor.menu);
		textField_3.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		textField_3.setBounds(558, 217, 154, 30);
		contentPane.add(textField_3);
		textField_3.setColumns(10);
		
		textField_4 = new JTextField();
		textField_4.setBackground(SystemColor.menu);
		textField_4.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		textField_4.setBounds(558, 373, 402, 30);
		contentPane.add(textField_4);
		textField_4.setColumns(10);
		
		textField_6 = new JTextField();
		textField_6.setBackground(SystemColor.menu);
		textField_6.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		textField_6.setBounds(558, 146, 163, 30);
		contentPane.add(textField_6);
		textField_6.setColumns(10);
		
		textField_7 = new JTextField();
		textField_7.setBackground(SystemColor.menu);
		textField_7.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		textField_7.setBounds(739, 146, 221, 30);
		contentPane.add(textField_7);
		textField_7.setColumns(10);
		
		textField_8 = new JTextField();
		textField_8.setBackground(SystemColor.menu);
		textField_8.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		textField_8.setBounds(558, 287, 196, 30);
		contentPane.add(textField_8);
		textField_8.setColumns(10);
		
		textField_9 = new JTextField();
		textField_9.setBackground(SystemColor.menu);
		textField_9.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		textField_9.setBounds(774, 287, 186, 30);
		contentPane.add(textField_9);
		textField_9.setColumns(10);
		
		JButton GoBackButton = new JButton("Go Back");
		GoBackButton.setBackground(SystemColor.menu);
		GoBackButton.setFont(new Font("Times New Roman", Font.BOLD, 24));
		GoBackButton.setForeground(Color.BLACK);
		GoBackButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				dispose();
				
			}
		});
		GoBackButton.setBounds(823, 465, 137, 47);
		contentPane.add(GoBackButton);
		
		lblNewLabel_11 = new JLabel("(NA if not received)");
		lblNewLabel_11.setFont(new Font("Times New Roman", Font.ITALIC, 24));
		lblNewLabel_11.setBounds(754, 335, 203, 25);
		contentPane.add(lblNewLabel_11);
		
		comboBox = new JComboBox();
		comboBox.setBackground(SystemColor.menu);
		comboBox.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		comboBox.setModel(new DefaultComboBoxModel(new String[] {"A+", "A-", "B+", "B-", "AB+", "AB-", "O+", "O-"}));
		comboBox.setBounds(817, 217, 63, 30);
		contentPane.add(comboBox);
		
		JButton btnNewButton = new JButton("Insert");
		btnNewButton.setBackground(SystemColor.menu);
		btnNewButton.setFont(new Font("Times New Roman", Font.BOLD, 24));
		btnNewButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
			    /* In this operation we took into consideration that we might not find a blood unit to the patient. In this case                     we insert his/ her record into a specific relations, and wait until we find a blood unit to him/ her in                          order to insert his / her records into another relations. */
				try{
				    // Create a connection with the database.
					Class.forName("com.mysql.cj.jdbc.Driver");
					Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BLOOD_DONATION",
							"root","");
					
					String name= textField.getText(); // to store the user's input.
					String age=textField_1.getText(); // to store the user's input.
					String SSN = textField_2.getText(); // to store the user's input.
					String phone=textField_6.getText(); // to store the user's input.
					String address=textField_7.getText(); // to store the user's input.
					String disease =textField_3.getText(); // to store the user's input.
					String emergencyLvl = textField_8.getText(); // to store the user's input.
					String eSSN = textField_9.getText(); // to store the user's input.
					String bUCode = textField_4.getText(); // to store the user's input.
					Object bloodGrp= comboBox.getSelectedItem(); // to store the user's input.
					
					Statement stm = con.createStatement();
					// Insert a new record into the PATIENT realtion with the given SSN, disease, and emergencyLvl.
					String sql="INSERT INTO PATIENT"
							+ " VALUES("+SSN+",'"+disease+"',"+emergencyLvl+");";
					// Insert a new record into the PERSON relation.
					String sql1 = "INSERT INTO PERSON" + " VALUES("+SSN+",'"+name+"',"+age+","+phone+",'"+bloodGrp+"','"+address+"');";             // Insert a new record to the Gives relation. This helps us know who treated a specific patient.
					String sql2 = "INSERT INTO GIVES" + " VALUES("+SSN+","+eSSN+");";
					// Delete the blood unit that was given to the patient.
					String sql3 = "DELETE FROM BLOOD_UNIT WHERE uCode = " + bUCode+";";
					// Decrease the quantity of the blood units in the blood stcok by one after giving a blood unit to a patient.
					String sql4 = "UPDATE BLOOD_STOCK SET quantity = quantity - 1 WHERE sCode = (SELECT sCode FROM BLOOD_UNIT WHERE uCode = " + bUCode + ");";
					// Check if the person with the given SSN in the PERSON relation or not.
					String sql5 = "SELECT SSN FROM PERSON WHERE SSN = " +SSN+";";
					try {
						ResultSet rs = stm.executeQuery(sql5); // execute sql5.
						if (!rs.next()) { // If the person with the given SSN doesn't exist in the PERSON relation.
							stm.executeUpdate(sql1); // Insert his/ her record into PERSON relation.
						}
						/* Here we're 100% sure that the patient is in the PERSON relation, so we can insert his/her record into                            the PATIENT relation without any violation to the constraints. */
						stm.executeUpdate(sql); 
						if (!bUCode.equals("NA")) { // If the employee gave the Patient a blood unit.
							stm.executeUpdate(sql2); // execute sql2.
							stm.executeUpdate(sql4); // execute sql4.
							stm.executeUpdate(sql3); // execute sql5.
						}
						
						JOptionPane.showMessageDialog(null, "Inserted Successfully!");
						dispose();
						bloodDonation hp=new bloodDonation();
						hp.setIconImage(ImageIO.read(getClass().getResourceAsStream("/Images/appImg.jpg")));
						hp.show();
					}
					
	
					catch(Exception e2) {	
						JOptionPane.showMessageDialog(null, "Invalid! Fill all information properly.");
					}
					
			}catch(Exception e1) {
				System.out.println(e1.getMessage());
			}
			}
		});
		btnNewButton.setBounds(558, 465, 137, 47);
		contentPane.add(btnNewButton);
		
	}
}
