# Firebase Portal

A comprehensive web portal for managing Firebase Realtime Database users and viewing Firestore collections.

## Features

- **User Management**: Complete CRUD operations for users in Firebase Realtime Database
- **Firestore Data Display**: View and search data from multiple Firestore collections
- **Modern UI**: Responsive design with Bootstrap 5
- **Search Functionality**: Search across users and Firestore documents

## Project Structure

The project consists of two main parts:

1. **Backend** (`/server`): Node.js/Express server with Firebase Admin SDK integration
2. **Frontend** (`/client`): React application with Bootstrap 5

## Prerequisites

- Node.js (v14 or higher)
- npm (v6 or higher)
- Firebase project with Realtime Database and Firestore

## Setup Instructions

### Backend Setup

1. Navigate to the server directory:
   ```
   cd server
   ```

2. Install dependencies:
   ```
   npm install
   ```

3. Create a `.env` file in the server directory with your Firebase configuration:
   ```
   PORT=5000
   FIREBASE_DATABASE_URL=https://theotokosmobileapp-default-rtdb.firebaseio.com
   ```

   For production, you should use service account credentials:
   ```
   FIREBASE_TYPE=service_account
   FIREBASE_PROJECT_ID=your-project-id
   FIREBASE_PRIVATE_KEY_ID=your-private-key-id
   FIREBASE_PRIVATE_KEY=your-private-key
   FIREBASE_CLIENT_EMAIL=your-client-email
   FIREBASE_CLIENT_ID=your-client-id
   FIREBASE_AUTH_URI=https://accounts.google.com/o/oauth2/auth
   FIREBASE_TOKEN_URI=https://oauth2.googleapis.com/token
   FIREBASE_AUTH_PROVIDER_X509_CERT_URL=https://www.googleapis.com/oauth2/v1/certs
   FIREBASE_CLIENT_X509_CERT_URL=your-cert-url
   ```

4. Start the server:
   ```
   npm start
   ```

   The server will run on port 5000 by default.

### Frontend Setup

1. Navigate to the client directory:
   ```
   cd client
   ```

2. Install dependencies:
   ```
   npm install
   ```

3. Start the development server:
   ```
   npm start
   ```

   The frontend will run on port 3000 by default.

## API Endpoints

### User Management (Realtime Database)

- `GET /api/users` - Get all users
- `GET /api/users/:code` - Get user by code
- `POST /api/users` - Create a new user
- `PUT /api/users/:code` - Update a user
- `DELETE /api/users/:code` - Delete a user

### Firestore Data

- `GET /api/firestore/:collection` - Get all documents from a collection
- `GET /api/firestore/:collection/:docId` - Get specific document from a collection

## Security Considerations

Please refer to the `security-validation.md` file for important security considerations and recommendations for production deployment.

## Production Deployment

### Backend

1. Update the `.env` file with production credentials
2. Set up proper Firebase security rules
3. Deploy to your preferred hosting service (e.g., Heroku, AWS, Google Cloud)

### Frontend

1. Build the production version:
   ```
   cd client
   npm run build
   ```

2. Deploy the contents of the `build` directory to your preferred static hosting service (e.g., Firebase Hosting, Netlify, Vercel)

## License

This project is licensed under the MIT License.
