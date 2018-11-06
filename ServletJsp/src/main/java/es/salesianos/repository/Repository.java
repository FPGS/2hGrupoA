package es.salesianos.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import es.salesianos.connection.ConnectionH2;
import es.salesianos.connection.ConnectionManager;
import es.salesianos.model.Owner;

public class Repository {

	private static final String jdbcUrl = "jdbc:h2:file:./src/main/resources/test";
	ConnectionManager manager = new ConnectionH2();

	public Owner search(Owner userFormulario) {
		Owner userInDatabase = null;
		ResultSet resultSet = null;
		PreparedStatement prepareStatement = null;
		Connection conn = manager.open(jdbcUrl);
		try {
			prepareStatement = conn.prepareStatement("SELECT * FROM OWNER WHERE name = ?");
			prepareStatement.setString(1, userFormulario.getName());
			resultSet = prepareStatement.executeQuery();
			while (resultSet.next()) {
				userInDatabase = new Owner();
				userInDatabase.setCodOwner(resultSet.getInt(1));
				userInDatabase.setName(resultSet.getString(2));
				userInDatabase.setSurname(resultSet.getString(3));
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		} finally {
			close(resultSet);
			close(prepareStatement);

		}
		manager.close(conn);
		return userInDatabase;
	}

	private void close(PreparedStatement prepareStatement) {
		if (null != prepareStatement) {
			try {
				prepareStatement.close();
			} catch (SQLException e) {
				e.printStackTrace();
				throw new RuntimeException(e);
			}
		}
	}

	private void close(ResultSet resultSet) {
		if (null != resultSet) {

			try {
				resultSet.close();
			} catch (SQLException e) {
				e.printStackTrace();
				throw new RuntimeException(e);
			}
		}
	}

	public void insert(Owner userFormulario) {
		Connection conn = manager.open(jdbcUrl);
		PreparedStatement preparedStatement = null;
		try {
			preparedStatement = conn
					.prepareStatement("INSERT INTO OWNER (name,surname)" + "VALUES (?, ?)");
			preparedStatement.setString(1, userFormulario.getName());
			preparedStatement.setString(2, userFormulario.getSurname());
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		} finally {
			close(preparedStatement);
		}

		manager.close(conn);
	}

	public void update(Owner userFormulario) {
		Connection conn = manager.open(jdbcUrl);

		// codigo sql que inserta un usuario :P
		PreparedStatement preparedStatement = null;
		try {
			preparedStatement = conn
					.prepareStatement("UPDATE OWNER SET name = ?,surname = ? WHERE codOwner = ?");
			preparedStatement.setString(1, userFormulario.getName());
			preparedStatement.setString(2, userFormulario.getSurname());
			preparedStatement.setDate(3, new java.sql.Date(userFormulario.getCodOwner()));

			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		} finally {
			close(preparedStatement);
			manager.close(conn);
		}

	}

	public List<Owner> searchAll() {
		List<Owner> listUsers = new ArrayList<Owner>();
		Connection conn = manager.open(jdbcUrl);
		ResultSet resultSet = null;
		PreparedStatement prepareStatement = null;
		try {
			prepareStatement = conn.prepareStatement("SELECT * FROM OWNER");
			resultSet = prepareStatement.executeQuery();
			while (resultSet.next()) {
				Owner userInDatabase = new Owner();
				userInDatabase.setCodOwner(resultSet.getInt(1));
				userInDatabase.setName(resultSet.getString(2));
				userInDatabase.setSurname(resultSet.getString(3));

				listUsers.add(userInDatabase);
			}

		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		} finally {
			close(resultSet);
			close(prepareStatement);
			manager.close(conn);
		}

		return listUsers;
	}

}
