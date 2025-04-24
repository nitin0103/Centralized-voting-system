Centralized Voting System

Explanation of Key Files and Folders
.classpath
Contains the classpath settings for the Eclipse IDE to recognize and build the project.

.gitignore
Specifies which files and directories should be ignored by Git, such as IDE-specific files or build artifacts.

.project
Defines the Eclipse project settings.

apache-tomcat-10.1.29.zip
Apache Tomcat server ZIP file, used for deploying the web application.

README.md
This file. It provides an overview of the project and instructions for setup.

.idea/
IntelliJ IDEA-specific settings for the project.

.settings/
Eclipse-specific settings, including preferences and configuration files.

build/
Contains compiled .class files that are generated when the Java source code is compiled.

src/
The main source code directory containing:

java/: Contains Java source files for the application logic.

webapp/: Contains web application resources, including JSP files for the user interface and CSS files for styling.

DBStructure/: Contains the database structure information in a text file (database.txt).
DBStructure/database.txt
Describes the structure of the database used by the project, such as table names, columns, and relationships.

How to Run the Project
Prerequisites:
Install Apache Tomcat for web deployment.
Install Eclipse IDE or use an alternative IDE (e.g., IntelliJ IDEA).
Make sure you have a Java Development Kit (JDK) installed.

Setting up the project:
Import the project into your IDE (Eclipse or IntelliJ IDEA).
Set up your Tomcat server for deployment.
Configure the database by following the structure defined in DBStructure/database.txt.

Running the project:
Deploy the application using Apache Tomcat.
Access the web pages using a browser to interact with the voting system.
