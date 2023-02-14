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

public class phoneUpdate extends JFrame {

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
					phoneUpdate frame = new phoneUpdate();
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
	public phoneUpdate() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 984, 560);
		contentPane = new JPanel();
		contentPane.setBackground(Color.WHITE);
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JPanel WelcomeImage = new JPanel();
		WelcomeImage.setBackground(Color.WHITE);
		WelcomeImage.setBounds(0, 0, 570, 662);
		contentPane.add(WelcomeImage);
		WelcomeImage.setLayout(null);
		
		JLabel PlaneImage = new JLabel();
		PlaneImage.setBounds(-352, -223, 1242, 1054); 
		WelcomeImage.add(PlaneImage);
		PlaneImage.setHorizontalAlignment(SwingConstants.CENTER);
		PlaneImage.setIcon(new ImageIcon(homePage.class.getResource("/Images/phoneUpdate.jpeg")));
		
		JLabel lblNewLabel1 = new JLabel("Enter Your Information:");
		lblNewLabel1.setFont(new Font("Tahoma", Font.BOLD, 25));
		lblNewLabel1.setBounds(574, 44, 494, 47);
		contentPane.add(lblNewLabel1);
		
		JButton GoBackButton = new JButton("Go Back");
		GoBackButton.setBackground(SystemColor.menu);
		GoBackButton.setFont(new Font("Times New Roman", Font.BOLD, 24));
		GoBackButton.setForeground(Color.BLACK);
		GoBackButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				dispose();
				
			}
		});
		GoBackButton.setBounds(787, 463, 142, 48);
		contentPane.add(GoBackButton);
		
		JButton btnNewButton = new JButton("Update");
		btnNewButton.setBackground(SystemColor.menu);
		btnNewButton.setFont(new Font("Times New Roman", Font.BOLD, 24));
		btnNewButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				try{
				    // create a connection with the database.
					Class.forName("com.mysql.cj.jdbc.Driver");
					Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BLOOD_DONATION",
							"root","");
					
					
					Statement stm = con.createStatement();
					String SSN= textField.getText(); // To store the user's input.
					String newNb = textField_1.getText(); // To store the user's input.
					// This sql statement updates the user's phone number to the given one.
					String sql= "UPDATE PERSON SET PHONE_NB = "+"'"+newNb+"' WHERE SSN= "+SSN+";";
					// This sql statement checks whether a person with the given SSN exists or not.
					String sql1= "SELECT * FROM PERSON WHERE SSN="+SSN+";";
					try {
						ResultSet rs = stm.executeQuery(sql1);
						if (rs.next()) { // if there is a person with the given SSN.
						    // execute sql. Here we're 100% sure that the person exists and we won't get an error.
							stm.executeUpdate(sql); 
							JOptionPane.showMessageDialog(null, "Phone Number Updated Successfully!");
							dispose(); 
						} else {
							JOptionPane.showMessageDialog(null, "Invalid! Non-Existing Person.");
						}
						
					}catch(Exception e2) {
						JOptionPane.showMessageDialog(null, "Invalid! Fill all information properly.");
					}
					
				} catch(Exception e1) {
					System.out.println(e1.getMessage());
				}
			}
		});
		btnNewButton.setBounds(574, 464, 142, 47);
		contentPane.add(btnNewButton);
		
		JLabel lblNewLabel = new JLabel("SSN: ");
		lblNewLabel.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		lblNewLabel.setBounds(574, 137, 99, 28);
		contentPane.add(lblNewLabel);
		
		textField = new JTextField();
		textField.setBackground(SystemColor.menu);
		textField.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		textField.setBounds(574, 176, 355, 28);
		contentPane.add(textField);
		textField.setColumns(10);
		
		JLabel lblNewLabel_1 = new JLabel("Enter Your New Phone Number: ");
		lblNewLabel_1.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		lblNewLabel_1.setBounds(574, 262, 354, 28);
		contentPane.add(lblNewLabel_1);
		
		textField_1 = new JTextField();
		textField_1.setBackground(SystemColor.menu);
		textField_1.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		textField_1.setBounds(574, 301, 355, 28);
		contentPane.add(textField_1);
		textField_1.setColumns(10);
	}

}
