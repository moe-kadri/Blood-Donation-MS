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
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JTextField;
import javax.swing.SwingConstants;
import javax.swing.border.EmptyBorder;
import java.awt.SystemColor;

public class bDelete extends JFrame {

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
					//create a frame
					bDelete frame = new bDelete();
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
	public bDelete() {
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
		PlaneImage.setBounds(-350, -267, 1242, 1054); 
		WelcomeImage.add(PlaneImage);
		PlaneImage.setHorizontalAlignment(SwingConstants.CENTER);
		PlaneImage.setIcon(new ImageIcon(homePage.class.getResource("/Images/bank1.jpeg")));
		
		JLabel lblNewLabel = new JLabel("Enter the Bank's Information:");
		lblNewLabel.setFont(new Font("Tahoma", Font.BOLD, 25));
		lblNewLabel.setBounds(576, 40, 494, 47);
		contentPane.add(lblNewLabel);
		
		JLabel lblNewLabel_1 = new JLabel("Name:");
		lblNewLabel_1.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		lblNewLabel_1.setBounds(580, 129, 87, 34);
		contentPane.add(lblNewLabel_1);
		
		JLabel lblNewLabel_2 = new JLabel("Code:");
		lblNewLabel_2.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		lblNewLabel_2.setBounds(580, 263, 76, 34);
		contentPane.add(lblNewLabel_2);
		
		textField = new JTextField();
		textField.setBackground(SystemColor.menu);
		textField.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		textField.setBounds(580, 174, 325, 34);
		contentPane.add(textField);
		textField.setColumns(10);
		
		textField_1 = new JTextField();
		textField_1.setBackground(SystemColor.menu);
		textField_1.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		textField_1.setBounds(580, 308, 325, 34);
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
		GoBackButton.setBounds(759, 465, 146, 47);
		contentPane.add(GoBackButton);
		
		JButton btnNewButton = new JButton("Delete");
		btnNewButton.setFont(new Font("Times New Roman", Font.BOLD, 24));
		btnNewButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
			    //this action deletes a blood bank with its corresponding blood stocks
				try{
					//make connection with the database
					Class.forName("com.mysql.cj.jdbc.Driver");
					Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BLOOD_DONATION",
							"root","");
					//take input from the user 
					String name= textField.getText();
					String code = textField_1.getText();
					Statement stm = con.createStatement();
					//delete blood bank according to the code entered by the user
					String sql = "DELETE FROM BLOOD_BANK WHERE bCode="+code+";";
					//delete all the bank's blood stocks 
					String sql1 = "DELETE FROM BLOOD_STOCK WHERE sCode IN (SELECT sCode FROM CONTAINS WHERE bCode = "+code+");";
					//check if the name entered by the user exists in the blood bank relation
					String sql2 = "SELECT bName FROM BLOOD_BANK WHERE bCode = "+code+";";
					try {
						ResultSet rs = stm.executeQuery(sql2);
						//if the blood bank name indeed exists
						if (rs.next() && rs.getString(1).equals(name)) { 
							//perfom the deletions
							stm.executeUpdate(sql1);
							stm.executeUpdate(sql);
							JOptionPane.showMessageDialog(null, "Deleted Successfully!");
							dispose();
							//go back to the blood donation frame
							bloodDonation hp=new bloodDonation();
							hp.setIconImage(ImageIO.read(getClass().getResourceAsStream("/Images/appImg.jpg")));
							hp.show();
							
						} else {
							//else, display an error
							JOptionPane.showMessageDialog(null, "Error, Try Again!");
						}
					}catch(Exception e2) {
						//if the entered data does not belong to the correct domain, display this error
						JOptionPane.showMessageDialog(null, "Invalid! Fill all information properly.");
					}
					
				} catch(Exception e1) {
					System.out.println(e1.getMessage());
				}
			}
		});
		btnNewButton.setBounds(580, 465, 146, 47);
		contentPane.add(btnNewButton);
	}

}
