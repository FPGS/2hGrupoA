package es.salesianos.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import es.salesianos.model.Owner;
import es.salesianos.model.assembler.OwnerAssembler;
import es.salesianos.service.OwnerService;

public class EditOwnerServlet extends BaseServlet{
	
	OwnerService service = new OwnerService();
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Owner owner = OwnerAssembler.assembleUserFrom(req);
		Owner ownerFromDatabase = service.search(owner.getCodOwner());
		req.setAttribute("owner", ownerFromDatabase);
		redirect(req, resp, "editOwner.jsp");
	}
	
}
