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

import java.awt.SystemColor;

public class eDelete extends JFrame {

	private JPanel contentPane;
	private JTextField textField;
	private JTextField textField_1;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
				    //display the frame
					eDelete frame = new eDelete();
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
	public eDelete() {
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
		PlaneImage.setBounds(-252, -209, 1142, 959); 
		WelcomeImage.add(PlaneImage);
		PlaneImage.setHorizontalAlignment(SwingConstants.CENTER);
		PlaneImage.setIcon(new ImageIcon(homePage.class.getResource("/Images/empDelete.jpeg")));
		
		JLabel lblNewLabel = new JLabel("Enter the");
		lblNewLabel.setFont(new Font("Tahoma", Font.BOLD, 25));
		lblNewLabel.setBounds(761, 43, 494, 47);
		contentPane.add(lblNewLabel);
		
		JLabel lblNewLabel_1 = new JLabel("Name:");
		lblNewLabel_1.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		lblNewLabel_1.setBounds(777, 156, 100, 34);
		contentPane.add(lblNewLabel_1);
		
		JLabel lblNewLabel_2 = new JLabel("SSN:");
		lblNewLabel_2.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		lblNewLabel_2.setBounds(777, 272, 76, 34);
		contentPane.add(lblNewLabel_2);
		
		textField = new JTextField();
		textField.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		textField.setBackground(SystemColor.menu);
		textField.setBounds(730, 201, 180, 34);
		contentPane.add(textField);
		textField.setColumns(10);
		
		textField_1 = new JTextField();
		textField_1.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		textField_1.setBackground(SystemColor.menu);
		textField_1.setBounds(730, 318, 180, 34);
		contentPane.add(textField_1);
		textField_1.setColumns(10);
		
		//a button to go back to previous page 
		JButton GoBackButton = new JButton("Go Back");
		GoBackButton.setFont(new Font("Times New Roman", Font.BOLD, 24));
		GoBackButton.setForeground(Color.BLACK);
		GoBackButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				dispose();
			
			}
		});
		GoBackButton.setBounds(823, 449, 137, 59);
		contentPane.add(GoBackButton);
		
		JButton btnNewButton = new JButton("Delete");
		btnNewButton.setFont(new Font("Times New Roman", Font.BOLD, 24));
		btnNewButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
			    //this action deletes an employee from the database
				try{
				    //make connection with the database
					Class.forName("com.mysql.cj.jdbc.Driver");
					Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BLOOD_DONATION",
							"root","");
					//take input from the user
					String name= textField.getText();
					String SSN = textField_1.getText();
					Statement stm = con.createStatement();
					//statement to delete the employee based on the SSN entered by the user
					String sql = "DELETE FROM EMPLOYEE WHERE eSSN="+SSN+";";
					//check if the entered name exists in PERSON
					String sql1 = "SELECT name FROM PERSON WHERE SSN = "+SSN+";";
					//check if the entered SSN exists in EMPLOYEE
					String sql2 = "SELECT eSSN FROM EMPLOYEE WHERE eSSN="+SSN+";";
					
					
					try {
						ResultSet rs1 = stm.executeQuery(sql2);
						//DO NOT DELETE FROM A PERSON WHO IS NOT AN EMPLOYEE
						
						if (rs1.next()) { //If the entered SSN exists in EMPLOYEE 
							ResultSet rs = stm.executeQuery(sql1); //check if entered name exists in PERSON 
							//if the entered name exists in PERSON and is compatible with the entered SSN
							if (rs.next() && rs.getString(1).equals(name)) { 
							    //delete from EMPLOYEE
								stm.executeUpdate(sql);
								JOptionPane.showMessageDialog(null, "Deleted Successfully!");
								dispose();
								bloodDonation hp=new bloodDonation();
								hp.setIconImage(ImageIO.read(getClass().getResourceAsStream("/Images/appImg.jpg")));
								hp.show();
							}else {
							    //if the name and SSN do not belong to the same person, show this error
								JOptionPane.showMessageDialog(null, "Error, Try Again!");
							}
							
						} else {
						    //if the entered SSN, does not exist in the employee records, show this error
							JOptionPane.showMessageDialog(null, "Error, Non-Existent SSN!");
						}
					}catch(Exception e2) {
					    //if the entered data does not belong to the correct domain 
					    //or if the fields are left empty, show this error 
						JOptionPane.showMessageDialog(null, "Invalid! Fill all information properly.");
					}
					
				} catch(Exception e1) {
				    //if the connection fails, raise an exception
					System.out.println(e1.getMessage());
				}
			}
		});
		btnNewButton.setBounds(659, 449, 142, 59);
		contentPane.add(btnNewButton);
		
		JLabel lblNewLabel_3 = new JLabel("Employee's Information:");
		lblNewLabel_3.setFont(new Font("Tahoma", Font.BOLD, 25));
		lblNewLabel_3.setBounds(655, 79, 327, 55);
		contentPane.add(lblNewLabel_3);
		
		
	}
}
