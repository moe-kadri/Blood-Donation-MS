package bloodDonation;

import java.awt.BorderLayout;
import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JLabel;
import javax.swing.SwingConstants;
import java.awt.Color;
import java.awt.Font;

import javax.imageio.ImageIO;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import java.awt.event.ActionListener;
import java.io.IOException;
import java.awt.event.ActionEvent;
import javax.swing.JTextField;
import java.awt.SystemColor;

public class insert extends JFrame {

	private JPanel contentPane;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
				    //display the frame
					insert frame = new insert();
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
	public insert() {
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
		PlaneImage.setIcon(new ImageIcon(homePage.class.getResource("/Images/insert.jpeg")));
		
		JLabel lblNewLabel = new JLabel("Choose what to insert:");
		lblNewLabel.setFont(new Font("Times New Roman", Font.BOLD, 35));
		lblNewLabel.setForeground(Color.BLACK);
		lblNewLabel.setBounds(577, 32, 347, 29);
		contentPane.add(lblNewLabel);
		
		JButton btnNewButton = new JButton("PATIENT");
		btnNewButton.setBackground(SystemColor.menu);
		btnNewButton.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		btnNewButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
			    //if we click on the PATIENT button, the pInsert frame will be displayed
				pInsert obj = new pInsert();
				try {
					obj.setIconImage(ImageIO.read(getClass().getResourceAsStream("/Images/appImg.jpg")));
				} catch (IOException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
				obj.setVisible(true);
				obj.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
			}
		});
		btnNewButton.setBounds(580, 106, 220, 41);
		contentPane.add(btnNewButton);
		
		JButton btnNewButton_1 = new JButton("DONOR");
		btnNewButton_1.setBackground(SystemColor.menu);
		btnNewButton_1.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		btnNewButton_1.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				//if we click on the DONOR button, the dInsert frame will be displayed
				dInsert obj1 = new dInsert();
				try {
					obj1.setIconImage(ImageIO.read(getClass().getResourceAsStream("/Images/appImg.jpg")));
				} catch (IOException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
				obj1.setVisible(true);
				obj1.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
			}
		});
		btnNewButton_1.setBounds(580, 175, 220, 41);
		contentPane.add(btnNewButton_1);
		
		JButton btnNewButton_3 = new JButton("EMPLOYEE");
		btnNewButton_3.setBackground(SystemColor.menu);
		btnNewButton_3.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		btnNewButton_3.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				//if we click on the EMPLOYEE button, the eInsert frame will be displayed
				eInsert obj2 = new eInsert();
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
		btnNewButton_3.setBounds(580, 250, 220, 41);
		contentPane.add(btnNewButton_3);
		
		//a button to go back to the previous frame
		JButton GoBackButton = new JButton("Go Back");
		GoBackButton.setBackground(SystemColor.menu);
		GoBackButton.setFont(new Font("Times New Roman", Font.BOLD, 24));
		GoBackButton.setForeground(Color.BLACK);
		GoBackButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				dispose();
	
			}
		});
		GoBackButton.setBounds(820, 471, 140, 41);
		contentPane.add(GoBackButton);
		
		JButton btnNewButton_2 = new JButton("BLOOD BANK");
		btnNewButton_2.setBackground(SystemColor.menu);
		btnNewButton_2.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		btnNewButton_2.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				//if we click on the BLOOD BANK button, the bInsert frame will be displayed
				bInsert obj3 = new bInsert();
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
		btnNewButton_2.setBounds(580, 392, 220, 41);
		contentPane.add(btnNewButton_2);
		
		JButton btnNewButton_4 = new JButton("BLOOD STOCK");
		btnNewButton_4.setBackground(SystemColor.menu);
		btnNewButton_4.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		btnNewButton_4.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				//if we click on the BLOOD STOCK button, the sInsert frame will be displayed
				sInsert obj4 = new sInsert();
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
		btnNewButton_4.setBounds(580, 321, 220, 41);
		contentPane.add(btnNewButton_4);
	}
}
