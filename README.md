# Keycloak Sample Configuration

This repository contains configuration files and scripts for setting up and managing Keycloak with various backends.

## Directory Structure

- `proxy/`: Configuration files for setting up a proxy with Keycloak.
- `sqlserver/`: SQL scripts and configuration files for integrating Keycloak with SQL Server.

## Getting Started

### Prerequisites

- Keycloak installed and running.
- A proxy server (e.g., NGINX, Apache) if using the proxy configuration.
- Access to a SQL Server database if using the SQL Server configuration.

### Installation

1. Clone the repository:
    ```sh
    git clone https://github.com/mmyassin/keycloak-sample-configuration.git
    cd keycloak-sample-configuration
    ```

2. Follow the instructions in the respective directories for setting up the proxy or SQL Server configurations.

## Proxy Setup

1. Navigate to the `proxy` directory:
    ```sh
    cd proxy
    ```

2. Copy the proxy configuration file to your proxy server's configuration directory. For NGINX, this might be `/etc/nginx/sites-available/`:
    ```sh
    sudo cp keycloak-proxy.conf /etc/nginx/sites-available/keycloak-proxy.conf
    ```

3. Create a symbolic link to the `sites-enabled` directory (for NGINX):
    ```sh
    sudo ln -s /etc/nginx/sites-available/keycloak-proxy.conf /etc/nginx/sites-enabled/
    ```

4. Test the proxy configuration to ensure there are no syntax errors:
    ```sh
    sudo nginx -t
    ```

5. Reload the proxy server to apply the new configuration:
    ```sh
    sudo systemctl reload nginx
    ```

## SQL Server Integration

1. Navigate to the `sqlserver` directory:
    ```sh
    cd sqlserver
    ```

2. Modify the `realm-export.json` file with your specific settings.

3. Run the provided SQL script to set up the necessary tables in your SQL Server database:
    ```sh
    sqlcmd -S <server_name> -U <username> -P <password> -i setup.sql
    ```

4. Update your Keycloak configuration to point to the SQL Server database.

## Contributing

Contributions are welcome! Please open an issue or submit a pull request.

## License

This project is licensed under the MIT License.
