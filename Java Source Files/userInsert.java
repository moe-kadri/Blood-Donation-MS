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
import javax.swing.SwingConstants;
import javax.swing.border.EmptyBorder;
import java.awt.SystemColor;

public class userInsert extends JFrame {

	private JPanel contentPane;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					userInsert frame = new userInsert();
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
	public userInsert() {
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
		PlaneImage.setBounds(-386, -1992, 1329, 4642); 
		WelcomeImage.add(PlaneImage);
		PlaneImage.setHorizontalAlignment(SwingConstants.CENTER);
		PlaneImage.setIcon(new ImageIcon(homePage.class.getResource("/Images/ins.jpg")));
		
		JLabel lblNewLabel = new JLabel("Choose What to Insert:");
		lblNewLabel.setFont(new Font("Times New Roman", Font.BOLD, 26));
		lblNewLabel.setForeground(Color.BLACK);
		lblNewLabel.setBounds(674, 97, 272, 40);
		contentPane.add(lblNewLabel);
		
		//all the buttons below will take the user to the corresponding next frame once they're clicked
		JButton btnNewButton = new JButton("PATIENT");
		btnNewButton.setBackground(SystemColor.menu);
		btnNewButton.setFont(new Font("Times New Roman", Font.BOLD, 24));
		btnNewButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
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
		btnNewButton.setBounds(720, 194, 182, 48);
		contentPane.add(btnNewButton);
		
		JButton btnNewButton_1 = new JButton("DONOR");
		btnNewButton_1.setBackground(SystemColor.menu);
		btnNewButton_1.setFont(new Font("Times New Roman", Font.BOLD, 24));
		btnNewButton_1.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
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
		btnNewButton_1.setBounds(720, 269, 182, 48);
		contentPane.add(btnNewButton_1);
		
		JButton GoBackButton = new JButton("Go Back");
		GoBackButton.setBackground(SystemColor.menu);
		GoBackButton.setFont(new Font("Times New Roman", Font.BOLD, 24));
		GoBackButton.setForeground(Color.BLACK);
		GoBackButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				dispose();
			

			}
		});
		GoBackButton.setBounds(818, 472, 142, 40);
		contentPane.add(GoBackButton);
	}

}
