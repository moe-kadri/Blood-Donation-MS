package bloodDonation;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.EventQueue;
import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.imageio.ImageIO;
import javax.swing.DefaultComboBoxModel;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JTextField;
import javax.swing.SwingConstants;
import javax.swing.border.EmptyBorder;
import javax.swing.JComboBox;
import java.awt.SystemColor;

public class eInsert extends JFrame {

	private JPanel contentPane;
	private JTextField textField;
	private JTextField textField_1;
	private JTextField textField_2;
	private JTextField textField_3;
	private JTextField textField_4;
	private JTextField textField_5;
	private JTextField textField_6;
	private JTextField textField_7;
	private JLabel lblNewLabel;
	private JTextField textField_10;
	private JTextField textField_8;
	private JTextField textField_9;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
				    //display frame
					eInsert frame = new eInsert();
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
	public eInsert() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 984, 560);
		contentPane = new JPanel();
		contentPane.setBackground(Color.WHITE);
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
        //insert an image
		JPanel WelcomeImage = new JPanel();
		WelcomeImage.setBackground(Color.WHITE);
		WelcomeImage.setBounds(0, 0, 271, 662);
		contentPane.add(WelcomeImage);
		WelcomeImage.setLayout(null);
		
		
		JLabel PlaneImage = new JLabel();
		PlaneImage.setBounds(-87, 0, 450, 526); 
		WelcomeImage.add(PlaneImage);
		PlaneImage.setHorizontalAlignment(SwingConstants.CENTER);
		PlaneImage.setIcon(new ImageIcon(homePage.class.getResource("/Images/empInsert.jpeg")));
		
		textField = new JTextField();
		textField.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		textField.setBackground(SystemColor.menu);
		textField.setBounds(292, 80, 252, 30);
		contentPane.add(textField);
		textField.setColumns(10);
		
		JLabel lblNewLabel_1 = new JLabel("Name:");
		lblNewLabel_1.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		lblNewLabel_1.setBounds(292, 53, 103, 23);
		contentPane.add(lblNewLabel_1);
		
		JLabel lblNewLabel_2 = new JLabel("SSN:");
		lblNewLabel_2.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		lblNewLabel_2.setBounds(292, 116, 73, 23);
		contentPane.add(lblNewLabel_2);
		
		JLabel lblNewLabel_3 = new JLabel("Age:");
		lblNewLabel_3.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		lblNewLabel_3.setBounds(588, 49, 89, 30);
		contentPane.add(lblNewLabel_3);
		
		JLabel lblNewLabel_4 = new JLabel("Phone Number:");
		lblNewLabel_4.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		lblNewLabel_4.setBounds(292, 305, 185, 23);
		contentPane.add(lblNewLabel_4);
		
		JLabel lblNewLabel_5 = new JLabel("Address:");
		lblNewLabel_5.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		lblNewLabel_5.setBounds(292, 365, 103, 23);
		contentPane.add(lblNewLabel_5);
		
		JLabel lblNewLabel_6 = new JLabel("Blood Group:");
		lblNewLabel_6.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		lblNewLabel_6.setBounds(588, 175, 154, 30);
		contentPane.add(lblNewLabel_6);
		
		JLabel lblNewLabel_7 = new JLabel("Shift Begins:");
		lblNewLabel_7.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		lblNewLabel_7.setBounds(588, 361, 154, 31);
		contentPane.add(lblNewLabel_7);
		
		JLabel lblNewLabel_8 = new JLabel("Shift Ends:");
		lblNewLabel_8.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		lblNewLabel_8.setBounds(775, 353, 185, 47);
		contentPane.add(lblNewLabel_8);
		
		JLabel lblNewLabel_9 = new JLabel("Salary:");
		lblNewLabel_9.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		lblNewLabel_9.setBounds(588, 298, 163, 37);
		contentPane.add(lblNewLabel_9);
		
		JLabel lblNewLabel_10 = new JLabel("Super SSN:");
		lblNewLabel_10.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		lblNewLabel_10.setBounds(588, 111, 154, 33);
		contentPane.add(lblNewLabel_10);
		
		textField_1 = new JTextField();
		textField_1.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		textField_1.setBackground(SystemColor.menu);
		textField_1.setBounds(588, 80, 67, 30);
		contentPane.add(textField_1);
		textField_1.setColumns(10);
		
		
		
		textField_2 = new JTextField();
		textField_2.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		textField_2.setBackground(SystemColor.menu);
		textField_2.setBounds(292, 144, 252, 30);
		contentPane.add(textField_2);
		textField_2.setColumns(10);
		
		textField_3 = new JTextField();
		textField_3.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		textField_3.setBackground(SystemColor.menu);
		textField_3.setBounds(588, 328, 141, 30);
		contentPane.add(textField_3);
		textField_3.setColumns(10);
		
		textField_4 = new JTextField();
		textField_4.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		textField_4.setBackground(SystemColor.menu);
		textField_4.setBounds(588, 144, 252, 30);
		contentPane.add(textField_4);
		textField_4.setColumns(10);
		
		textField_5 = new JTextField();
		textField_5.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		textField_5.setBackground(SystemColor.menu);
		textField_5.setBounds(292, 269, 252, 30);
		contentPane.add(textField_5);
		textField_5.setColumns(10);
		
		textField_6 = new JTextField();
		textField_6.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		textField_6.setBackground(SystemColor.menu);
		textField_6.setBounds(292, 328, 252, 30);
		contentPane.add(textField_6);
		textField_6.setColumns(10);
		
		textField_7 = new JTextField();
		textField_7.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		textField_7.setBackground(SystemColor.menu);
		textField_7.setBounds(292, 392, 252, 30);
		contentPane.add(textField_7);
		textField_7.setColumns(10);
		
		JLabel lblNewLabel_11 = new JLabel("Email:");
		lblNewLabel_11.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		lblNewLabel_11.setBounds(292, 179, 89, 23);
		contentPane.add(lblNewLabel_11);
		
		textField_10 = new JTextField();
		textField_10.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		textField_10.setBackground(SystemColor.menu);
		textField_10.setBounds(292, 203, 252, 30);
		contentPane.add(textField_10);
		textField_10.setColumns(10);
		
		JLabel lblNewLabel_12 = new JLabel("Password:");
		lblNewLabel_12.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		lblNewLabel_12.setBounds(292, 244, 128, 23);
		contentPane.add(lblNewLabel_12);
		
		JComboBox comboBox = new JComboBox();
		comboBox.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		comboBox.setBackground(SystemColor.menu);
		comboBox.setModel(new DefaultComboBoxModel(new String[] {"A+", "A-", "B+", "B-", "AB+", "AB-", "O+", "O-"}));
		comboBox.setBounds(588, 203, 67, 30);
		contentPane.add(comboBox);
		
		JComboBox comboBox_1 = new JComboBox();
		comboBox_1.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		comboBox_1.setBackground(SystemColor.menu);
		comboBox_1.setModel(new DefaultComboBoxModel(new String[] {"08:00:00", "14:00:00", "20:00:00", "02:00:00"}));
		comboBox_1.setBounds(588, 392, 135, 30);
		contentPane.add(comboBox_1);
		
		JComboBox comboBox_2 = new JComboBox();
		comboBox_2.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		comboBox_2.setBackground(SystemColor.menu);
		comboBox_2.setModel(new DefaultComboBoxModel(new String[] {"08:00:00", "14:00:00", "20:00:00", "02:00:00"}));
		comboBox_2.setBounds(775, 392, 135, 31);
		contentPane.add(comboBox_2);
		
		JLabel lblNewLabel_13 = new JLabel("Role:");
		lblNewLabel_13.setFont(new Font("Tahoma", Font.PLAIN, 26));
		lblNewLabel_13.setBounds(588, 238, 73, 34);
		contentPane.add(lblNewLabel_13);
		
		textField_8 = new JTextField();
		textField_8.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		textField_8.setBackground(SystemColor.menu);
		textField_8.setBounds(588, 269, 252, 30);
		contentPane.add(textField_8);
		textField_8.setColumns(10);
		
		JLabel lblNewLabel_14 = new JLabel("Center Name:");
		lblNewLabel_14.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		lblNewLabel_14.setBounds(292, 430, 148, 33);
		contentPane.add(lblNewLabel_14);
		
		textField_9 = new JTextField();
		textField_9.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		textField_9.setBackground(SystemColor.menu);
		textField_9.setBounds(290, 460, 242, 30);
		contentPane.add(textField_9);
		textField_9.setColumns(10);
		
		//button to go back to previous frame
		JButton GoBackButton = new JButton("Go Back");
		GoBackButton.setFont(new Font("Times New Roman", Font.BOLD, 24));
		GoBackButton.setForeground(Color.BLACK);
		GoBackButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				dispose();
				
			}
		});
		GoBackButton.setBounds(775, 457, 135, 37);
		contentPane.add(GoBackButton);
		
		JButton btnNewButton = new JButton("Insert");
		btnNewButton.setFont(new Font("Times New Roman", Font.BOLD, 24));
		btnNewButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
			    //when we click on Insert, a new employee will be inserted according to the entered data
			    //all the related relations will also be populated with the employee's data
				try{
				    //create connection with the database
					Class.forName("com.mysql.cj.jdbc.Driver");
					Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BLOOD_DONATION",
							"root","");
					
					//take input from the user
					String name= textField.getText();
					String SSN = textField_2.getText();
					String email = textField_10.getText();
					String pass = textField_5.getText();
					String phone=textField_6.getText();
					String salary=textField_3.getText();
					String address=textField_7.getText();
					Object shiftB = comboBox_1.getSelectedItem();
					Object shiftE = comboBox_2.getSelectedItem();
					String age=textField_1.getText();
					String superSSN = textField_4.getText();
					Object bloodGrp= comboBox.getSelectedItem();
					String role = textField_8.getText();
					String bname = textField_9.getText(); 
				
					
					Statement stm = con.createStatement();
					//insert into EMPLOYEE relation the given values
					String sql="INSERT INTO EMPLOYEE"
							+ " VALUES("+SSN+","+salary+",'"+shiftB+"','"+shiftE+"',"+superSSN+",'"+email+"','"+pass+"');";
					//insert into PERSON relation the given values
					String sql1 = "INSERT INTO PERSON" + " VALUES("+SSN+",'"+name+"',"+age+","+phone+",'"+bloodGrp+"','"+address+"');";
					//Insert a new record into the ROLE relation that shows the employee's role(s)
					String sql2 = "INSERT INTO ROLE" + " VALUES("+SSN+",'"+role+"');";
					//Insert a new record into the WORKS relation that shows the location where the employee works
					String sql3 = "INSERT INTO WORKS" + " VALUES("+SSN+",(SELECT bCode FROM BLOOD_BANK WHERE bName = '"+bname+"'));";
					//to Check if the entered SSN exists in the PERSON relation
					String sql4 = "SELECT SSN FROM PERSON WHERE SSN = " +SSN+";";
					
					try {
						ResultSet rs = stm.executeQuery(sql4);
						//if the SSN does not exist in PERSON
						if (!rs.next()) {
						    //execute the statement and insert a record into PERSON
							stm.executeUpdate(sql1);
						}
						//execute the remaining statements
						stm.executeUpdate(sql);
						stm.executeUpdate(sql2);
						stm.executeUpdate(sql3);
						JOptionPane.showMessageDialog(null, "Inserted Successfully!");
						dispose();
						//go back to the blood donation frame
						bloodDonation hp=new bloodDonation();
						hp.setIconImage(ImageIO.read(getClass().getResourceAsStream("/Images/appImg.jpg")));
						hp.show();
					}
					
	
					catch(Exception e2) {
					    //if the entered data does not belong to the correct domain
					    // or if the fields are left empty, show this error
						JOptionPane.showMessageDialog(null, "Invalid! Fill all information properly.");
					}
					
			}catch(Exception e1) {
			    //if the connections fails, raise an exception
				System.out.println(e1.getMessage());
			}
			}
		});
		btnNewButton.setBounds(588, 457, 135, 37);
		contentPane.add(btnNewButton);
		
		lblNewLabel = new JLabel("Enter the Employee's Information:");
		lblNewLabel.setBounds(453, 0, 446, 58);
		contentPane.add(lblNewLabel);
		lblNewLabel.setFont(new Font("Tahoma", Font.BOLD, 25));

		
	}
}
