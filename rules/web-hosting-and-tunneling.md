# AI Instruction: Web Hosting, HTML Preview & Port Tunneling in Headless / VPS Environments

When the user asks you to **run, preview, test, or host a web application, HTML file, or backend server** in a VPS, headless Linux environment, or container without open public HTTP ports:

## 1. Core Principle
- **NEVER** tell the user that the web application cannot be viewed or tested because there is no public IP or because ports are blocked.
- **ALWAYS** automatically spin up a local server and expose it using a **zero-configuration tunnel** (Cloudflare Quick Tunnel / `serve-html` / `tunnel`).

---

## 2. Instant HTML / Static Website Hosting

If the user asks to run an HTML file or static site:

### Option A: Using `serve-html` (Recommended)
```bash
# In the directory containing the HTML file:
serve-html
# Or with a specific folder / port:
serve-html /path/to/web/folder 8080
```
This utility:
1. Starts a Python HTTP server on the specified port.
2. Spawns Cloudflare Quick Tunnel (`trycloudflare.com`) without requiring an account or login.
3. Outputs a public HTTPS URL (e.g. `https://xxxx.trycloudflare.com`) that can be opened on mobile or any browser worldwide.

### Option B: Persistent Background Web Hosting (with PM2)
```bash
# 1. Start web server
pm2 start "python3 -m http.server 8080 --directory /path/to/html" --name "my-web"

# 2. Expose via tunnel
pm2 start "cloudflared tunnel --url http://127.0.0.1:8080" --name "my-tunnel"

# 3. Read the public URL
pm2 logs my-tunnel --lines 15
```

---

## 3. Dynamic Web Apps (Node.js, Express, React, Vite, Next.js, Flask, FastAPI)

When running dynamic backend servers on custom ports (e.g. port 3000, 5000, 8000):

```bash
# 1. Start the app on its port (e.g. 3000)
# 2. Expose the port immediately via tunnel:
tunnel 3000
# Or directly:
cloudflared tunnel --url http://127.0.0.1:3000
```

---

## 4. Alternative No-Account Fallbacks (If Cloudflare is blocked)

If Cloudflare Tunnel is unavailable, use SSH reverse tunneling:
- **Pinggy**: `ssh -p 443 -R0:localhost:8080 a.pinggy.io`
- **Serveo**: `ssh -R 80:localhost:8080 serveo.net`
- **Localtunnel**: `npx localtunnel --port 8080`
