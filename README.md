# Port Process Killer

This shell script allows users to find and kill processes using a specific port on a Linux system.

## Description

The script performs the following actions:
1. Prompts the user for a port number.
2. Finds processes using the specified port.
3. Displays information about the found processes.
4. Asks for user confirmation before killing the processes.
5. If confirmed, forcefully terminates the processes using the specified port.

## Prerequisites

- This script is designed for Linux systems.
- The `lsof` command must be installed on your system.

## Usage

1. Clone this repository or just download the file. 
2. Make the script executable:
   ```
   chmod +x killport.sh
   ```
3. Run the script:
   ```
   ./killport.sh
   ```
4. Follow the on-screen prompts.

## Warning

This script uses the `-9` signal to forcefully terminate processes. Use with caution, as this can lead to data loss or system instability if critical processes are terminated.

## License

This script is provided "as is", without warranty of any kind. Use at your own risk.

## Contributing

Feel free to fork this repository and submit pull requests for any improvements or bug fixes.

## Support

For issues, questions, or contributions, please open an issue in the GitHub repository.
