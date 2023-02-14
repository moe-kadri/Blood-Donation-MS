package bloodDonation;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.EventQueue;
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
import javax.swing.border.EmptyBorder;
import javax.swing.JLabel;
import javax.swing.JOptionPane;

import java.awt.Font;
import javax.swing.JTextField;
import javax.swing.SwingConstants;
import javax.swing.JComboBox;
import java.awt.SystemColor;

public class hrsUpdate extends JFrame {

	private JPanel contentPane;
	private JTextField textField;
	private JLabel lblNewLabel;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
				    //display the frame
					hrsUpdate frame = new hrsUpdate();
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
	public hrsUpdate() {
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
		PlaneImage.setBounds(-534, -299, 1376, 1124);
		WelcomeImage.add(PlaneImage);
		PlaneImage.setHorizontalAlignment(SwingConstants.CENTER);
		PlaneImage.setIcon(new ImageIcon(homePage.class.getResource("/Images/hrs3.jpeg")));
		
		lblNewLabel = new JLabel("Enter Employee's Information:");
		lblNewLabel.setBounds(411, 27, 446, 58);
		contentPane.add(lblNewLabel);
		lblNewLabel.setFont(new Font("Tahoma", Font.BOLD, 25));
		
		JLabel lblNewLabel = new JLabel("SSN: ");
		lblNewLabel.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		lblNewLabel.setBounds(411, 123, 86, 25);
		contentPane.add(lblNewLabel);
		
		textField = new JTextField();
		textField.setBackground(SystemColor.menu);
		textField.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		textField.setBounds(411, 159, 122, 28);
		contentPane.add(textField);
		textField.setColumns(10);
		
		JLabel lblNewLabel_1 = new JLabel("Enter the start time of your new shift:  ");
		lblNewLabel_1.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		lblNewLabel_1.setBounds(411, 214, 425, 34);
		contentPane.add(lblNewLabel_1);
		
		JComboBox comboBox = new JComboBox();
		comboBox.setBackground(SystemColor.menu);
		comboBox.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		comboBox.setModel(new DefaultComboBoxModel(new String[] {"08:00:00", "14:00:00", "20:00:00", "02:00:00"}));
		comboBox.setBounds(411, 249, 153, 39);
		contentPane.add(comboBox);
		
		JLabel lblNewLabel_2 = new JLabel("Enter the end time of your new shift: ");
		lblNewLabel_2.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		lblNewLabel_2.setBounds(411, 318, 397, 34);
		contentPane.add(lblNewLabel_2);
		
		JComboBox comboBox_1 = new JComboBox();
		comboBox_1.setBackground(SystemColor.menu);
		comboBox_1.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		comboBox_1.setModel(new DefaultComboBoxModel(new String[] {"08:00:00", "14:00:00", "20:00:00", "02:00:00"}));
		comboBox_1.setBounds(411, 352, 153, 39);
		contentPane.add(comboBox_1);
		
		//a button to go back to the previous frame
		JButton GoBackButton = new JButton("Go Back");
		GoBackButton.setFont(new Font("Times New Roman", Font.BOLD, 24));
		GoBackButton.setForeground(Color.BLACK);
		GoBackButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				dispose();
			
			
			}
		});
		GoBackButton.setBounds(807, 458, 153, 54);
		contentPane.add(GoBackButton);
		
		JButton btnNewButton = new JButton("Update");
		btnNewButton.setFont(new Font("Times New Roman", Font.BOLD, 24));
		btnNewButton.setBackground(SystemColor.menu);
		btnNewButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
			    //this action updates the working hours of an employee to another time
				try{
				    //create connection to the database
					Class.forName("com.mysql.cj.jdbc.Driver");
					Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BLOOD_DONATION",
							"root","");
					
					
					Statement stm = con.createStatement();
					//get input from the user
					String SSN= textField.getText();
					Object ShiftBegins = comboBox.getSelectedItem();
					Object ShiftEnds = comboBox_1.getSelectedItem();
					//update the employee's shift to the given time
					String sql= "UPDATE EMPLOYEE SET ShiftBegins = "+"'"+ShiftBegins+"', ShiftEnds= '"+ShiftEnds+"' WHERE eSSN = "+SSN+";";
					//check if the entered SSN exists in PERSON
					String sql1= "SELECT * FROM PERSON WHERE SSN="+SSN+";";
					try {
						ResultSet rs = stm.executeQuery(sql1);
						if (rs.next()) {//if the SSN exists in PERSON
							stm.executeUpdate(sql); //Perfom the update operation
							JOptionPane.showMessageDialog(null, "Shift Updated Successfully!");
							dispose();
						} else {
						    //otherwise diplay this error
							JOptionPane.showMessageDialog(null, "Invalid! Non-Existing Employee.");
						}
						
					}catch(Exception e2) {
					    //if the entered data does not belong to the correct domain or 
					    //if the fields are left empty, show this error
						JOptionPane.showMessageDialog(null, "Invalid! Fill all information properly.");
						
					}
					
				} catch(Exception e1) {
				    //if the connection fails, raise an exception
					System.out.println(e1.getMessage());
				}
			}
		});
		btnNewButton.setBounds(576, 458, 153, 54);
		contentPane.add(btnNewButton);
		
		
		
		
	}
}
