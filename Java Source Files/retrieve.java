package bloodDonation;

import java.awt.Color;
import java.awt.EventQueue;
import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.imageio.ImageIO;
import javax.swing.DefaultComboBoxModel;
import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.JTextField;
import javax.swing.UIManager;
import javax.swing.UIManager.LookAndFeelInfo;
import javax.swing.border.EmptyBorder;
import javax.swing.table.DefaultTableModel;

import net.proteanit.sql.DbUtils;
import javax.swing.JTextPane;
import java.awt.SystemColor;

public class retrieve extends JFrame {

	private JPanel contentPane;
	private JTextField textField;
	private JTable table;
	private JTextField textField_1;
	private JTextField textField_2;
	private JTextField textField_3;
	private JTextField textField_4;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					retrieve frame = new retrieve();
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
	public retrieve() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 984, 560);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JButton GoBackButton = new JButton("Go Back");
		GoBackButton.setFont(new Font("Times New Roman", Font.BOLD, 24));
		GoBackButton.setBackground(Color.WHITE);
		GoBackButton.setForeground(Color.BLACK);
		GoBackButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				dispose();
			
				
			}
		});
		GoBackButton.setBounds(158, 484, 132, 28);
		contentPane.add(GoBackButton);
		JComboBox comboBox_1 = new JComboBox();
		comboBox_1.setBackground(Color.WHITE);
		comboBox_1.setFont(new Font("Times New Roman", Font.PLAIN, 22));
		comboBox_1.setModel(new DefaultComboBoxModel(new String[] {"A+", "A-", "B+", "B-", "AB+", "AB-", "O+", "O-"}));
		comboBox_1.setBounds(385, 179, 60, 28);
		contentPane.add(comboBox_1);
		JLabel lblNewLabel = new JLabel("Select What You Want to Retrieve:");
		lblNewLabel.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		lblNewLabel.setBounds(26, 13, 382, 46);
		contentPane.add(lblNewLabel);
		JLabel lblNewLabel_3 = new JLabel("Working Employees:");
		lblNewLabel_3.setFont(new Font("Times New Roman", Font.PLAIN, 22));
		lblNewLabel_3.setBounds(10, 298, 206, 28);
		contentPane.add(lblNewLabel_3);
		
		textField_1 = new JTextField();
		textField_1.setBackground(Color.WHITE);
		textField_1.setFont(new Font("Times New Roman", Font.PLAIN, 22));
		textField_1.setBounds(10, 352, 86, 20);
		contentPane.add(textField_1);
		textField_1.setColumns(10);
		JLabel lblNewLabel_5 = new JLabel("Employee (Gave To):");
		lblNewLabel_5.setFont(new Font("Times New Roman", Font.PLAIN, 22));
		lblNewLabel_5.setBounds(10, 385, 206, 22);
		contentPane.add(lblNewLabel_5);
		
		textField_4 = new JTextField();
		textField_4.setBackground(Color.WHITE);
		textField_4.setFont(new Font("Times New Roman", Font.PLAIN, 22));
		textField_4.setBounds(11, 437, 85, 20);
		contentPane.add(textField_4);
		textField_4.setColumns(10);
		
		JLabel lblNewLabel_4 = new JLabel("Employee (Took From):");
		lblNewLabel_4.setFont(new Font("Times New Roman", Font.PLAIN, 22));
		lblNewLabel_4.setBounds(246, 298, 214, 25);
		contentPane.add(lblNewLabel_4);
		
		textField_3 = new JTextField();
		textField_3.setBackground(Color.WHITE);
		textField_3.setFont(new Font("Times New Roman", Font.PLAIN, 22));
		textField_3.setBounds(246, 352, 76, 20);
		contentPane.add(textField_3);
		textField_3.setColumns(10);
		JButton btnNewButton = new JButton("All Available Blood Types");
		btnNewButton.setBackground(Color.WHITE);
		btnNewButton.setFont(new Font("Times New Roman", Font.PLAIN, 16));
		btnNewButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				try{
				    // Create a connection with the database.
					Class.forName("com.mysql.cj.jdbc.Driver");
					Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BLOOD_DONATION",
							"root","");
					// Execute the AVAILABLE_TYPES view.
					String sql="SELECT * FROM AVAILABLE_TYPES;";
					PreparedStatement stm = con.prepareStatement(sql);
	
					ResultSet rs =stm.executeQuery(sql); // Execute sql.
					table.setModel(DbUtils.resultSetToTableModel(rs)); // Display the result.
	
			}catch(Exception e1) {
				System.out.println(e1.getMessage());
			}
				
			}
		});
		btnNewButton.setBounds(10, 218, 435, 28);
		contentPane.add(btnNewButton);
		
		JButton btnNewButton_1 = new JButton("SEARCH");
		btnNewButton_1.setBackground(Color.WHITE);
		btnNewButton_1.setFont(new Font("Times New Roman", Font.PLAIN, 16));
		btnNewButton_1.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				try{
				    // create a connection with the database.
					Class.forName("com.mysql.cj.jdbc.Driver");
					Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BLOOD_DONATION",
							"root","");
					String time = textField_1.getText(); // Store the user's input.
					// Call AT_WORK procedure with the specified time as a parameter.
					String sql="CALL AT_WORK('"+time+"');";
					PreparedStatement stm = con.prepareStatement(sql);
	
					ResultSet rs =stm.executeQuery(sql); // Execute sql.
					table.setModel(DbUtils.resultSetToTableModel(rs)); // Display the result.
	
			}catch(Exception e1) {
				System.out.println(e1.getMessage());
			}
			}
		});
		btnNewButton_1.setBounds(106, 350, 110, 22);
		contentPane.add(btnNewButton_1);
		
		JButton btnNewButton_2 = new JButton("Patients by Emergency Level");
		btnNewButton_2.setBackground(Color.WHITE);
		btnNewButton_2.setFont(new Font("Times New Roman", Font.PLAIN, 16));
		btnNewButton_2.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				try{
				    // Create a connection with the database.
					Class.forName("com.mysql.cj.jdbc.Driver");
					Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BLOOD_DONATION",
							"root","");
					// Execute the NAMEWITHLEVEL view.
					String sql="SELECT * FROM NameWithLevel;";
					PreparedStatement stm = con.prepareStatement(sql);
	
					ResultSet rs =stm.executeQuery(sql); // Execute sql.
					table.setModel(DbUtils.resultSetToTableModel(rs)); // Display the result.
	
			}catch(Exception e1) {
				System.out.println(e1.getMessage());
			}
				
			}
		});
		btnNewButton_2.setBounds(10, 257, 435, 28);
		contentPane.add(btnNewButton_2);
		
		JButton btnNewButton_5 = new JButton("SEARCH");
		btnNewButton_5.setBackground(Color.WHITE);
		btnNewButton_5.setFont(new Font("Times New Roman", Font.PLAIN, 16));
		btnNewButton_5.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				try{
				    // Create a connection with the database.
					Class.forName("com.mysql.cj.jdbc.Driver");
					Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BLOOD_DONATION",
							"root","");
					String SSN = textField_4.getText(); // Store the user's input.
					// Call the eInfo_Patient with the given patient's SSN as a parameter.
					String sql1= "CALL eInfo_Patient(" + SSN + ");"; 
					PreparedStatement stm = con.prepareStatement(sql1);
	
					ResultSet rs =stm.executeQuery(sql1); // Execute sql1.
					table.setModel(DbUtils.resultSetToTableModel(rs)); // Display the result.
	
			}catch(Exception e1) {
				System.out.println(e1.getMessage());
			}
			}
		});
		btnNewButton_5.setBounds(102, 435, 110, 22);
		contentPane.add(btnNewButton_5);
		
		JButton btnNewButton_6 = new JButton("SEARCH");
		btnNewButton_6.setBackground(Color.WHITE);
		btnNewButton_6.setFont(new Font("Times New Roman", Font.PLAIN, 16));
		btnNewButton_6.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				try{
				    // Create a connection with the database.
					Class.forName("com.mysql.cj.jdbc.Driver");
					Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BLOOD_DONATION",
							"root","");
					String SSN = textField_3.getText(); // Store the user's input.
					// Call eInfo_Donor with the given donor's SSN as a parameter.
					String sql1="CALL eInfo_Donor("+SSN + ");";
					PreparedStatement stm = con.prepareStatement(sql1);
	
					ResultSet rs =stm.executeQuery(sql1); // Execute sql1.
					table.setModel(DbUtils.resultSetToTableModel(rs)); // Display the result.
	
			}catch(Exception e1) {
				System.out.println(e1.getMessage());
			}
			}
		});
		btnNewButton_6.setBounds(335, 350, 110, 22);
		contentPane.add(btnNewButton_6);
		
		JButton btnNewButton_7 = new JButton("Locations of Blood Banks Having Blood Type:");
		btnNewButton_7.setBackground(Color.WHITE);
		btnNewButton_7.setFont(new Font("Times New Roman", Font.PLAIN, 16));
		btnNewButton_7.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				try{
				    // Create a connection with the database.
					Class.forName("com.mysql.cj.jdbc.Driver");
					Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BLOOD_DONATION",
							"root","");
					Object type = comboBox_1.getSelectedItem(); // Store the user's input.
					// Call LOCATIONS procedure with the given blood type as a parameter.
					String sql="CALL LOCATIONS ('"+type+"');";
					PreparedStatement stm = con.prepareStatement(sql);
	
					ResultSet rs =stm.executeQuery(sql); // Execute sql.
					table.setModel(DbUtils.resultSetToTableModel(rs)); // Display the result.
	
			}catch(Exception e1) {
				System.out.println(e1.getMessage());
			}
			}
		});
		btnNewButton_7.setBounds(10, 179, 435, 28);
		contentPane.add(btnNewButton_7);
		
		JLabel lblNewLabel_1 = new JLabel("Quantity of a Blood Type:");
		lblNewLabel_1.setFont(new Font("Times New Roman", Font.PLAIN, 22));
		lblNewLabel_1.setBounds(207, 72, 242, 21);
		contentPane.add(lblNewLabel_1);
		
		JComboBox comboBox = new JComboBox();
		comboBox.setBackground(Color.WHITE);
		comboBox.setFont(new Font("Times New Roman", Font.PLAIN, 22));
		comboBox.setModel(new DefaultComboBoxModel(new String[] {"A+", "A-", "B+", "B-", "AB+", "AB-", "O+", "O-"}));
		comboBox.setBounds(246, 110, 54, 22);
		contentPane.add(comboBox);
		
		
		
		JLabel lblNewLabel_2 = new JLabel("Employee's Role: ");
		lblNewLabel_2.setFont(new Font("Times New Roman", Font.PLAIN, 22));
		lblNewLabel_2.setBounds(10, 68, 171, 28);
		contentPane.add(lblNewLabel_2);
		
		textField = new JTextField();
		textField.setBackground(Color.WHITE);
		textField.setFont(new Font("Times New Roman", Font.PLAIN, 22));
		textField.setBounds(10, 111, 86, 20);
		contentPane.add(textField);
		textField.setColumns(10);
		
		JScrollPane scrollPane = new JScrollPane();
		scrollPane.setBounds(470, 32, 490, 459);
		contentPane.add(scrollPane);
		
		table = new JTable();
		scrollPane.setViewportView(table);
		
		
		JButton btnNewButton_3 = new JButton("SEARCH");
		btnNewButton_3.setBackground(Color.WHITE);
		btnNewButton_3.setFont(new Font("Times New Roman", Font.PLAIN, 16));
		btnNewButton_3.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				try{
				    // Create a connection with the database.
				    Class.forName("com.mysql.cj.jdbc.Driver");
					Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BLOOD_DONATION",
							"root","");
					String name = textField.getText(); // Store the user's input.
					// Call ROLE procedure with the given employee's name as a parameter.
					String sql=" CALL ROLE( '"+name+"');";
					PreparedStatement stm = con.prepareStatement(sql);
	
					ResultSet rs =stm.executeQuery(sql); // Execute sql.
					table.setModel(DbUtils.resultSetToTableModel(rs)); // Display the result.
	
			}catch(Exception e1) {
				System.out.println(e1.getMessage());
			}

			}
		});
		btnNewButton_3.setBounds(106, 111, 110, 22);
		contentPane.add(btnNewButton_3);
		
		JButton btnNewButton_4 = new JButton("SEARCH");
		btnNewButton_4.setBackground(Color.WHITE);
		btnNewButton_4.setFont(new Font("Times New Roman", Font.PLAIN, 16));
		btnNewButton_4.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				try{
				    // Create a connection with the database.
					Class.forName("com.mysql.cj.jdbc.Driver");
					Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BLOOD_DONATION",
							"root","");
					Object type = comboBox.getSelectedItem(); // Store the user's input.
					// Call QUANTITY_OF procedure with the given blood type as a parameter.
					String sql="CALL QUANTITY_OF('"+type+"');";
					PreparedStatement stm = con.prepareStatement(sql);
	
					ResultSet rs =stm.executeQuery(sql); // Execute sql.
					table.setModel(DbUtils.resultSetToTableModel(rs)); // Display the result.
	
			}catch(Exception e1) {
				System.out.println(e1.getMessage());
			}
			}
		});
		btnNewButton_4.setBounds(310, 111, 110, 22);
		contentPane.add(btnNewButton_4);
		
		JComboBox comboBox_2 = new JComboBox();
		comboBox_2.setBackground(Color.WHITE);
		comboBox_2.setFont(new Font("Times New Roman", Font.PLAIN, 22));
		comboBox_2.setModel(new DefaultComboBoxModel(new String[] {"Employees", "Donors", "Patients", "Blood Banks", "Blood Stocks", "Blood Units", "Works", "Gives", "Takes", "Contians","People", "Roles"}));
		comboBox_2.setBounds(251, 428, 144, 32);
		contentPane.add(comboBox_2);
		
		JLabel lblNewLabel_6 = new JLabel("All Records From: ");
		lblNewLabel_6.setFont(new Font("Times New Roman", Font.PLAIN, 22));
		lblNewLabel_6.setBounds(246, 382, 228, 28);
		contentPane.add(lblNewLabel_6);
		
		JLabel lblNewLabel_7 = new JLabel("(Enter Name)");
		lblNewLabel_7.setFont(new Font("Times New Roman", Font.ITALIC, 16));
		lblNewLabel_7.setBounds(10, 88, 132, 22);
		contentPane.add(lblNewLabel_7);
		
		JLabel lblNewLabel_8 = new JLabel("(Enter time)");
		lblNewLabel_8.setFont(new Font("Times New Roman", Font.ITALIC, 16));
		lblNewLabel_8.setBounds(10, 327, 96, 20);
		contentPane.add(lblNewLabel_8);
		
		JLabel lblNewLabel_9 = new JLabel("(Enter Donor's SSN)");
		lblNewLabel_9.setFont(new Font("Times New Roman", Font.ITALIC, 16));
		lblNewLabel_9.setBounds(246, 321, 152, 20);
		contentPane.add(lblNewLabel_9);
		
		JLabel lblNewLabel_10 = new JLabel("(Enter Patient's SSN)");
		lblNewLabel_10.setFont(new Font("Times New Roman", Font.ITALIC, 16));
		lblNewLabel_10.setBounds(10, 404, 189, 28);
		contentPane.add(lblNewLabel_10);
		comboBox_2.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				try{
				    // Create a connection with the database.
					Class.forName("com.mysql.cj.jdbc.Driver");
					Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BLOOD_DONATION",
							"root","");
					Object type = comboBox_2.getSelectedItem(); // Store the user's input.
					if (type.equals("Employees")) { // If the type was Employee.
						String sql= "select * from employees;"; // Select all the records from the EMPLOYEES relation.
						PreparedStatement stm = con.prepareStatement(sql);
						ResultSet rs =stm.executeQuery(sql); // Execute sql.
						table.setModel(DbUtils.resultSetToTableModel(rs)); // Display the Result.
					}else if (type.equals("Donors")) {
						String sql= "select * from donors;";
						PreparedStatement stm = con.prepareStatement(sql);
						ResultSet rs =stm.executeQuery(sql);
						table.setModel(DbUtils.resultSetToTableModel(rs));
					}else if (type.equals("Patients")) {
						String sql= "select * from patients;";
						PreparedStatement stm = con.prepareStatement(sql);
						ResultSet rs =stm.executeQuery(sql);
						table.setModel(DbUtils.resultSetToTableModel(rs));
					}else if (type.equals("Blood Banks")) {
						String sql= "select * from bloodBanks;";
						PreparedStatement stm = con.prepareStatement(sql);
						ResultSet rs =stm.executeQuery(sql);
						table.setModel(DbUtils.resultSetToTableModel(rs));
					}else if (type.equals("Blood Stocks")) {
						String sql= "select * from bloodStocks;";
						PreparedStatement stm = con.prepareStatement(sql);
						ResultSet rs =stm.executeQuery(sql);
						table.setModel(DbUtils.resultSetToTableModel(rs));
					}else if (type.equals("Blood Units")) {
						String sql= "select * from bloodUnits;";
						PreparedStatement stm = con.prepareStatement(sql);
						ResultSet rs =stm.executeQuery(sql);
						table.setModel(DbUtils.resultSetToTableModel(rs));
					}else if (type.equals("Works")) {
						String sql= "select * from worksRlts;";
						PreparedStatement stm = con.prepareStatement(sql);
						ResultSet rs =stm.executeQuery(sql);
						table.setModel(DbUtils.resultSetToTableModel(rs));
					}else if (type.equals("Gives")) {
						String sql= "select * from givesRlts;";
						PreparedStatement stm = con.prepareStatement(sql);
						ResultSet rs =stm.executeQuery(sql);
						table.setModel(DbUtils.resultSetToTableModel(rs));
					}else if (type.equals("Takes")) {
						String sql= "select * from takesRlts;";
						PreparedStatement stm = con.prepareStatement(sql);
						ResultSet rs =stm.executeQuery(sql);
						table.setModel(DbUtils.resultSetToTableModel(rs));
					}else if (type.equals("Contians")) {
						String sql= "select * from ContainsRlts;";
						PreparedStatement stm = con.prepareStatement(sql);
						ResultSet rs =stm.executeQuery(sql);
						table.setModel(DbUtils.resultSetToTableModel(rs));
					}else if (type.equals("People")){
						String sql= "select * from people;";
						PreparedStatement stm = con.prepareStatement(sql);
						ResultSet rs =stm.executeQuery(sql);
						table.setModel(DbUtils.resultSetToTableModel(rs));
					}
					else {
						String sql= "select * from roleRlts;";
						PreparedStatement stm = con.prepareStatement(sql);
						ResultSet rs =stm.executeQuery(sql);
						table.setModel(DbUtils.resultSetToTableModel(rs));
					} //last one for role retrieve
					
	
			}catch(Exception e1) {
				System.out.println(e1.getMessage());
			}
			}
		});
		
		
		
		;
		
		
		
		
		
		
		
		
	
		
		
		
		
	}
}
