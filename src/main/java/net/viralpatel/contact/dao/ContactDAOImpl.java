package net.viralpatel.contact.dao;

import java.util.List;

import net.viralpatel.contact.form.Contact;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ContactDAOImpl implements ContactDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public void addContact(Contact contact) {
		sessionFactory.getCurrentSession().save(contact);
	}

	public List<Contact> listContact() {

		return sessionFactory.getCurrentSession().createQuery("from Contact")
				.list();
	}

	public void removeContact(Integer id) {
		Contact contact = (Contact) sessionFactory.getCurrentSession().load(
				Contact.class, id);
		if (null != contact) {
			sessionFactory.getCurrentSession().delete(contact);
		}

	}
	
	public Contact getContactByEmail(String email){
		try{
			if (email != null && !email.equals("")) {
	            List<Contact> usr = sessionFactory.getCurrentSession().createQuery("from User where email ='" + email + "'").list();
	            if (usr.size() == 1) {
	                return usr.get(0);
	            } else {
	                return null;
	            }
	        } else {
	            return null;
	        }
		}catch (Exception e){
			return null;
		}

	}
}
