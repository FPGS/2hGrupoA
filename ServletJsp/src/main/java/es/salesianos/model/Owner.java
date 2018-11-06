package es.salesianos.model;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Owner {

	private Integer codOwner;
	private String name;
	private String surname;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	public Integer getCodOwner() {
		return codOwner;
	}

	public void setCodOwner(Integer codOwner) {
		this.codOwner = codOwner;
	}

	public String getSurname() {
		return surname;
	}

	public void setSurname(String surname) {
		this.surname = surname;
	}

	@Override
	public String toString() {
		return "User [codOwner="+codOwner+ "name=" + name + ", surname=" + surname + "]";
	}
	
	

}
