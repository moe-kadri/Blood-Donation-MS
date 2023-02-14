package bloodDonation;

import java.awt.BorderLayout;
import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import java.awt.Color;
import javax.swing.JLabel;
import javax.swing.JOptionPane;

import java.awt.Font;
import java.awt.Image;
import java.awt.Toolkit;
import java.awt.Window;

import javax.swing.SwingConstants;
import javax.swing.UIManager;
import javax.swing.UIManager.LookAndFeelInfo;
import javax.swing.JTextField;
import javax.swing.JButton;
import javax.imageio.ImageIO;
import javax.swing.ImageIcon;
import java.awt.event.ActionListener;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.awt.event.ActionEvent;
import javax.swing.JPasswordField;

public class homePage extends JFrame {

	private JPanel contentPane;
	private JTextField EmailInput;
	private JPasswordField passwordField;
	

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
				    //display the frame
					homePage frame = new homePage();
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
	public homePage() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 999, 699);
		contentPane = new JPanel();
		contentPane.setBackground(Color.WHITE);
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		//insert an image 
		JPanel WelcomeImage = new JPanel();
		WelcomeImage.setBackground(Color.WHITE);
		WelcomeImage.setBounds(0, 0, 477, 662);
		contentPane.add(WelcomeImage);
		WelcomeImage.setLayout(null);
		
		
		JLabel PlaneImage = new JLabel();
		PlaneImage.setBounds(-829, -1356, 2113, 3475); 
		WelcomeImage.add(PlaneImage);
		PlaneImage.setHorizontalAlignment(SwingConstants.CENTER);
		PlaneImage.setIcon(new ImageIcon(homePage.class.getResource("/Images/home6.jpg")));
		
		
		
		
		JLabel WelcomeText = new JLabel("Welcome to");
		WelcomeText.setHorizontalAlignment(SwingConstants.CENTER);
		WelcomeText.setFont(new Font("Elephant", Font.PLAIN, 22));
		WelcomeText.setBounds(510, 104, 434, 94);
		contentPane.add(WelcomeText);
		
		JLabel AMStext = new JLabel("The Blood Donation Management System");
		AMStext.setFont(new Font("Elephant", Font.PLAIN, 22));
		AMStext.setBounds(487, 156, 475, 94);
		contentPane.add(AMStext);
		
		JLabel LoginMessage = new JLabel("Login to access the database!");
		LoginMessage.setHorizontalAlignment(SwingConstants.CENTER);
		LoginMessage.setFont(new Font("Times New Roman", Font.ITALIC, 24));
		LoginMessage.setBounds(510, 235, 434, 29);
		contentPane.add(LoginMessage);
		
		JLabel EmailCredentials = new JLabel("Email:");
		EmailCredentials.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		EmailCredentials.setBounds(525, 331, 113, 29);
		contentPane.add(EmailCredentials);
		
		EmailInput = new JTextField();
		EmailInput.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		EmailInput.setBounds(525, 357, 368, 38);
		contentPane.add(EmailInput);
		EmailInput.setColumns(10);
		
		JLabel PasswordCredentials = new JLabel("Password:");
		PasswordCredentials.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		PasswordCredentials.setBounds(525, 405, 113, 29);
		contentPane.add(PasswordCredentials);
		
		passwordField = new JPasswordField();
		passwordField.setBounds(525, 434, 368, 38);
		contentPane.add(passwordField);
		
		JButton LoginButton = new JButton("Login as User");
		LoginButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				try{
					//create the connection
					Class.forName("com.mysql.cj.jdbc.Driver");
					Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BLOOD_DONATION",
							"root","");
					//take input from user
					String email=EmailInput.getText();
					String password=passwordField.getText();
					Statement stm = con.createStatement(); //To later execute sql statements
					String sql="select * from employee where Email='"+email+"' and Password='"+password+"'"; //Get matching Email and Password from the database
					ResultSet rs =stm.executeQuery(sql);
					if (rs.next()) { // if the email and password indeed exist and match each other
						dispose();
						//move to the next frame
						userBD home =new userBD();
						home.setIconImage(ImageIO.read(getClass().getResourceAsStream("/Images/appImg.jpg")));
						home.show();
						
					}else {
					    //if the email or password are wrong, show this error
						JOptionPane.showMessageDialog(null, "Wrong Email or Password!");
					}
			}catch(Exception e1) {
				System.out.println(e1.getMessage());
			}}
		});
		LoginButton.setFont(new Font("Times New Roman", Font.BOLD, 24));
		LoginButton.setBounds(607, 484, 211, 38);
		contentPane.add(LoginButton);
		

		
		JButton btnLoginAsAdmin = new JButton("Login as Admin");
		btnLoginAsAdmin.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				try{
					// create the connection
					Class.forName("com.mysql.cj.jdbc.Driver");
					Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BLOOD_DONATION",
							"root","");
					//take input from the user
					String email=EmailInput.getText();
					String password=passwordField.getText();
					Statement stm = con.createStatement(); //To later execute sql statements
					
					String sql="select email,password,role from employee E, role R where Email='"+email+"' and Password='"+password+"' and role='Admin' and R.eSSN = E.eSSN"; //Get matching Email and Password from the database, in addition to the role where only "Admin" is accepted. This is because the admin has extra control over the database than any other employee.
					ResultSet rs =stm.executeQuery(sql);
					if (rs.next()) { //if the entered email and password belong to an Admin
						dispose();
						//move to the next frame
						bloodDonation admin = new bloodDonation();
						admin.setIconImage(ImageIO.read(getClass().getResourceAsStream("/Images/appImg.jpg")));
						admin.show();
					}else {
				        //otherwise display this error
						JOptionPane.showMessageDialog(null, "Wrong Email or Password!");
					}
			}catch(Exception e1) {
				System.out.println(e1.getMessage());
			}}
		});
		btnLoginAsAdmin.setFont(new Font("Times New Roman", Font.BOLD, 24));
		btnLoginAsAdmin.setBounds(607, 544, 211, 38);
		contentPane.add(btnLoginAsAdmin);

	}
}
