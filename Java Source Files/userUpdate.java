package bloodDonation;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.EventQueue;
import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.IOException;

import javax.imageio.ImageIO;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JTree;
import javax.swing.SwingConstants;

import java.awt.SystemColor;

public class userUpdate extends JFrame {

	private JPanel contentPane;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					userUpdate frame = new userUpdate();
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
	public userUpdate() {
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
		PlaneImage.setBounds(-370, -266, 1319, 1054); 
		WelcomeImage.add(PlaneImage);
		PlaneImage.setHorizontalAlignment(SwingConstants.CENTER);
		PlaneImage.setIcon(new ImageIcon(homePage.class.getResource("/Images/upd.jpg")));
		
		JLabel lblNewLabel = new JLabel("Choose What to Update:");
		lblNewLabel.setFont(new Font("Times New Roman", Font.BOLD, 25));
		lblNewLabel.setForeground(Color.BLACK);
		lblNewLabel.setBounds(639, 11, 279, 43);
		contentPane.add(lblNewLabel);
		
		//all the buttons below will take the user to the corresponding next frame once they're clicked
		JButton btnNewButton_3 = new JButton("Password");
		btnNewButton_3.setBackground(SystemColor.menu);
		btnNewButton_3.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		btnNewButton_3.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				passUpdate obj = new passUpdate();
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
		btnNewButton_3.setBounds(639, 153, 147, 37);
		contentPane.add(btnNewButton_3);
		
		JButton GoBackButton = new JButton("Go Back");
		GoBackButton.setBackground(new Color(240, 240, 240));
		GoBackButton.setFont(new Font("Times New Roman", Font.BOLD, 26));
		GoBackButton.setForeground(Color.BLACK);
		GoBackButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				dispose();
		
			
			}
		});
		GoBackButton.setBounds(783, 466, 177, 34);
		contentPane.add(GoBackButton);
		
		JLabel lblNewLabel_1 = new JLabel("Your Info:");
		lblNewLabel_1.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		lblNewLabel_1.setBounds(639, 65, 128, 34);
		contentPane.add(lblNewLabel_1);
		
		JLabel lblNewLabel_3 = new JLabel("Patient's Info:");
		lblNewLabel_3.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		lblNewLabel_3.setBounds(639, 326, 153, 23);
		contentPane.add(lblNewLabel_3);
		
		JButton btnNewButton_1 = new JButton("Email");
		btnNewButton_1.setBackground(SystemColor.menu);
		btnNewButton_1.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		btnNewButton_1.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				mailUpdate obj1 = new mailUpdate();
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
		btnNewButton_1.setBounds(639, 107, 147, 37);
		contentPane.add(btnNewButton_1);
		
		JButton btnNewButton_5 = new JButton("Phone");
		btnNewButton_5.setBackground(SystemColor.menu);
		btnNewButton_5.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		btnNewButton_5.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				phoneUpdate obj2 = new phoneUpdate();
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
		btnNewButton_5.setBounds(639, 201, 147, 37);
		contentPane.add(btnNewButton_5);
		
		JButton btnNewButton_6 = new JButton("Address");
		btnNewButton_6.setBackground(SystemColor.menu);
		btnNewButton_6.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		btnNewButton_6.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				addressUpdate obj3 = new addressUpdate();
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
		btnNewButton_6.setBounds(639, 252, 147, 37);
		contentPane.add(btnNewButton_6);
		
		JButton btnNewButton_7 = new JButton("Status (Recieved or Not)");
		btnNewButton_7.setBackground(SystemColor.menu);
		btnNewButton_7.setFont(new Font("Times New Roman", Font.PLAIN, 26));
		btnNewButton_7.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				statusUpdate obj4 = new statusUpdate();
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
		btnNewButton_7.setBounds(639, 358, 321, 37);
		contentPane.add(btnNewButton_7);
	}
}
