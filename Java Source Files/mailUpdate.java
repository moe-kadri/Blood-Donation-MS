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
import javax.swing.JTextField;
import javax.swing.SwingConstants;
import javax.swing.JLabel;
import javax.swing.JOptionPane;

import java.awt.Font;
import java.awt.SystemColor;

public class mailUpdate extends JFrame {

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
					mailUpdate frame = new mailUpdate();
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
	public mailUpdate() {
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
		PlaneImage.setBounds(-352, -223, 1242, 1054); 
		WelcomeImage.add(PlaneImage);
		PlaneImage.setHorizontalAlignment(SwingConstants.CENTER);
		PlaneImage.setIcon(new ImageIcon(homePage.class.getResource("/Images/mailUpdate.jpeg")));
		
		
		JLabel lblNewLabel1 = new JLabel("Enter Your Information:");
		lblNewLabel1.setFont(new Font("Tahoma", Font.BOLD, 25));
		lblNewLabel1.setBounds(593, 42, 494, 47);
		contentPane.add(lblNewLabel1);
		
		textField = new JTextField();
		textField.setBackground(SystemColor.menu);
		textField.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		textField.setBounds(593, 166, 302, 34);
		contentPane.add(textField);
		textField.setColumns(10);
		
		JLabel lblNewLabel = new JLabel("SSN:");
		lblNewLabel.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		lblNewLabel.setBounds(593, 127, 96, 28);
		contentPane.add(lblNewLabel);
		
		JLabel lblNewLabel_1 = new JLabel("Enter Your New Email: ");
		lblNewLabel_1.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		lblNewLabel_1.setBounds(593, 254, 255, 28);
		contentPane.add(lblNewLabel_1);
		
		textField_1 = new JTextField();
		textField_1.setBackground(SystemColor.menu);
		textField_1.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		textField_1.setBounds(593, 293, 302, 34);
		contentPane.add(textField_1);
		textField_1.setColumns(10);
		
		//a button to go back to previous frame
		JButton GoBackButton = new JButton("Go Back");
		GoBackButton.setFont(new Font("Times New Roman", Font.BOLD, 24));
		GoBackButton.setBackground(SystemColor.menu);
		GoBackButton.setForeground(Color.BLACK);
		GoBackButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				dispose();
				
			
			}
		});
		GoBackButton.setBounds(768, 447, 127, 37);
		contentPane.add(GoBackButton);
		
		JButton btnNewButton = new JButton("Update");
		btnNewButton.setFont(new Font("Times New Roman", Font.BOLD, 24));
		btnNewButton.setBackground(SystemColor.menu);
		btnNewButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
			    //this action updates the email of an employee given his/her SSN
				try{
				    //create connection to the database
					Class.forName("com.mysql.cj.jdbc.Driver");
					Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BLOOD_DONATION",
							"root","");
					
					
					Statement stm = con.createStatement();
					//get input from the user
					String SSN= textField.getText();
					String newEmail = textField_1.getText();
					//statement to update the employee's email based on the given SSN
					String sql= "UPDATE EMPLOYEE SET Email = "+"'"+newEmail+"' WHERE eSSN= "+SSN+";";
					//to check if the entered SSN exists in the database
					String sql1= "SELECT * FROM EMPLOYEE WHERE ESSN="+SSN+";";
					try {
						ResultSet rs = stm.executeQuery(sql1);
						if (rs.next()) { //if the entered SSN exists in the database
						    //perform the update operation
							stm.executeUpdate(sql);
							JOptionPane.showMessageDialog(null, "Email Updated Successfully!");
							dispose();
						} else {
						    //otherwise, show this error
							JOptionPane.showMessageDialog(null, "Invalid! Non-Existing Employee.");
						}
						
					}catch(Exception e2) {
					    //if the entered data does not belong to the correct domain
					    //or if the fields were left empty, show this error
						JOptionPane.showMessageDialog(null, "Invalid! Fill all information properly.");
					}
					
				} catch(Exception e1) {
				    //if the connection fails, raise an exception
					System.out.println(e1.getMessage());
				}
			}
		});
		btnNewButton.setBounds(593, 447, 127, 37);
		contentPane.add(btnNewButton);
		
		
	}
}
