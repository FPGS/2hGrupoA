package es.salesianos.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import es.salesianos.model.Owner;
import es.salesianos.model.assembler.OwnerAssembler;
import es.salesianos.service.OwnerService;

public class UpdateOwnerServlet extends BaseServlet{

	OwnerService service = new OwnerService();
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Owner owner = OwnerAssembler.assembleUserFrom(req);
		service.update(owner);
		redirect(req, resp, "ownerSaved.jsp");
	}
	
}
