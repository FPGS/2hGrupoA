package es.salesianos.model.assembler;

import javax.servlet.http.HttpServletRequest;

import es.salesianos.model.Owner;

public class OwnerAssembler {

	public static Owner assembleUserFrom(HttpServletRequest req) {
		Owner user = new Owner();
		String codOwner = req.getParameter("codOwner");
		if(null != codOwner) {
			user.setCodOwner(Integer.parseInt(codOwner));
		}
		String name = req.getParameter("name");
		String surname = req.getParameter("surname");
		user.setName(name);
		user.setSurname(surname);
		return user;
	}
}