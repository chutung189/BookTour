# NPTour - Tour Booking Website with Personalized Recommendations

## 🌍 Overview
**NPTour** is a user-friendly tour booking platform designed to make travel planning effortless. With an integrated personalized recommender system, it helps users find the perfect tours based on their preferences and activities. The platform also includes robust administrative tools for managing tours, users, and analytics.

---

## ✨ Features

### 🔹 User Features:
- **Search Tours**: Filter tours by keywords, destination, duration, and more.
- **Tour Booking**: Simplified booking process with support for adults and children.
- **Account Management**:
  - View and manage booking history
  - Change password or delete account
- **Secure Login**:
  - Email activation for secure account registration

## 🔧 Technologies Used

### Frontend:
- HTML, CSS, JavaScript, Bootstrap
- Datetimepicker for date selection (date-only)

### Backend:
- PHP with Laravel Framework
- MySQL for database management
- Secure authentication with email activation

### Other Tools:
- jQuery for interactive elements
- Blade templates for dynamic content rendering

---

## 🚀 Installation & Setup

### Prerequisites:
- PHP 8.x or higher
- Composer
- MySQL
- Node.js and npm (for frontend asset compilation)

### Steps to Install:

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/chutung189/BookTour.git
   cd BookTour
   ```

2. **Install Backend Dependencies**:
   ```bash
   composer install
   ```

3. **Install Frontend Dependencies**:
   ```bash
   npm install
   npm run dev
   ```

4. **Set Up Environment Variables**:
   ```bash
   cp .env.example .env
   ```
   Update `.env` with your database credentials and mail server configuration.

5. **Run Database Migrations and Seeders**:
   ```bash
   php artisan migrate --seed
   ```

6. **Start the Development Server**:
   ```bash
   php artisan serve
   ```
   Open your browser and navigate to [http://localhost:8000](http://localhost:8000).

---

## 🗂️ Project Structure

```
booktour/
├── app/               # Backend logic (Controllers, Models)
├── database/          # Migrations and seeds
├── public/            # Public assets (CSS, JS, Images)
├── resources/         # Views and Blade templates
├── routes/            # Application routes
├── storage/           # File storage
└── tests/             # Automated tests
```

---

## 📊 Database Tables

### Key Tables:
1. **User**: Stores user details
2. **Tour**: Stores tour information
3. **Booking**: Manages user bookings
4. **Review**: Tracks tour reviews
5. **History**: Logs user activity
6. **Invoice**: Handles payment records

---

## 🔮 Future Enhancements
- Integration of a payment gateway (e.g., Stripe, PayPal).
- Advanced machine learning for personalized recommendations.
- Real-time chat support using WebSockets.
- Multi-language support for a global audience.

---
=======
# BookTour
