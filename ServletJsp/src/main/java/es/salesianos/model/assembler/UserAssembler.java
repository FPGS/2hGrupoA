package es.salesianos.model.assembler;

import javax.servlet.http.HttpServletRequest;

import es.salesianos.model.Owner;

public class UserAssembler {

	public static Owner assembleUserFrom(HttpServletRequest req) {
		Owner user = new Owner();
		Integer codOwner = Integer.parseInt(req.getParameter("codOwner"));
		String name = req.getParameter("name");
		String surname = req.getParameter("surname");
		user.setCodOwner(codOwner);
		user.setName(name);
		user.setSurname(surname);
		return user;
	}
}