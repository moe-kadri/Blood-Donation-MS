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

public class sInsert extends JFrame {

	private JPanel contentPane;
	private JTextField textField;
	private JTextField textField_2;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					sInsert frame = new sInsert();
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
	public sInsert() {
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
		PlaneImage.setBounds(-308, -267, 1242, 1054); 
		WelcomeImage.add(PlaneImage);
		PlaneImage.setHorizontalAlignment(SwingConstants.CENTER);
		PlaneImage.setIcon(new ImageIcon(homePage.class.getResource("/Images/stock.jpeg")));
		
		JLabel lblNewLabel = new JLabel("Blood Stock's Information:");
		lblNewLabel.setFont(new Font("Tahoma", Font.BOLD, 25));
		lblNewLabel.setBounds(624, 11, 381, 48);
		contentPane.add(lblNewLabel);
		
		JLabel lblNewLabel_1 = new JLabel("Bank's Name:");
		lblNewLabel_1.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		lblNewLabel_1.setBounds(624, 121, 163, 36);
		contentPane.add(lblNewLabel_1);
		
		JLabel lblNewLabel_3 = new JLabel("Stock's Code:");
		lblNewLabel_3.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		lblNewLabel_3.setBounds(624, 243, 148, 28);
		contentPane.add(lblNewLabel_3);
		
		textField = new JTextField();
		textField.setBackground(SystemColor.menu);
		textField.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		textField.setBounds(624, 169, 296, 28);
		contentPane.add(textField);
		textField.setColumns(10);
		
		textField_2 = new JTextField();
		textField_2.setBackground(SystemColor.menu);
		textField_2.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		textField_2.setBounds(624, 280, 296, 28);
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
		GoBackButton.setBounds(793, 464, 132, 48);
		contentPane.add(GoBackButton);
		
		JButton btnNewButton = new JButton("INSERT");
		btnNewButton.setBackground(SystemColor.menu);
		btnNewButton.setFont(new Font("Times New Roman", Font.BOLD, 24));
		btnNewButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				try{
				    // Create a connection with the database.
					Class.forName("com.mysql.cj.jdbc.Driver");
					Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BLOOD_DONATION",
							"root","");
					
					String name= textField.getText(); // Store the user's input.
					String code = textField_2.getText(); // Store the user's input.
					
					Statement stm = con.createStatement();
					// Insert a blood stock with the given code into the Blood_STOCK relation.
					String sql="INSERT INTO BLOOD_STOCK(sCode)"
							+ " VALUES("+code+");";
					// Select the blood bank's code given its name.
					String sql2 = "SELECT bCode FROM BLOOD_BANK WHERE bName = '"+name+"';";
					ResultSet rs = stm.executeQuery(sql2); // Execute sql2.
					int n = 0;
					if (rs.next()) { // If there is a blood bank with the given name.
						n=rs.getInt(1); // Store the its code in n.
					}
					// Insert into the CONTAINS relation a record that shows that the blood bank contains the new blood stock. 
					String sql1 = "INSERT INTO CONTAINS" + " VALUES("+code+","+n+");";

					try {
						if (n!=0) { // If there is a blood  bank with the given name (the blood bank exists).
							stm.executeUpdate(sql); // execute sql.
							stm.executeUpdate(sql1); // execute sql1.
							JOptionPane.showMessageDialog(null, "Inserted Successfully!");
							dispose();
							bloodDonation hp=new bloodDonation();
							hp.setIconImage(ImageIO.read(getClass().getResourceAsStream("/Images/appImg.jpg")));
							hp.show();
						} else {
							JOptionPane.showMessageDialog(null, "Blood Bank doesn't exist!");
						}
					}
					catch(Exception e2) {
						JOptionPane.showMessageDialog(null, "Invalid! Fill all information properly.");
					}
					
			}catch(Exception e1) {
				System.out.println(e1.getMessage());
			}
			}
		});
		btnNewButton.setBounds(614, 464, 132, 48);
		contentPane.add(btnNewButton);
	}

}
