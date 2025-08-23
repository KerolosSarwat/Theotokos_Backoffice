# Firebase Portal Project Structure

## Overview
This document outlines the structure of the Firebase Portal project, which consists of a Node.js backend and a React frontend with Bootstrap 5 for styling.

## Backend Structure (Node.js)

```
/server
├── config/
│   ├── firebase-config.js       # Firebase configuration and initialization
│   └── db.js                    # Database connection utilities
├── controllers/
│   ├── userController.js        # Controllers for user CRUD operations
│   └── firestoreController.js   # Controllers for Firestore data retrieval
├── routes/
│   ├── userRoutes.js            # Routes for user CRUD operations
│   └── firestoreRoutes.js       # Routes for Firestore data retrieval
├── middleware/
│   ├── auth.js                  # Authentication middleware (if needed)
│   └── errorHandler.js          # Error handling middleware
├── utils/
│   └── helpers.js               # Helper functions
├── package.json                 # Node.js dependencies
├── .env.example                 # Example environment variables
└── server.js                    # Main server entry point
```

## Frontend Structure (React with Bootstrap 5)

```
/client
├── public/
│   ├── index.html               # HTML template
│   └── assets/                  # Static assets
├── src/
│   ├── components/
│   │   ├── common/              # Reusable components
│   │   │   ├── Navbar.js        # Navigation bar
│   │   │   ├── Sidebar.js       # Dashboard sidebar
│   │   │   └── Footer.js        # Footer component
│   │   ├── dashboard/           # Dashboard components
│   │   │   ├── Dashboard.js     # Main dashboard component
│   │   │   └── Stats.js         # Statistics component
│   │   ├── users/               # User management components
│   │   │   ├── UserList.js      # User listing component
│   │   │   ├── UserForm.js      # User create/edit form
│   │   │   └── UserDetails.js   # User details view
│   │   └── firestore/           # Firestore data components
│   │       ├── AgbyaList.js     # Agbya collection display
│   │       ├── TaksList.js      # Taks collection display
│   │       ├── CopticList.js    # Coptic collection display
│   │       └── HymnsList.js     # Hymns collection display
│   ├── services/                # API service functions
│   │   ├── userService.js       # User API calls
│   │   └── firestoreService.js  # Firestore API calls
│   ├── context/                 # React context (if needed)
│   │   └── AuthContext.js       # Authentication context
│   ├── hooks/                   # Custom React hooks
│   │   └── useFirebase.js       # Firebase-related hooks
│   ├── utils/                   # Utility functions
│   │   └── helpers.js           # Helper functions
│   ├── App.js                   # Main App component
│   ├── index.js                 # Entry point
│   └── routes.js                # Application routes
├── package.json                 # React dependencies
└── .env.example                 # Example environment variables
```

## API Endpoints

### User Management (Realtime Database)

| Endpoint | Method | Description |
|----------|--------|-------------|
| `/api/users` | GET | Get all users |
| `/api/users/:code` | GET | Get user by code |
| `/api/users` | POST | Create a new user |
| `/api/users/:code` | PUT | Update a user |
| `/api/users/:code` | DELETE | Delete a user |

### Firestore Data

| Endpoint | Method | Description |
|----------|--------|-------------|
| `/api/firestore/agbya` | GET | Get all documents from agbya collection |
| `/api/firestore/taks` | GET | Get all documents from taks collection |
| `/api/firestore/coptic` | GET | Get all documents from coptic collection |
| `/api/firestore/hymns` | GET | Get all documents from hymns collection |
| `/api/firestore/:collection/:docId` | GET | Get specific document from a collection |

## Frontend Components

### Dashboard Layout
- Sidebar navigation
- Main content area
- Top navigation bar with user info/actions

### User Management
- Table view of all users with search/filter capabilities
- Create/Edit forms for user data
- Detailed view of user information including degree data

### Firestore Data Display
- Tabbed interface for switching between collections
- Table/Card views for each collection's documents
- Search/filter functionality for each collection

## Data Flow

1. Backend connects to Firebase using admin SDK
2. Frontend makes API calls to backend endpoints
3. Backend retrieves/modifies data in Firebase
4. Backend returns data/status to frontend
5. Frontend renders data using React components styled with Bootstrap 5

## Authentication & Security

- Firebase Admin SDK used on backend for secure access
- Environment variables for sensitive configuration
- API endpoints secured as needed
- Frontend authentication state management (if required)
