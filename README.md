# Advanced Java Programming Laboratory & Enterprise Capstone

[![Java](https://img.shields.io/badge/Java-21-orange.svg)](https://www.oracle.com/java/)
[![Tomcat](https://img.shields.io/badge/Apache%20Tomcat-11.0.26-yellow.svg)](https://tomcat.apache.org/)
[![Jakarta EE](https://img.shields.io/badge/Jakarta%20EE-10-blue.svg)](https://jakarta.ee/)
[![MySQL](https://img.shields.io/badge/MySQL-8.0-blue.svg)](https://www.mysql.com/)
[![Build](https://img.shields.io/badge/Build-Maven-red.svg)](https://maven.apache.org/)
[![Curriculum](https://img.shields.io/badge/University-RTU%20Syllabus-green.svg)](#)

A comprehensive, industry-aligned repository covering the entire **Advanced Java Laboratory Curriculum** (Experiments 1 through 7) alongside **ShopSphere**, a complete N-Tier enterprise e-commerce capstone application.

---

## Table of Contents

- [Repository Overview](#repository-overview)
- [Directory Structure](#directory-structure)
- [Lab Experiments (1 to 7)](#lab-experiments-1-to-7)
  - [Lab 1: Student Registration GUI (Java Swing)](#lab-1-student-registration-gui-java-swing)
  - [Lab 2: Calculator following MVC Architecture](#lab-2-calculator-following-mvc-architecture)
  - [Lab 3: Java Database Connectivity (JDBC)](#lab-3-java-database-connectivity-jdbc)
  - [Lab 4: TCP Socket Client-Server Network Programming](#lab-4-tcp-socket-client-server-network-programming)
  - [Lab 5: Remote Method Invocation (Java RMI)](#lab-5-remote-method-invocation-java-rmi)
  - [Lab 6: Jakarta Servlet, Filters, Sessions & Listeners](#lab-6-jakarta-servlet-filters-sessions--listeners)
  - [Lab 7: HTML to Dynamic JSP Conversion & Expression Language](#lab-7-html-to-dynamic-jsp-conversion--expression-language)
- [Capstone Project: ShopSphere Enterprise Suite](#capstone-project-shopsphere-enterprise-suite)
- [Software Prerequisites & Environment](#software-prerequisites--environment)
- [Execution & Verification Guide](#execution--verification-guide)
- [Common Troubleshooting](#common-troubleshooting)

---

## Repository Overview

| Experiment / Module | Topic / Focus | Key Technologies | Location |
| :--- | :--- | :--- | :--- |
| **Lab 1** | GUI Design & Event Handling | Java Swing, `JFrame`, `ActionListener` | [`LAB-1/`](file:///p:/CODING/ADV.%20JAVA%20LAB/LAB-1) |
| **Lab 2** | Model-View-Controller (MVC) Pattern | Swing GUI, Decoupled Architecture | [`LAB-2/`](file:///p:/CODING/ADV.%20JAVA%20LAB/LAB-2) |
| **Lab 3** | Database CRUD Operations | JDBC, `PreparedStatement`, MySQL 8 | [`LAB-3/`](file:///p:/CODING/ADV.%20JAVA%20LAB/LAB-3) |
| **Lab 4** | Network Stream Programming | `java.net.Socket`, `ServerSocket`, TCP | [`LAB-4/`](file:///p:/CODING/ADV.%20JAVA%20LAB/LAB-4) |
| **Lab 5** | Distributed Systems & Remoting | Java RMI, Remote Interface, Registry | [`LAB-5/`](file:///p:/CODING/ADV.%20JAVA%20LAB/LAB-5) |
| **Lab 6** | Server-Side Web Programming | Jakarta Servlets, `HttpSession`, Filters | [`LAB-6/`](file:///p:/CODING/ADV.%20JAVA%20LAB/LAB-6) |
| **Lab 7** | Dynamic Presentation & MVC View | JSP, Expression Language (EL), JSTL | [`LAB-7/`](file:///p:/CODING/ADV.%20JAVA%20LAB/LAB-7) |
| **Capstone** | Full E-Commerce Platform | Servlets + JSP + Swing Admin + JDBC Pool | [`JAVA_PROJECT/ShopSphere/`](file:///p:/CODING/ADV.%20JAVA%20LAB/JAVA_PROJECT/ShopSphere) |

---

## Directory Structure

```text
ADV. JAVA LAB/
│
├── LAB-1/                              # Student Registration GUI (Swing)
│   ├── StudentRegistration.java
│   └── run_lab1.bat
│
├── LAB-2/                              # MVC Swing Calculator
│   ├── CalculatorModel.java
│   ├── CalculatorView.java
│   ├── CalculatorController.java
│   └── Main.java
│
├── LAB-3/                              # JDBC Database Operations
│   ├── lib/mysql-connector-j-26.7.0.jar
│   ├── src/
│   │   ├── JdbcDemo.java
│   │   └── App.java
│   └── bin/
│
├── LAB-4/                              # TCP Socket Communication
│   ├── Server.java
│   └── Client.java
│
├── LAB-5/                              # Remote Method Invocation (RMI)
│   ├── MyInterface.java
│   ├── MyRemote.java
│   ├── Server.java
│   └── Client.java
│
├── LAB-6/                              # Jakarta Servlet Web Application
│   └── servlet/
│       ├── pom.xml
│       └── src/main/
│           ├── java/com/servlet/
│           │   ├── HelloServlet.java
│           │   ├── LoginServlet.java
│           │   ├── HomeServlet.java
│           │   ├── AuthFilter.java
│           │   └── AppListener.java
│           └── webapp/index.html
│
├── LAB-7/                              # HTML to JSP Conversion & EL
│   └── servlet/
│       ├── pom.xml
│       └── src/main/
│           ├── java/com/servlet/
│           │   └── HelloServlet.java
│           └── webapp/
│               ├── index.html
│               ├── student.jsp
│               └── result.jsp
│
├── JAVA_PROJECT/                       # Capstone: ShopSphere E-Commerce System
│   └── ShopSphere/
│       ├── pom.xml
│       ├── database/shopsphere.sql
│       └── src/main/
│           ├── java/com/shopsphere/
│           │   ├── controller/         # Servlets (Login, Register, Cart, Orders, Admin)
│           │   ├── dao/                # Data Access Objects (User, Product, Order, Category)
│           │   ├── desktop/            # SwingInventoryViewer.java (Desktop Admin Portal)
│           │   ├── filter/             # Authentication & Role Authorization Filters
│           │   ├── model/              # POJO Domain Models
│           │   └── util/               # DBConnection.java (Lightweight Connection Pool)
│           └── webapp/                 # JSP Views, Fragments & Admin Portal
│
├── run_desktop_swing.bat               # 1-Click Launcher for Swing Desktop Admin
├── start_tomcat.bat                    # 1-Click Launcher for Tomcat 11 Deployment
└── import_database.bat                 # 1-Click Database Setup Script for MySQL
```

---

## Lab Experiments (1 to 7)

### Lab 1: Student Registration GUI (Java Swing)
* **Objective**: Design a graphical user interface for a student registration form using Java Swing components and event listeners.
* **Key Components**: `JFrame`, `JLabel`, `JTextField`, `JRadioButton` with `ButtonGroup`, `JCheckBox`, `JButton`, and `JOptionPane`.
* **Validation Features**: Ensures all required fields (Name, Roll Number, Gender, Branch, Terms Agreement) are populated; outputs formatted dialog upon submission and supports form clearing on reset.
* **Execution**:
  ```bash
  cd LAB-1
  javac StudentRegistration.java
  java StudentRegistration
  ```

---

### Lab 2: Calculator following MVC Architecture
* **Objective**: Build an arithmetic calculator implementing strict separation of concerns using the Model-View-Controller design pattern.
* **Architecture**:
  * **Model ([CalculatorModel.java](file:///p:/CODING/ADV.%20JAVA%20LAB/LAB-2/CalculatorModel.java))**: Contains pure arithmetic operations (`add`, `subtract`, `multiply`, `divide`). Handles zero-division safely.
  * **View ([CalculatorView.java](file:///p:/CODING/ADV.%20JAVA%20LAB/LAB-2/CalculatorView.java))**: Pure UI presentation using Swing components with no calculation logic.
  * **Controller ([CalculatorController.java](file:///p:/CODING/ADV.%20JAVA%20LAB/LAB-2/CalculatorController.java))**: Implements `ActionListener`, extracts input values from View, delegates computation to Model, and updates View result.
  * **Entry Point ([Main.java](file:///p:/CODING/ADV.%20JAVA%20LAB/LAB-2/Main.java))**: Bootstraps and binds the MVC triad.
* **Execution**:
  ```bash
  cd LAB-2
  javac *.java
  java Main
  ```

---

### Lab 3: Java Database Connectivity (JDBC)
* **Objective**: Connect Java applications to relational database management systems using JDBC, execute parameterized queries, and read result sets.
* **Database Setup**:
  ```sql
  CREATE DATABASE college;
  USE college;
  CREATE TABLE student (
      id INT PRIMARY KEY,
      name VARCHAR(30),
      branch VARCHAR(20)
  );
  ```
* **Key Components**:
  * `Class.forName("com.mysql.cj.jdbc.Driver")`: Dynamic driver loading into JVM memory.
  * `DriverManager.getConnection(...)`: Manages connection handshakes to `jdbc:mysql://localhost:3306/college`.
  * `PreparedStatement`: Parameterized insert (`insert into student values(?,?,?)`) preventing SQL injection.
  * `Statement` & `ResultSet`: Executes query and navigates cursor rows.
* **Execution**:
  ```bash
  cd LAB-3
  javac -cp "lib/*" -d bin src/*.java
  java -cp "bin;lib/*" JdbcDemo
  ```

---

### Lab 4: TCP Socket Client-Server Network Programming
* **Objective**: Implement connection-oriented network communication using stream sockets in the `java.net` package.
* **Key Components**:
  * **Server ([Server.java](file:///p:/CODING/ADV.%20JAVA%20LAB/LAB-4/Server.java))**: Listens on port `5000` via `ServerSocket`, accepts incoming connection via `accept()`, reads message via `BufferedReader`, and sends response via auto-flushing `PrintWriter`.
  * **Client ([Client.java](file:///p:/CODING/ADV.%20JAVA%20LAB/LAB-4/Client.java))**: Connects to `localhost:5000`, transmits `"Hello Server"`, reads server response, and closes socket connection.
* **Execution**:
  * *Terminal 1 (Server)*:
    ```bash
    cd LAB-4
    javac *.java
    java Server
    ```
  * *Terminal 2 (Client)*:
    ```bash
    cd LAB-4
    java Client
    ```

---

### Lab 5: Remote Method Invocation (Java RMI)
* **Objective**: Develop a distributed Java application where a client calls methods of an object residing in a different JVM over the network.
* **Architecture**:
  * **Remote Interface ([MyInterface.java](file:///p:/CODING/ADV.%20JAVA%20LAB/LAB-5/MyInterface.java))**: Extends `java.rmi.Remote`, declares `int add(int a, int b) throws RemoteException;`.
  * **Remote Object ([MyRemote.java](file:///p:/CODING/ADV.%20JAVA%20LAB/LAB-5/MyRemote.java))**: Extends `UnicastRemoteObject`, implements business logic (`return a + b`).
  * **Server ([Server.java](file:///p:/CODING/ADV.%20JAVA%20LAB/LAB-5/Server.java))**: Creates remote object instance and binds it to RMI Registry at `rmi://localhost/Add`.
  * **Client ([Client.java](file:///p:/CODING/ADV.%20JAVA%20LAB/LAB-5/Client.java))**: Locates remote reference via `Naming.lookup()` and invokes remote method.
* **Execution**:
  * *Terminal 1 (Server)*:
    ```bash
    cd LAB-5
    javac *.java
    java Server
    ```
  * *Terminal 2 (Client)*:
    ```bash
    cd LAB-5
    java Client
    ```

---

### Lab 6: Jakarta Servlet, Filters, Sessions & Listeners
* **Objective**: Study server-side Java programming with Jakarta Servlets on Apache Tomcat 11.
* **Key Components**:
  * **[HelloServlet.java](file:///p:/CODING/ADV.%20JAVA%20LAB/LAB-6/servlet/src/main/java/com/servlet/HelloServlet.java)**: Demonstrates `doGet()` and `doPost()` handling.
  * **[LoginServlet.java](file:///p:/CODING/ADV.%20JAVA%20LAB/LAB-6/servlet/src/main/java/com/servlet/LoginServlet.java)**: Authenticates credentials, creates server-side `HttpSession`, and stores session attributes.
  * **[AuthFilter.java](file:///p:/CODING/ADV.%20JAVA%20LAB/LAB-6/servlet/src/main/java/com/servlet/AuthFilter.java)**: `@WebFilter("/home")` intercepting incoming requests to protect resources from unauthenticated access.
  * **[HomeServlet.java](file:///p:/CODING/ADV.%20JAVA%20LAB/LAB-6/servlet/src/main/java/com/servlet/HomeServlet.java)**: Protected servlet rendering user state from session.
  * **[AppListener.java](file:///p:/CODING/ADV.%20JAVA%20LAB/LAB-6/servlet/src/main/java/com/servlet/AppListener.java)**: `@WebListener` tracking application startup and shutdown events.
* **Build & Deployment**:
  ```bash
  cd LAB-6/servlet
  mvn clean package
  # Output: target/servlet.war -> Deploy to Tomcat webapps/
  ```

---

### Lab 7: HTML to Dynamic JSP Conversion & Expression Language
* **Objective**: Convert static HTML forms into dynamic JavaServer Pages (**JSP**), separating presentation from controller logic using Expression Language (**EL**).
* **Key Components**:
  * **[student.jsp](file:///p:/CODING/ADV.%20JAVA%20LAB/LAB-7/servlet/src/main/webapp/student.jsp)**: User input view with page directives and registration form.
  * **[HelloServlet.java](file:///p:/CODING/ADV.%20JAVA%20LAB/LAB-7/servlet/src/main/java/com/servlet/HelloServlet.java)**: Controller reading parameters, attaching data to request scope via `request.setAttribute()`, and forwarding via `RequestDispatcher`.
  * **[result.jsp](file:///p:/CODING/ADV.%20JAVA%20LAB/LAB-7/servlet/src/main/webapp/result.jsp)**: Dynamic view rendering parameters using Expression Language `${name}`, `${email}`, `${course}`, `${age}` without scriptlets.
* **Build & Deployment**:
  ```bash
  cd LAB-7/servlet
  mvn clean package
  # Output: target/servlet.war -> Deploy to Tomcat webapps/
  ```

---

## Capstone Project: ShopSphere Enterprise Suite

**ShopSphere** is a complete, production-grade e-commerce application engineered for the RTU Advanced Java Capstone requirement.

```
+-------------------------------------------------------------------------+
|                         ShopSphere Enterprise Suite                     |
+------------------------------------+------------------------------------+
|         Web Client Portal          |      Desktop Admin Suite (Swing)   |
|     (Jakarta Servlets, JSP, EL)    |    (JTable, KPI Dashboard, MVC)    |
+------------------------------------+------------------------------------+
|                           Service Layer                                 |
|            (CartService, OrderService, AuthenticationFilter)            |
+-------------------------------------------------------------------------+
|                             DAO Layer                                   |
|        (UserDAO, ProductDAO, CategoryDAO, OrderDAO, CartDAO)            |
+-------------------------------------------------------------------------+
|                   High-Performance Connection Pool                      |
|                (Dynamic Proxy Recycling, 127.0.0.1 Direct)              |
+-------------------------------------------------------------------------+
|                           MySQL 8.0 Database                            |
|             (ACID Transactions, InnoDB Engine, Schema Seed)             |
+-------------------------------------------------------------------------+
```

### Core Architecture Highlights:
1. **Dual Access Modalities**:
   - **Web Storefront**: Responsive customer portal for catalog browsing, keyword search, cart management, checkout, and order history.
   - **Desktop Administration Suite ([SwingInventoryViewer.java](file:///p:/CODING/ADV.%20JAVA%20LAB/JAVA_PROJECT/ShopSphere/src/main/java/com/shopsphere/desktop/SwingInventoryViewer.java))**: Standalone Swing GUI featuring live KPI revenue cards, low-stock threshold alerts, catalog CRUD, order fulfillment status updates, and customer account moderation.
2. **High-Performance Connection Pool ([DBConnection.java](file:///p:/CODING/ADV.%20JAVA%20LAB/JAVA_PROJECT/ShopSphere/src/main/java/com/shopsphere/util/DBConnection.java))**:
   - Zero-dependency connection pool utilizing standard library dynamic proxies to recycle open physical TCP sockets.
   - Eliminates Windows IPv6 resolution latency by binding directly to `127.0.0.1`.
   - Reduces database query response times to sub-millisecond speeds.
3. **Optimized Front-End Rendering**:
   - Asynchronous lazy image decoding (`loading="lazy" decoding="async"`).
   - Zero-latency inline SVG fallback to prevent layout shifts.
   - Resource hints (`dns-prefetch`, `preconnect`) for Bootstrap CDN.
4. **Pre-Configured Evaluation Accounts**:
   - **Administrator**: `admin@shopsphere.com` / `admin123`
   - **Customer**: `customer@shopsphere.com` / `user123`
   - Includes 1-click credential autofill buttons on the login screen.

---

## Software Prerequisites & Environment

* **Java Development Kit (JDK)**: Version 17 or 21 (`java -version`, `javac -version`).
* **Web Server**: Apache Tomcat 11 (`P:\DEV TOOLS\apache-tomcat-11.0.26`).
* **Database**: MySQL Server 8.0 listening on port `3306` (Credentials: `root` / `mydevsql`).
* **Build System**: Apache Maven 3.8+.
* **Operating System**: Microsoft Windows 10 / 11.

---

## Execution & Verification Guide

### 1. Starting the MySQL Service
Ensure the `MySQL80` service is running in Windows:
* Press `Win + R`, type `services.msc`, locate `MySQL80`, and click **Start**.
* Or run in an Administrator command prompt: `net start MySQL80`.

### 2. Setting Up the Database
Import the initial seed data:
* Double-click [import_database.bat](file:///p:/CODING/ADV.%20JAVA%20LAB/import_database.bat) in the root directory.

### 3. Deploying and Running ShopSphere
* Double-click [start_tomcat.bat](file:///p:/CODING/ADV.%20JAVA%20LAB/start_tomcat.bat) to deploy the WAR and start the Tomcat server.
* Open your browser: [http://localhost:8080/ShopSphere/](http://localhost:8080/ShopSphere/)

### 4. Running the Desktop Swing Admin Suite
* Double-click [run_desktop_swing.bat](file:///p:/CODING/ADV.%20JAVA%20LAB/run_desktop_swing.bat) from the root folder.

---

## Common Troubleshooting

| Issue / Error | Root Cause | Solution |
| :--- | :--- | :--- |
| `CommunicationsException: Communications link failure` | MySQL service is stopped. | Start `MySQL80` via `services.msc` or `net start MySQL80`. |
| `ClassNotFoundException: com.mysql.cj.jdbc.Driver` | JDBC driver JAR is missing from classpath. | Ensure `-cp "lib/*"` or Maven dependency is included. |
| `Address already in use: bind (Port 8080)` | Another process is holding Tomcat port. | Stop existing Tomcat instance or kill conflicting process. |
| `Connection refused: localhost:5000 / 1099` | Server not started before client. | Ensure `Server.java` is running in a terminal before running `Client.java`. |
| `HTTP 404 Not Found` | Context path mismatch or WAR not deployed. | Verify application is deployed in Tomcat's `webapps/` folder. |

---

### Author & Academic Credits
* **Project**: RTU Advanced Java / Java Enterprise Laboratory Suite
* **Technologies**: Java SE, Java Swing, JDBC, Java Sockets, Java RMI, Jakarta Servlets, JSP, JSTL, Apache Tomcat, MySQL
* **Year**: 2026
