package bloodDonation;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.EventQueue;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.Connection;
import java.sql.DriverManager;
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

public class bInsert extends JFrame {

	private JPanel contentPane;
	private JTextField textField;
	private JTextField textField_1;
	private JTextField textField_2;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
				    //Create a frame
					bInsert frame = new bInsert();
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
	public bInsert() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 984, 560);
		contentPane = new JPanel();
		contentPane.setBackground(Color.WHITE);
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		//insert an imafe
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
		
		
		JLabel lblNewLabel = new JLabel("Blood Bank's Information:");
		lblNewLabel.setFont(new Font("Tahoma", Font.BOLD, 25));
		lblNewLabel.setBounds(603, 38, 336, 48);
		contentPane.add(lblNewLabel);
		
		JLabel lblNewLabel_1 = new JLabel("Name:");
		lblNewLabel_1.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		lblNewLabel_1.setBounds(603, 112, 75, 28);
		contentPane.add(lblNewLabel_1);
		
		JLabel lblNewLabel_2 = new JLabel("Location:");
		lblNewLabel_2.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		lblNewLabel_2.setBounds(603, 199, 117, 28);
		contentPane.add(lblNewLabel_2);
		
		JLabel lblNewLabel_3 = new JLabel("Code:");
		lblNewLabel_3.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		lblNewLabel_3.setBounds(603, 297, 120, 28);
		contentPane.add(lblNewLabel_3);
		
		textField = new JTextField();
		textField.setBackground(SystemColor.menu);
		textField.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		textField.setBounds(603, 149, 296, 28);
		contentPane.add(textField);
		textField.setColumns(10);
		
		textField_1 = new JTextField();
		textField_1.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		textField_1.setBackground(SystemColor.menu);
		textField_1.setBounds(603, 238, 296, 28);
		contentPane.add(textField_1);
		textField_1.setColumns(10);
		
		textField_2 = new JTextField();
		textField_2.setBackground(SystemColor.menu);
		textField_2.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		textField_2.setBounds(603, 336, 296, 28);
		contentPane.add(textField_2);
		textField_2.setColumns(10);
		
		//a button to go back to the previous page
		JButton GoBackButton = new JButton("Go Back");
		GoBackButton.setFont(new Font("Times New Roman", Font.BOLD, 24));
		GoBackButton.setForeground(Color.BLACK);
		GoBackButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				dispose();
			

			}
		});
		GoBackButton.setBounds(760, 457, 139, 55);
		contentPane.add(GoBackButton);
		
		JButton btnNewButton = new JButton("INSERT");
		btnNewButton.setFont(new Font("Times New Roman", Font.BOLD, 24));
		btnNewButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
			    //this action inserts new blood banks to the database
				try{
				    //make a connection with the database
					Class.forName("com.mysql.cj.jdbc.Driver");
					Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BLOOD_DONATION",
							"root","");
					//take input from the user
					String name= textField.getText();
					String location = textField_1.getText();
					String code = textField_2.getText();
					
					Statement stm = con.createStatement();
					//insert a record to blood bank according to the info entered by the user
					String sql="INSERT INTO BLOOD_BANK"
							+ " VALUES("+code+",'"+name+"','"+location+"');";

					try {
						stm.executeUpdate(sql);
						JOptionPane.showMessageDialog(null, "Inserted Successfully!");
						dispose();
						//go back to blood donation frame
						bloodDonation hp=new bloodDonation();
						hp.setIconImage(ImageIO.read(getClass().getResourceAsStream("/Images/appImg.jpg")));
						hp.show();
					}
					
	
					catch(Exception e2) {
					    //if the entered data does not belong to the correct domain
					    //or  if the fields were left empty
						JOptionPane.showMessageDialog(null, "Invalid! Fill all information properly.");
					}
					
			}catch(Exception e1) {
				System.out.println(e1.getMessage());
			}
			}
		});
		btnNewButton.setBounds(603, 457, 139, 55);
		contentPane.add(btnNewButton);
		
		
	}
}
