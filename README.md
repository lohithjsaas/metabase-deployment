# Metabase Deployment on DigitalOcean App Platform

This repository contains the configuration files needed to deploy Metabase on DigitalOcean App Platform with a PostgreSQL database.

## Quick Deploy Steps

### 1. Create GitHub Repository
```bash
# Create a new repository on GitHub (e.g., metabase-deployment)
git remote add origin https://github.com/YOUR_USERNAME/metabase-deployment.git
git push -u origin main
```

### 2. Deploy on DigitalOcean
1. Go to [DigitalOcean App Platform](https://cloud.digitalocean.com/apps)
2. Click "Create App"
3. Connect your GitHub repository
4. Select the repository you just created
5. DigitalOcean will automatically detect the `.do/app.yaml` file
6. Review and customize the configuration:
   - Set a secure `POSTGRES_PASSWORD` (generate one with: `openssl rand -base64 32`)
   - Update the GitHub repo name in `.do/app.yaml`
7. Click "Create Resources"

### 3. Access Your Metabase
- Your app will be available at: `https://your-app-name.ondigitalocean.app`
- Initial setup will run automatically
- Configure your admin account and connect your data sources

## Configuration Files

- `docker-compose.yml` - Local development setup
- `.do/app.yaml` - DigitalOcean App Platform configuration
- `.env.example` - Environment variables template

## Cost Estimation
- Basic app instance: ~$5/month
- Basic PostgreSQL database: ~$15/month
- Total: ~$20/month

## Local Development
```bash
cp .env.example .env
# Edit .env with your preferred settings
docker-compose up
```

## Security Notes
- Always use strong passwords for production
- Consider enabling SSL/HTTPS (included by default on DigitalOcean)
- Set up proper Metabase authentication and user management

## Support
- [DigitalOcean App Platform Docs](https://docs.digitalocean.com/products/app-platform/)
- [Metabase Documentation](https://www.metabase.com/docs/)