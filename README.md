# Custom aosp

## AOSP Initialization

The `ini_aosp.sh` script automates the setup process for initializing the Android Open Source Project (AOSP) repository. It performs the following tasks:

1. Creates a directory named aosp13 for the AOSP project.

2. Configures Git with a specified username and email.

3. Installs the repo tool.

4. Initializes the AOSP repository with the desired branch.

5. Syncs the AOSP repository with the specified number of threads (default is 16).

### Prerequisites

Before using this script, ensure that you have the following prerequisites:

1. A Linux-based operating system.

2. Git installed and configured with your username and email.

3. Superuser (sudo) privileges for installing packages.

### Usage

1. Clone or download this repository to your local machine.

2. Open a terminal and navigate to the directory containing the script.

3. Make the script executable if it's not already:

```bash
chmod +x init_aosp.sh
```

4. Run the script with the following command:

```bash
./init_aosp.sh [NUM_THREADS]
```

• NUM_THREADS (optional): The number of threads to use for syncing the AOSP repository. If not specified, it defaults to 16.

5. Follow the prompts, and the script will automate the setup and initialization of the AOSP repository.

### Example Usage

To initialize the AOSP repository with 8 threads for syncing:

```bash
./init_aosp.sh 8
```
