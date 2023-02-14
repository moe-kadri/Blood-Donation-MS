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
import javax.swing.JPanel;
import javax.swing.JTextField;
import javax.swing.SwingConstants;
import javax.swing.border.EmptyBorder;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JComboBox;
import java.awt.SystemColor;

public class dInsert extends JFrame {

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

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
				    //create a frame
					dInsert frame = new dInsert();
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
	public dInsert() {
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
		WelcomeImage.setBounds(0, 0, 570, 662);
		contentPane.add(WelcomeImage);
		WelcomeImage.setLayout(null);
		
		
		JLabel PlaneImage = new JLabel();
		PlaneImage.setBounds(-336, -210, 1142, 959); 
		WelcomeImage.add(PlaneImage);
		PlaneImage.setHorizontalAlignment(SwingConstants.CENTER);
		PlaneImage.setIcon(new ImageIcon(homePage.class.getResource("/Images/donor.jpeg")));
		
		lblNewLabel = new JLabel("Donor's Information:");
		lblNewLabel.setFont(new Font("Tahoma", Font.BOLD, 25));
		lblNewLabel.setBounds(666, 11, 274, 58);
		contentPane.add(lblNewLabel);
		
		textField = new JTextField();
		textField.setBackground(SystemColor.menu);
		textField.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		textField.setBounds(642, 101, 185, 30);
		contentPane.add(textField);
		textField.setColumns(10);
		
		textField_1 = new JTextField();
		textField_1.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		textField_1.setBackground(SystemColor.menu);
		textField_1.setBounds(848, 101, 59, 30);
		contentPane.add(textField_1);
		textField_1.setColumns(10);
		
		JLabel lblNewLabel_1 = new JLabel("Name:");
		lblNewLabel_1.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		lblNewLabel_1.setBounds(701, 71, 103, 23);
		contentPane.add(lblNewLabel_1);
		
		JLabel lblNewLabel_2 = new JLabel("SSN:");
		lblNewLabel_2.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		lblNewLabel_2.setBounds(712, 150, 59, 23);
		contentPane.add(lblNewLabel_2);
		
		JLabel lblNewLabel_3 = new JLabel("Age:");
		lblNewLabel_3.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		lblNewLabel_3.setBounds(848, 67, 89, 30);
		contentPane.add(lblNewLabel_3);
		
		JLabel lblNewLabel_4 = new JLabel("Phone Nb.:");
		lblNewLabel_4.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		lblNewLabel_4.setBounds(642, 220, 141, 23);
		contentPane.add(lblNewLabel_4);
		
		JLabel lblNewLabel_5 = new JLabel("Address:");
		lblNewLabel_5.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		lblNewLabel_5.setBounds(837, 220, 103, 23);
		contentPane.add(lblNewLabel_5);
		
		JLabel lblNewLabel_6 = new JLabel("Blood Group:");
		lblNewLabel_6.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		lblNewLabel_6.setBounds(819, 143, 161, 30);
		contentPane.add(lblNewLabel_6);
		
		JLabel lblNewLabel_7 = new JLabel("Date:");
		lblNewLabel_7.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		lblNewLabel_7.setBounds(841, 301, 119, 20);
		contentPane.add(lblNewLabel_7);
		
		JLabel lblNewLabel_8 = new JLabel("Stock Code:");
		lblNewLabel_8.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		lblNewLabel_8.setBounds(642, 360, 141, 47);
		contentPane.add(lblNewLabel_8);
		
		JLabel lblNewLabel_9 = new JLabel("Unit Code:");
		lblNewLabel_9.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		lblNewLabel_9.setBounds(652, 293, 196, 37);
		contentPane.add(lblNewLabel_9);
		
		JLabel lblNewLabel_10 = new JLabel("Employee's SSN:");
		lblNewLabel_10.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		lblNewLabel_10.setBounds(778, 367, 215, 33);
		contentPane.add(lblNewLabel_10);
		
		textField_2 = new JTextField();
		textField_2.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		textField_2.setBackground(SystemColor.menu);
		textField_2.setBounds(642, 176, 185, 30);
		contentPane.add(textField_2);
		textField_2.setColumns(10);
		
		textField_3 = new JTextField();
		textField_3.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		textField_3.setBackground(SystemColor.menu);
		textField_3.setBounds(642, 326, 119, 30);
		contentPane.add(textField_3);
		textField_3.setColumns(10);
		
		textField_4 = new JTextField();
		textField_4.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		textField_4.setBackground(SystemColor.menu);
		textField_4.setBounds(780, 403, 180, 30);
		contentPane.add(textField_4);
		textField_4.setColumns(10);
		
		textField_6 = new JTextField();
		textField_6.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		textField_6.setBackground(SystemColor.menu);
		textField_6.setBounds(642, 254, 119, 30);
		contentPane.add(textField_6);
		textField_6.setColumns(10);
		
		textField_7 = new JTextField();
		textField_7.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		textField_7.setBackground(SystemColor.menu);
		textField_7.setBounds(775, 254, 185, 30);
		contentPane.add(textField_7);
		textField_7.setColumns(10);
		
		textField_8 = new JTextField();
		textField_8.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		textField_8.setBackground(SystemColor.menu);
		textField_8.setBounds(780, 326, 180, 30);
		contentPane.add(textField_8);
		textField_8.setColumns(10);
		
		textField_9 = new JTextField();
		textField_9.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		textField_9.setBackground(SystemColor.menu);
		textField_9.setBounds(642, 403, 119, 30);
		contentPane.add(textField_9);
		textField_9.setColumns(10);
		
		JComboBox comboBox = new JComboBox();
		comboBox.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		comboBox.setBackground(SystemColor.menu);
		comboBox.setModel(new DefaultComboBoxModel(new String[] {"A+", "A-", "B+", "B-", "AB+", "AB-", "O+", "O-"}));
		comboBox.setBounds(869, 176, 59, 30);
		contentPane.add(comboBox);
		
		JButton btnNewButton = new JButton("Insert");
		btnNewButton.setFont(new Font("Times New Roman", Font.BOLD, 24));
		btnNewButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
			    //this action inserts a new donor to the DONOR relation and to all other related relations
				try{
				    //make connection with the database
					Class.forName("com.mysql.cj.jdbc.Driver");
					Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BLOOD_DONATION",
							"root","");
					
					//take input from the user
					String name= textField.getText();
					String age=textField_1.getText();
					String SSN = textField_2.getText();
					String phone=textField_6.getText();
					String address=textField_7.getText();
					String bUCode=textField_3.getText();
					String date = textField_8.getText();
					String eSSN = textField_4.getText();
					String bSCode = textField_9.getText();
					Object bloodGrp= comboBox.getSelectedItem();
					
					Statement stm = con.createStatement();
					//insert into DONOR according to the info entered by the user
					String sql="INSERT INTO DONOR"
							+ " VALUES("+SSN+");";
					//insert into the PERSON relation
					String sql1 = "INSERT INTO PERSON" + " VALUES("+SSN+",'"+name+"',"+age+","+phone+",'"+bloodGrp+"','"+address+"');";
					//insert into the TAKES relation
					String sql2 = "INSERT INTO TAKES" + " VALUES("+SSN+","+bUCode+","+eSSN+");";
					//insert the blood unit record that was taken from the donor
					String sql3 = "INSERT INTO BLOOD_UNIT" + " VALUES("+bUCode+",'"+date+"', '"+bloodGrp+"', "+bSCode+");";
					//increment the quantity of blood units in the corresponding blood stock
					String sql4 = "UPDATE BLOOD_STOCK SET quantity = quantity + 1 WHERE sCode = " + bSCode + ";";
					//check if the entered SSN exists in person
					String sql5 = "SELECT SSN FROM PERSON WHERE SSN = " +SSN+";";
					try {
						ResultSet rs = stm.executeQuery(sql5);
						//if the SSN doesn't exist in PERSON, insert the new record into PERSON
						if (!rs.next()) {
							stm.executeUpdate(sql1);
						}
						//execute the remaining insert operations
						stm.executeUpdate(sql);
						stm.executeUpdate(sql3);
						stm.executeUpdate(sql2);
						stm.executeUpdate(sql4);
						JOptionPane.showMessageDialog(null, "Inserted Successfully!");
						dispose();
						//go back to the bloodDonation frame
						bloodDonation hp=new bloodDonation();
						hp.setIconImage(ImageIO.read(getClass().getResourceAsStream("/Images/appImg.jpg")));
						hp.show();
					}
					
	
					catch(Exception e2) {
					    //if the entered data does not belong to the correct domain
					    //or if the fields are left empty, display this error
						JOptionPane.showMessageDialog(null, "Invalid! Fill all information properly.");
					}
					
			}catch(Exception e1) {
				System.out.println(e1.getMessage());
			}
			}
		});
		btnNewButton.setBounds(642, 465, 141, 47);
		contentPane.add(btnNewButton);
		
		//button to go back to previous page 
		JButton GoBackButton = new JButton("Go Back");
		GoBackButton.setFont(new Font("Times New Roman", Font.BOLD, 24));
		GoBackButton.setForeground(Color.BLACK);
		GoBackButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				dispose();
				
			}
		});
		GoBackButton.setBounds(819, 465, 141, 47);
		contentPane.add(GoBackButton);
		
		
	}
}
