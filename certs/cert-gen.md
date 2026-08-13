# 🔐 Generating Self-Signed SSL Certificates for OrangeHRM

To enable HTTPS (`https://localhost/ohrm`), you need a self-signed certificate pair:

- `fullchain.pem` → Public certificate
- `privkey.pem` → Private key

## 🛠️ Command Steps

1. Generate a private key (`privkey.pem`):
   ```bash
   openssl genrsa -out privkey.pem 2048
   ```
2. Create a certificate signing request (CSR):
   ```bash
   openssl req -new -key privkey.pem -out server.csr \ -subj "/C=MM/ST=Mandalay/L=Tha Man/O=OrangeHRM/OU=IT/CN=localhost"
   ```
3. Generate a self-signed certificate (fullchain.pem):
   ```bash
   openssl x509 -req -days 365 -in server.csr -signkey privkey.pem -out fullchain.pem
   ```
4. Verify the certificate:
   ```bash
   openssl x509 -in fullchain.pem -text -noout
   ```

# ⚠️ Notes
- These certificates are for local testing only.
- Browsers will show a warning because the cert is not signed by a trusted CA.
- For production, use a trusted CA like Let’s Encrypt.
