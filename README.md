# Assignment #7 - GitHub Actions & SemVer

## Assignment Guidelines
Use the following Repo for this assignment. Fork the repo and make the necessary changes. Do NOT change the name of your clone repo.

[FastAPI Beyond CRUD Repo](https://github.com/jod35/fastapi-beyond-CRUD)

## Requirements
1. **GitHub Actions for Conventional Commits**
   - Verify that Conventional Commits were used during PR creation.
   - Close the PR if a user does not follow the Conventional Commit and send a notification about the failure.

2. **Nightly Builds**
   - Run at **12 AM** from the `main` branch.
   - Push the container image to a container registry of choice.
   - If test cases fail, the nightly build fails and cannot be stored in the registry.
   - Send a notification upon failure.

3. **Email Notifications**
   - Use [SendGrid](https://sendgrid.com/en-us) or [Ethereal Email](https://ethereal.email/) for sending emails.

4. **Docker Setup**
   - No extra download required.
   - The project should run with `docker compose up`.

## Submission Requirements
- **Repo URL** and updated **README** with relevant information.
- **List of changes made** to make everything work.
- **Recorded video** of failure notifications and the nightly build.

---

## List of Changes Made
1. **Created a `.env` file** with the following values:
   ```
   DATABASE_URL=postgresql+asyncpg://postgres:testpass@db:5432/bookly
   JWT_SECRET=hihdwidhw882892h2828he28e299
   JWT_ALGORITHM=HS256
   REDIS_HOST=redis
   REDIS_PORT=6379
   REDIS_URL=redis://redis:6379
   MAIL_USERNAME=vergie.stamm32@ethereal.email
   MAIL_PASSWORD=Bqp8bHttnnqcnTJdXw
   MAIL_SERVER=smtp.ethereal.email
   MAIL_PORT=587
   MAIL_FROM=vergie.stamm32@ethereal.email
   MAIL_FROM_NAME="Vergie Stamm"
   DOMAIN=localhost:8000
   ```

2. **Updated `requirements.txt`** with:
   ```
   pytest==8.3.4
   ```

3. **Created a `starter.sh` script** to initialize the database in Docker.
4. **Updated `Dockerfile`** to utilize `starter.sh`.
5. **Updated `compose.yml`** to use `.env` variables.
6. **Created GitHub Actions workflows in `.github/workflows/`**:
   - `check-conventional-commit.yml`
   - `nightly-build.yml`
7. Created GitHub secrets for .env variables and docker varibles to work with the workflows.

---

## Running the Application Locally
1. Copy the contents of `.env.example` into a newly created `.env` file.
2. Run the application with:
   ```sh
   docker compose up
   ```
3. Application will then be visible on http://localhost:8000/api/v1/docs

---

## Further Details
- **Videos uploaded to Google Drive**: [Link](https://drive.google.com/drive/folders/1Lzfb7shx2JJXy2PdvtvdShH0fFPdk-bQ?usp=sharing)
- **GitHub Repository**: [https://github.com/satya-sh/fastapi-beyond-CRUD](https://github.com/satya-sh/fastapi-beyond-CRUD)

