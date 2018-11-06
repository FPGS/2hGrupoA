package es.salesianos.service;

import java.util.List;

import es.salesianos.model.Owner;
import es.salesianos.repository.OwnerRepository;

public class OwnerService {
	
	OwnerRepository repository = new OwnerRepository();

	public void addOwner(Owner owner) {
		repository.insert(owner);
	}
	
	public void insertOrUpdate(Owner userFormulario) {
		Owner userInDatabase = repository.search(userFormulario);
		if(null == userInDatabase){
			repository.insert(userFormulario);
		}else{
			repository.update(userFormulario);
		}
	}

	public List<Owner> listAllUsers() {
		return repository.searchAll();
	}
	
}
