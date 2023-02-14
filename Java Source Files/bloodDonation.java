package bloodDonation;

import java.awt.EventQueue;
import java.awt.Font;
import java.awt.BorderLayout;
import java.awt.Color;

import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.SwingConstants;
import javax.swing.border.EmptyBorder;
import javax.imageio.ImageIO;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import java.awt.event.ActionListener;
import java.io.IOException;
import java.awt.event.ActionEvent;
import javax.swing.border.BevelBorder;


public class bloodDonation extends JFrame{

	private JPanel contentPane;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
				    //create a frame
					bloodDonation frame = new bloodDonation();
					frame.setVisible(true);
					frame.setIconImage(ImageIO.read(getClass().getResourceAsStream("/Images/appImg.jpg")));
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the application.
	 */
	public bloodDonation() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 984, 560);
		contentPane = new JPanel();
		contentPane.setBackground(Color.WHITE);
		contentPane.setBorder(new EmptyBorder(0, 0, 0, 0));
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
		PlaneImage.setIcon(new ImageIcon(homePage.class.getResource("/Images/admin.jpeg")));
		
		JButton btnNewButton = new JButton("INSERT");
		btnNewButton.setFont(new Font("Times New Roman", Font.BOLD, 24));
		btnNewButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
			    //clicking on the INSERT button takes us to the insert frame
				insert obj = new insert();
				try {
					obj.setIconImage(ImageIO.read(getClass().getResourceAsStream("/Images/appImg.jpg")));
				} catch (IOException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
				obj.setVisible(true);
			} 
		});
		btnNewButton.setBounds(574, 270, 174, 56);
		contentPane.add(btnNewButton);
		
		JButton btnNewButton_1 = new JButton("DELETE");
		btnNewButton_1.setFont(new Font("Times New Roman", Font.BOLD, 24));
		btnNewButton_1.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
			    //clicking on the DELETE button takes us to the delete frame
				delete obj1 = new delete();
				try {
					obj1.setIconImage(ImageIO.read(getClass().getResourceAsStream("/Images/appImg.jpg")));
				} catch (IOException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
				obj1.setVisible(true);
				
			}
		});
		btnNewButton_1.setBounds(768, 270, 174, 56);
		contentPane.add(btnNewButton_1);
		
		JButton btnNewButton_2 = new JButton("UPDATE");
		btnNewButton_2.setFont(new Font("Times New Roman", Font.BOLD, 24));
		btnNewButton_2.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
			    //clicking on the UPDATE button takes us to the update frame
				update obj2 = new update();
				try {
					obj2.setIconImage(ImageIO.read(getClass().getResourceAsStream("/Images/appImg.jpg")));
				} catch (IOException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
				obj2.setVisible(true);
				
			}
		});
		btnNewButton_2.setBounds(574, 389, 174, 56);
		contentPane.add(btnNewButton_2);
		
		JButton btnNewButton_3 = new JButton("RETRIEVE");
		btnNewButton_3.setFont(new Font("Times New Roman", Font.BOLD, 24));
		btnNewButton_3.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
			    //clicking on the RETRIEVE button takes us to the retrieve frame
				retrieve obj3 = new retrieve();
				try {
					obj3.setIconImage(ImageIO.read(getClass().getResourceAsStream("/Images/appImg.jpg")));
				} catch (IOException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
				obj3.setVisible(true);
				
			}
		});
		btnNewButton_3.setBounds(768, 389, 174, 56);
		contentPane.add(btnNewButton_3);
		
		JLabel lblNewLabel = new JLabel("Choose an Operation to Perform");
		lblNewLabel.setFont(new Font("Times New Roman", Font.PLAIN, 25));
		lblNewLabel.setBounds(587, 156, 328, 42);
		contentPane.add(lblNewLabel);
		
		JLabel lblNewLabel_1 = new JLabel("Welcome Admin!");
		lblNewLabel_1.setFont(new Font("Tahoma", Font.BOLD, 35));
		lblNewLabel_1.setBounds(599, 51, 383, 37);
		contentPane.add(lblNewLabel_1);
		
		
	}


}
