package kodlamaio.hrms.entities.abstracts;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Data
@Table(name="user")
public class User {
	@Id
	@GeneratedValue
	@Column(name="id")
	private int id;
	
	@Column(name="email")
	private String email;
	
	@Column(name="password")
	private String password;
}
