package bloodDonation;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.EventQueue;
import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.IOException;
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
import javax.swing.SwingConstants;
import javax.swing.border.EmptyBorder;

public class delete extends JFrame {

	private JPanel contentPane;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
				    //create frame
					delete frame = new delete();
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
	public delete() {
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
		PlaneImage.setIcon(new ImageIcon(homePage.class.getResource("/Images/delete2.jpeg")));
		
		JLabel lblNewLabel = new JLabel("Choose What to Delete:");
		lblNewLabel.setFont(new Font("Tahoma", Font.BOLD, 25));
		lblNewLabel.setForeground(Color.BLACK);
		lblNewLabel.setBounds(620, 49, 305, 45);
		contentPane.add(lblNewLabel);
		
		
		JButton btnNewButton_3 = new JButton("EMPLOYEE");
		btnNewButton_3.setFont(new Font("Times New Roman", Font.BOLD, 24));
		btnNewButton_3.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				eDelete obj2 = new eDelete();
				try {
					obj2.setIconImage(ImageIO.read(getClass().getResourceAsStream("/Images/appImg.jpg")));
				} catch (IOException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
				obj2.setVisible(true);
				obj2.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
			}
		});
		btnNewButton_3.setBounds(620, 125, 305, 45);
		contentPane.add(btnNewButton_3);
	//button to go back to previous page
		JButton GoBackButton = new JButton("Go Back");
		GoBackButton.setFont(new Font("Times New Roman", Font.BOLD, 24));
		GoBackButton.setForeground(Color.BLACK);
		GoBackButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				dispose();
			

			}
		});
		GoBackButton.setBounds(620, 444, 305, 52);
		contentPane.add(GoBackButton);
		
		JButton btnNewButton_2 = new JButton("BLOOD BANK");
		btnNewButton_2.setFont(new Font("Times New Roman", Font.BOLD, 24));
		btnNewButton_2.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
			    //when we click on the blood bank button, the bDelete frame will be displayed
				bDelete obj3 = new bDelete();
				try {
					obj3.setIconImage(ImageIO.read(getClass().getResourceAsStream("/Images/appImg.jpg")));
				} catch (IOException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
				obj3.setVisible(true);
				obj3.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
			}
		});
		btnNewButton_2.setBounds(620, 323, 305, 45);
		contentPane.add(btnNewButton_2);
		
		JButton btnNewButton_4 = new JButton("BLOOD STOCK");
		btnNewButton_4.setFont(new Font("Times New Roman", Font.BOLD, 24));
		btnNewButton_4.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
			    //when we click on the blood stock button, the sDelete frame will be displayed
				sDelete obj4 = new sDelete();
				try {
					obj4.setIconImage(ImageIO.read(getClass().getResourceAsStream("/Images/appImg.jpg")));
				} catch (IOException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
				obj4.setVisible(true);
				obj4.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
			}
		});
		btnNewButton_4.setBounds(620, 191, 305, 45);
		contentPane.add(btnNewButton_4);
		
		JButton btnNewButton = new JButton("EXPIRED BLOOD UNIT");
		btnNewButton.setFont(new Font("Times New Roman", Font.BOLD, 24));
		btnNewButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
			    //since blood units expire 45 days after their put-in date, this action is to delete all expired
			    //blood units 
				try{
				    
				    //make connection with the database
					Class.forName("com.mysql.cj.jdbc.Driver");
					Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BLOOD_DONATION",
							"root","");
					
					Statement stm = con.createStatement();
					//calls the stored procedure that deletes the blood units if they have been stored for 
					//at least 45 days 
					String sql= " CALL UPDATE_BU();";
					stm.executeUpdate(sql);
					JOptionPane.showMessageDialog(null, "Expired Blood Units Successfully Deleted!");
					
				} catch(Exception e1) {
				    //if the connection fails
					System.out.println(e1.getMessage());
				}
			}
					
			
	});
		btnNewButton.setBounds(620, 256, 305, 45);
		contentPane.add(btnNewButton);
	}
}
