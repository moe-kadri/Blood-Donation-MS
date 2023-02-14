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

public class statusUpdate extends JFrame {

	private JPanel contentPane;
	private JTextField textField;
	private JTextField textField_1;
	private JTextField textField_2;
	private JLabel lblNewLabel;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					statusUpdate frame = new statusUpdate();
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
	public statusUpdate() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 984, 560);
		contentPane = new JPanel();
		contentPane.setBackground(Color.WHITE);
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JPanel WelcomeImage = new JPanel();
		WelcomeImage.setBackground(Color.WHITE);
		WelcomeImage.setBounds(0, 0, 440, 662);
		contentPane.add(WelcomeImage);
		WelcomeImage.setLayout(null);
		
		JLabel PlaneImage = new JLabel();
		PlaneImage.setBounds(-76, -326, 678, 1197); 
		WelcomeImage.add(PlaneImage);
		PlaneImage.setHorizontalAlignment(SwingConstants.CENTER);
		PlaneImage.setIcon(new ImageIcon(homePage.class.getResource("/Images/status1.jpg")));
		
		lblNewLabel = new JLabel("Enter the Patient's Information:");
		lblNewLabel.setBounds(558, 11, 446, 58);
		contentPane.add(lblNewLabel);
		lblNewLabel.setFont(new Font("Tahoma", Font.BOLD, 25));

		
		JLabel lblNewLabel = new JLabel("SSN: ");
		lblNewLabel.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		lblNewLabel.setBounds(558, 91, 105, 28);
		contentPane.add(lblNewLabel);
		
		textField = new JTextField();
		textField.setBackground(SystemColor.menu);
		textField.setBounds(558, 130, 191, 28);
		contentPane.add(textField);
		textField.setColumns(10);
		
		JLabel lblNewLabel_1 = new JLabel("Blood Unit Code:");
		lblNewLabel_1.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		lblNewLabel_1.setBounds(558, 296, 220, 28);
		contentPane.add(lblNewLabel_1);
		
		textField_1 = new JTextField();
		textField_1.setBackground(SystemColor.menu);
		textField_1.setBounds(558, 335, 191, 28);
		contentPane.add(textField_1);
		textField_1.setColumns(10);
		
		JLabel lblNewLabel_2 = new JLabel("Employee's SSN:");
		lblNewLabel_2.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		lblNewLabel_2.setBounds(558, 189, 191, 28);
		contentPane.add(lblNewLabel_2);
		
		textField_2 = new JTextField();
		textField_2.setBackground(SystemColor.menu);
		textField_2.setBounds(558, 228, 191, 28);
		contentPane.add(textField_2);
		textField_2.setColumns(10);
		
		JButton GoBackButton = new JButton("Go Back");
		GoBackButton.setFont(new Font("Times New Roman", Font.BOLD, 24));
		GoBackButton.setBackground(SystemColor.menu);
		GoBackButton.setForeground(Color.BLACK);
		GoBackButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				dispose();
				
			
			}
		});
		GoBackButton.setBounds(824, 464, 136, 37);
		contentPane.add(GoBackButton);
		
		JButton btnNewButton = new JButton("Update");
		btnNewButton.setFont(new Font("Times New Roman", Font.BOLD, 24));
		btnNewButton.setBackground(SystemColor.menu);
		btnNewButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				
				try{
				    // Create a connection with the database.
					Class.forName("com.mysql.cj.jdbc.Driver");
					Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BLOOD_DONATION",
							"root","");
					
					
					Statement stm = con.createStatement();
					String SSN= textField.getText(); // Store the user's input.
					String UCode = textField_1.getText(); // Store the user's input.
					String eSSN = textField_2.getText(); // Store the user's input.
					// Insert into the Gives relation a record with the given patient's SSN and employee's SSN.
					String sql= "INSERT INTO GIVES VALUES("+SSN+", "+eSSN +") ;";
					// Update the patient's emergencyLvl to null after recieving a blood unit.
					String sql1= "UPDATE PATIENT SET emergencyLvl= null WHERE pSSN="+SSN+";";
					// Select the blood stock's code where a given blood unit is stored.
					String sql2="SELECT sCode FROM BLOOD_UNIT WHERE Ucode= "+UCode+";";
					// Select the patient's info with the given SSN.
					String sql3= "SELECT * FROM PATIENT WHERE pSSN= "+SSN+";";
					// Delete the blood unit that was given to the patient.
					String sql5= "DELETE FROM BLOOD_UNIT WHERE Ucode= "+UCode+";";
					try {
						ResultSet rs = stm.executeQuery(sql3); // Execute sql3.
						if( rs.next()) { // If the patient exists.
							ResultSet rs2= stm.executeQuery(sql2); // Execute sql2.
							if(rs2.next()) { // If the blood unit exists.
								int sCode= rs2.getInt(1); // Store the blood stock's code where it was stored.
								// Decrease the total quantity of the blood units strored in that blood stock by 1.
								String sql4= "UPDATE BLOOD_STOCK SET quantity= quantity - 1 WHERE sCode= "+sCode;
								stm.executeUpdate(sql); // Execute sql.
								stm.executeUpdate(sql1); // Execute sql1.
								stm.executeUpdate(sql4); // Execute sql4.
								stm.executeUpdate(sql5); // Execute sql5.
								JOptionPane.showMessageDialog(null, "Patient Status Updated Successfully!");
								dispose();
							} else {
								JOptionPane.showMessageDialog(null, "Invalid! Non-Existing Blood Unit.");
							}
						} else {
							JOptionPane.showMessageDialog(null, "Invalid! Non-Existing Patient.");
						}
						
					}catch(Exception e2) {
						JOptionPane.showMessageDialog(null, "Invalid! Fill all information properly.");
						
					}
					
				} catch(Exception e1) {
					System.out.println(e1.getMessage());
				}
				
			}
		});
		btnNewButton.setBounds(558, 464, 136, 37);
		contentPane.add(btnNewButton);
		
		
		
		
	}

}
