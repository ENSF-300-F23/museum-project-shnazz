# Museum Art Database Management System

## Project Overview

This project is a database management system for an art museum. The system manages information about various art objects, exhibitions, collections, and artists, allowing administrators, data entry users, and end users to interact with the museum's database. The project includes database design, creation, and maintenance, as well as a Python-based application for interacting with the database.

**Submission Requirements:**

- A single `.pdf` file with the Enhanced Entity-Relationship (EER) diagram.
- A single `.pdf` file with the relational model.
- A single `.sql` file to build and populate the database.
- A single `.sql` file with query demonstrations.
- GitHub repository link.

## Repository Structure

```plaintext
├── /diagrams
│   ├── EER_Diagram.pdf       # EER diagram of the database
│   └── Relational_Model.pdf   # Relational model of the database
├── /sql
│   ├── create_database.sql    # SQL script to create and populate the database
│   └── query_demonstration.sql  # SQL script with queries as per project requirements
├── /app
│   └── museum_app.py          # Python application to interact with the database
├── README.md                  # Project overview and instructions
```

## ER/EER Diagram

The EER diagram models the relationships between the different entities in the database, including `ART_OBJECTS`, `PAINTING`, `SCULPTURE`, `STATUE`, `ARTIST`, `EXHIBITIONS`, `COLLECTIONS`, and more. The diagram captures the attributes, relationships, cardinality, and participation constraints as per the project requirements.

### Design Decisions:

- **Entity Types**: Entities such as `ART_OBJECT`, `PAINTING`, and `SCULPTURE` represent different types of art objects. 
- **Relationship Types**: Relationships between `ART_OBJECT` and `EXHIBITIONS`, as well as relationships between `PERMANENT_COLLECTION`, `BORROWED`, and `COLLECTIONS`.
- **Cardinality**: Each `EXHIBITION` can have multiple art objects, and each `ART_OBJECT` can belong to multiple exhibitions.

## Relational Model

The relational model was derived from the EER diagram and includes the following features:
- Tables with primary keys and foreign keys.
- Referential integrity constraints (arrows representing foreign keys).
- Correct table names, attributes, and relationships.

The `create_database.sql` script initializes and populates the database according to this relational model.

## SQL Scripts

### Database Creation & Population (`create_database.sql`)

This script contains the SQL statements required to create and populate the museum’s database. It includes tables for art objects, artists, exhibitions, collections, and other entities, along with appropriate foreign key constraints.

### Query Demonstration (`query_demonstration.sql`)

This script demonstrates various SQL queries based on the project requirements, including:

1. Showing all tables and explaining relationships.
2. A basic retrieval query.
3. A retrieval query with ordered results.
4. A nested retrieval query.
5. A retrieval query using joined tables.
6. An update operation with triggers.
7. A deletion operation with triggers.

## Python Application (`museum_app.py`)

The Python application interfaces with the MySQL database using the `mysql-connector` library. It provides the following functionalities:

1. **Admin Interface**: 
   - Allows execution of SQL commands directly via the application.
   - Supports running SQL script files.

2. **Data Entry Interface**: 
   - Allows data entry users to insert new records into specific tables.
   - Provides file upload for bulk entries.
   - Prompts for inserting records interactively.
   - Supports updates and deletions with appropriate feedback.

3. **Browsing Interface**: 
   - Provides a simple menu-driven interface for end users to browse art objects and exhibitions.
   - No SQL knowledge is required for end users; the interface guides them through searches.

## Getting Started

### Prerequisites

- **Python 3.x**: Ensure you have Python installed.
- **MySQL**: Install MySQL to execute SQL scripts.
- **MySQL Connector**: Install the Python MySQL connector using:
  ```bash
  pip install mysql-connector-python
  ```

### Running the Application

1. Clone the repository:
   ```bash
   git clone https://github.com/your_repo_link.git
   cd your_repo_link
   ```

2. Set up the database:
   - Run the `create_database.sql` script in MySQL to create and populate the database.
   - Open MySQL:
     ```bash
     mysql -u your_username -p
     source /path/to/create_database.sql
     ```

3. Run the Python application:
   ```bash
   python museum_app.py
   ```

4. Use the admin, data entry, or browsing interfaces based on your role.

## Usage

### Admin Interface
Admins can log in to execute SQL commands, run SQL script files, and manage users.

### Data Entry Interface
Data entry users can insert new art objects into the database, update existing entries, or delete them.

### Browsing Interface
End users can browse art objects and exhibitions through a user-friendly menu interface.

## Conclusion

This project demonstrates a practical application of database design and management using MySQL and Python. It includes both a backend database and a frontend application that provides a seamless interface for managing art objects in a museum.

---

This README should cover the essential aspects of your project submission. Let me know if you'd like any adjustments!
