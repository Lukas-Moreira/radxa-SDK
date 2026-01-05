# SDK for Radxa boards

In this repository you can find the SDK for Radaxa boards. These SDKs are used to build applications wrote in C/C++ and simplified the cross-compilation process.

<details>

<summary>Rock Pi S board</summary>

## SDK for Rock Pi S board

In this folder you can find the shell script to compile yours scripts wrotes in C/C++ as well as the command to download the image docker.


You can download the docker image using he folliwing command:

```bash
    docker pull lukasmoreira/sdk-rpis-buster:v1.0
```
> [!NOTE] You need to have docker installed in your machine.

---

Compile yours applications usingthe following command:

```bash
    sudo chmod 777 build-rpis.scripts.sh
    ./build-rpis.scripts.sh <file_source.c> <output_file> 
```
</details>

---

<details>

<summary>Rock 5C board</summary>

## SDK for Rock 5C board

In this folder you can find the shell script to compile yours scripts wrotes in C/C++ as well as the command to download the image docker.


You can download the docker image using he folliwing command:

```bash
    docker pull lukasmoreira/sdk-r5c-bookworm:v1.0
```
> [!NOTE] You need to have docker installed in your machine.

---

Compile yours applications usingthe following command:

```bash
    sudo chmod 777 build-rpis.scripts.sh
    ./build-rpis.scripts.sh <file_source.c> <output_file> 
```
</details>