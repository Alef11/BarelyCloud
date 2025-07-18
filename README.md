<h1>
  <img src="https://github.com/user-attachments/assets/88384a4a-3802-4c9c-b2e0-b2a23ad38885" alt="BarelyCloud" height="32" style="vertical-align: middle; margin-right: 8px;">
  BarelyCloud
</h1>

# ✅ BarelyCloud – Projekt To-Do Liste

## 🧱 Grundaufbau (Backend)
- [x] Axum-Projekt in Rust initialisiert
- [x] PostgreSQL über Docker Compose integriert
- [x] Docker-Setup mit funktionierendem Build
- [x] `GET /` Route erreichbar (Testroute)
- [x] Docker-Ports korrekt gebunden (`0.0.0.0` für externe Erreichbarkeit)

## 🔗 Datenbank & sqlx
- [ ] `sqlx`-Verbindung aufsetzen (Connection Pool)
- [ ] `.env`-Werte korrekt einlesen (`DATABASE_URL`)
- [ ] `sqlx migrate` Setup inkl. CLI (lokal oder in Docker)
- [ ] Erste Migration: `users`-Tabelle mit `id`, `email`, `created_at`
- [ ] Migrationslauf beim Start prüfen/erzwingen
- [ ] `User`-Model als Rust-Struct definieren
- [ ] Beispiel-Insert über `POST /users` Route implementieren
- [ ] `GET /users` um alle Benutzer aufzulisten

## 🔐 Authentifizierung (optional als nächster Schritt)
- [ ] JWT-basierte Authentifizierung (Login, Token ausgeben)
- [ ] `POST /auth/register` → User mit Passwort
- [ ] `POST /auth/login` → Token zurückgeben
- [ ] Middleware: Routen nur mit gültigem JWT erlauben
- [ ] Secure password hashing (z. B. `argon2`)

## 📁 Datei-Upload / Cloud-Funktionalität
- [ ] Upload-API (`POST /upload`) mit Datei + User-Zuweisung
- [ ] Datei-Metadaten in PostgreSQL speichern
- [ ] Upload entweder lokal oder zu S3-kompatiblem Speicher (z. B. MinIO)
- [ ] Authentifizierten Zugriff auf Dateien (`GET /file/:id`)
- [ ] Löschen von Dateien (`DELETE /file/:id`) mit Berechtigungsprüfung

## 🌐 Frontend (Svelte / SvelteKit)
- [ ] Svelte-Projekt einrichten
- [ ] Login/Register-UI
- [ ] Datei-Upload-Komponente
- [ ] File-Liste für eingeloggte Nutzer
- [ ] Kommunikation via REST (Axios oder `fetch`)
- [ ] Token im LocalStorage / Secure Cookie speichern

## 🔐 TLS / HTTPS für Deployment
- [ ] Nginx oder Caddy als Reverse Proxy
- [ ] Let’s Encrypt Zertifikate via Certbot
- [ ] TLS-Termination + Weiterleitung an Docker-Container
- [ ] HTTP → HTTPS redirect

## 🚀 Deployment
- [ ] Docker-Image vom Backend bauen
- [ ] Svelte als statisches Frontend exportieren (oder SvelteKit SSR)
- [ ] CI/CD Workflow definieren (z. B. GitHub Actions)
- [ ] Server (z. B. Hetzner, DigitalOcean oder lokal) einrichten

## 📊 Optional / Advanced
- [ ] Logging verbessern mit `tracing`
- [ ] Rate Limiting für Uploads
- [ ] Benutzerrollen (Admin, User)
- [ ] WebSocket für Upload-Fortschritt
- [ ] Thumbnail-Generator im Background Worker
- [ ] API-Dokumentation (z. B. OpenAPI/Swagger)
