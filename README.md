# 📘 Project: Offline Crypto Portfolio Tracker

## 📖 Description

An offline-first Flutter app that helps users record cryptocurrency purchases and visualize portfolio allocations.
The app runs **without internet** — all data is stored locally in **SQLite (via sqflite)**.

---

## 👤 User Stories

1. **Record Transactions**

   * As a user, I want to record a crypto purchase (coin, entry price, amount, date) so I can keep track of my holdings.
   * As a user, I want to view a list of all my transactions so I can review my past buys/sells.

2. **Portfolio Overview**

   * As a user, I want to see a pie chart of my portfolio allocation so I can understand the percentage distribution of my coins.
   * As a user, I want to see the total amount I have invested so I know my portfolio size.

3. **Editing & Management**

   * As a user, I want to edit or delete a transaction so I can correct mistakes.
   * As a user, I want to create multiple portfolios (e.g., “HODL bag”, “Trading bag”) so I can separate different strategies.

4. **Data Safety**

   * As a user, I want to export my transactions to a JSON/CSV file so I don’t lose data if I reinstall.
   * As a user, I want to import my old data so I can restore my portfolio on a new device.

---

## ✅ Functional Requirements

* **Transaction Management**

  * [ ] Add a new transaction (coin, entry price, amount, date, note).
  * [ ] List all transactions in a portfolio.
  * [ ] Edit and delete transactions.

* **Portfolio Visualization**

  * [ ] Display total invested amount.
  * [ ] Display pie chart showing allocation per coin.
  * [ ] Display cost basis (average entry price) per coin.

* **Data Management**

  * [ ] Store data locally with SQLite (`sqflite` package).
  * [ ] Export data (CSV/JSON).
  * [ ] Import data (CSV/JSON).

* **User Experience**

  * [ ] Dark/Light mode toggle.
  * [ ] Simple and minimal UI (offline-friendly).

---

## 🔧 Non-Functional Requirements

* **Offline-first**: App must work fully without internet.
* **Performance**: Load transactions and render pie chart under 1 second for up to 10,000 records.
* **Portability**: Runs on Android and iOS.
* **Data Integrity**: No data loss on app restart.
* **Security**: Store data only locally, no cloud sync.

---

## 🛠️ Tech Stack

* **Flutter** (UI framework)
* **sqflite** (SQLite database for local storage)
* **path_provider** (to manage file storage for import/export)
* **fl_chart** (for pie chart visualization)

---

## 📂 Database Schema (Initial)

### `transactions` table

| Column       | Type    | Notes                   |
| ------------ | ------- | ----------------------- |
| id           | TEXT PK | unique id (uuid)        |
| portfolio_id | TEXT    | for multiple portfolios |
| symbol       | TEXT    | e.g., “BTC”             |
| entry_price  | REAL    | price at purchase       |
| amount       | REAL    | units bought            |
| note         | TEXT    | optional                |
| executed_at  | INT     | epoch ms                |

### `portfolios` table

| Column     | Type    | Notes            |
| ---------- | ------- | ---------------- |
| id         | TEXT PK | unique id (uuid) |
| name       | TEXT    | portfolio name   |
| created_at | INT     | epoch ms         |

---

## 🚀 Future Enhancements

* [ ] Add bar chart for invested value per coin.
* [ ] Add goal tracking (e.g., “Target 2 BTC”).
* [ ] Add allocation warnings if one coin >50%.
* [ ] Add custom icons/colors for coins.

---
