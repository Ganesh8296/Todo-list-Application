package com.note.dao;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class Factoryhelper {
	
	public static EntityManagerFactory manager;
	
	public static EntityManagerFactory getEmf() {
		if(manager == null) {
			manager = Persistence.createEntityManagerFactory("dev");
		}
		return manager;
	}
	
	public void closemanager() {
		if(manager.isOpen()) {
			manager.close();
		}
	}

}
