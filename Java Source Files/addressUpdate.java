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

public class addressUpdate extends JFrame {

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
					//create frame
					addressUpdate frame = new addressUpdate();
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
	public addressUpdate() {
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
		PlaneImage.setBounds(-308, -267, 1242, 1054); 
		WelcomeImage.add(PlaneImage);
		PlaneImage.setHorizontalAlignment(SwingConstants.CENTER);
		PlaneImage.setIcon(new ImageIcon(homePage.class.getResource("/Images/address2.jpeg")));
		
		//button to go back to previous page
		JButton GoBackButton = new JButton("Go Back");
		GoBackButton.setFont(new Font("Times New Roman", Font.BOLD, 24));
		GoBackButton.setForeground(Color.BLACK);
		GoBackButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				dispose();
	
			
			}
		});
		GoBackButton.setBounds(810, 452, 134, 49);
		contentPane.add(GoBackButton);
		
		JLabel lblNewLabel1 = new JLabel("Enter Your Information:");
		lblNewLabel1.setFont(new Font("Tahoma", Font.BOLD, 25));
		lblNewLabel1.setBounds(642, 42, 494, 47);
		contentPane.add(lblNewLabel1);
		
		JButton btnNewButton = new JButton("Update");
		btnNewButton.setFont(new Font("Times New Roman", Font.BOLD, 24));
		btnNewButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
			    //this action updates the address of an employee
				try{
					//make connection
					Class.forName("com.mysql.cj.jdbc.Driver");
					Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BLOOD_DONATION",
							"root","");
					
					
					Statement stm = con.createStatement();
					//take input from user
					String SSN= textField.getText();
					String newAddress = textField_1.getText();
					//update address according to the SSN
					String sql= "UPDATE PERSON SET ADDRESS = "+"'"+newAddress+"' WHERE SSN= "+SSN+";";
					//check if the SSN exists in PERSON entity
					String sql1= "SELECT * FROM PERSON WHERE SSN="+SSN+";";
					try {
						ResultSet rs = stm.executeQuery(sql1);
						if (rs.next()) { // if not empty i.e if the SSN indeed exists
							stm.executeUpdate(sql);
							JOptionPane.showMessageDialog(null, "Address Updated Successfully!");
							dispose();
						} else {
							JOptionPane.showMessageDialog(null, "Invalid! Non-Existing Person.");
						}
						
					}catch(Exception e2) {
						//if entered data does not belong to the correct domain, display this message
						JOptionPane.showMessageDialog(null, "Invalid! Fill all information properly.");
					}
					
				} catch(Exception e1) {
					System.out.println(e1.getMessage());
				}
			}
			
		});
		btnNewButton.setBounds(642, 452, 134, 49);
		contentPane.add(btnNewButton);
		
		JLabel lblNewLabel = new JLabel("SSN: ");
		lblNewLabel.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		lblNewLabel.setBounds(642, 117, 94, 25);
		contentPane.add(lblNewLabel);
		
		textField = new JTextField();
		textField.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		textField.setBackground(SystemColor.menu);
		textField.setBounds(642, 160, 302, 35);
		contentPane.add(textField);
		textField.setColumns(10);
		
		JLabel lblNewLabel_1 = new JLabel("New Address: ");
		lblNewLabel_1.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		lblNewLabel_1.setBounds(642, 249, 318, 28);
		contentPane.add(lblNewLabel_1);
		
		textField_1 = new JTextField();
		textField_1.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		textField_1.setBackground(SystemColor.menu);
		textField_1.setBounds(642, 304, 302, 35);
		contentPane.add(textField_1);
		textField_1.setColumns(10);
	}

}
