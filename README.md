# Bend on Google Colab

Welcome to **Bend on Colab**, a simple and automated way to install the Bend programming language on Google Colab. This script ensures a smooth setup by automatically installing Rust, HVM, and Bend without requiring manual intervention.

## Installation Steps

To install Bend on Google Colab, simply run the following commands in a Colab notebook:

```bash
!wget -q https://raw.githubusercontent.com/Lurpigi/Bend_on_Colab/main/install_bend.sh -O install_bend.sh && bash install_bend.sh && rm install_bend.sh
```

This script will:

1. Install Rust with the default configuration
2. Load the Rust environment automatically
3. Install `hvm` and `bend-lang` via Cargo

## Setting Up the Environment

After installation, add the following command at the beginning of your Colab notebook to ensure that bend is available in the system path:

```bash
import os
os.environ["PATH"] += os.pathsep + os.path.expanduser("~/.cargo/bin")
```

## Running Bend Scripts

Once installed, you can execute Bend scripts using the following command:

```bash
!bend run /content/file.bend
```

## Troubleshooting

If you encounter any issues:

- Ensure your Colab session has internet access
- If you are using `run-cu` to utilize CUDA, ensure you are connected to a runtime with an Nvidia GPU
- Restart the runtime if necessary (`Runtime -> Restart runtime` in the Colab menu)
- Check for any error messages and report them in the **Issues** section

This project is licensed under the MIT License.
