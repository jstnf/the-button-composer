# the-button-composer

> The Docker compose file for the-button application.

This application uses [Cloudflare Tunnels](https://www.cloudflare.com/products/tunnel/) to run an isolated instance of The Button and publish it online.

## How to use
Use the following instructions to run your own instance of The Button.
1. Clone the repository with submodules.
   ```bash
   git clone https://github.com/jstnf/the-button-composer --recursive
   ```
2. Create a [Cloudflare tunnel](https://www.cloudflare.com/products/tunnel/). Copy the tunnel token.
   
   In the configuration, create an entry for a public hostname of your choice. For its service, route to `http://biscuitsbuttonweb:3000`.
3. Create a `.env` file from the example file. Replace the value for `CLOUDFLARE_TUNNEL_TOKEN` with the token from Cloudflare.
4. Run the following to start the application:
   ```bash
   docker compose build --no-cache
   docker compose up
   ```
5. Once done, run the following to cleanup:
   ```bash
   docker compose down
   docker image rm biscuits-button-frontend
   docker image rm biscuits-button-backend
   docker image rm cloudflare/cloudflared
   ```
