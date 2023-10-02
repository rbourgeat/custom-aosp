# Custom aosp

## AOSP Initialization

The `init_aosp.sh` script automates the setup process for initializing the Android Open Source Project (AOSP) repository. It performs the following tasks:

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

## Build AOSP

The `build_aosp.sh` script is a simple utility for building the Android Open Source Project (AOSP) using the provided default or user-specified number of threads. It automates the process of setting up the build environment, configuring the build target, and starting the build process.

### Usage

To use the `build_aosp.sh` script, follow these steps:

1. Open a terminal window.

2. Navigate to the root directory of your AOSP source code.

3. Make the script executable if it isn't already:

```bash
chmod +x build_aosp.sh
```

4. Run the script with an optional argument specifying the number of threads you want to use for the build. If no argument is provided, the script will use the default value of 16 threads:

```bash
./build_aosp.sh [NUM_THREADS]
```

• NUM_THREADS (optional): The number of CPU threads to use for the build. If not provided, the default value is 16 threads.

5. The script will set up the build environment using `build/envsetup.sh`, configure the build for the "aosp_arm64-eng" target (you can modify this in the script), and then start the build process with the specified number of threads.

6. Monitor the build process as it progresses. The time it takes to complete the build depends on your system's performance and the number of threads used.

### Example

To build AOSP using 8 threads, you can run:

```bash
./build_aosp.sh 8
```

### Note

• It's essential to have a robust and well-configured development environment before using this script.

• You can customize the target lunch configuration (lunch aosp_arm64-eng) in the script to match your specific build requirements.

Please refer to the AOSP documentation for more detailed information on building Android from source: [AOSP Building Guide](https://source.android.com/setup/build).