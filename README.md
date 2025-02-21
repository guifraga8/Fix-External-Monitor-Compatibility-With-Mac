# Fix-External-Monitor-Compatibility-With-Mac

I faced a problem when trying to use my MacBook Pro (with Apple Silicon M2) with a Dell monitor, model S2421N. The problem happened that, even though my Mac recognized the external monitor, using an adapter to connect to the monitor (a third-party adapter, not the official Apple one), the monitor did not provide a video signal and, looking directly at System Settings > Displays on the Mac, the monitor was recognized but only with a fixed 25 Hz refresh rate (the monitor has a refresh rate of up to 75 Hz).

I found several Mac users on several forums reporting this same problem and even with the same monitor, but without any solution. Therefore, I tried to look for possible solutions and found a way to solve this problem. Thinking about helping other Mac users who may be in the same situation as I was, I created this repository with a script that can facilitate and optimize the problem solving process for anyone who needs it.

So let's go to the guide on how to fix this problem!

## Index

1. [Requirements](#1-requirements)
2. [Filling in the Script information according to your monitor](#2-filling-in-the-script-information-according-to-your-monitor)
3. [Running the Script](#3-running-the-script)
4. [Contribution](#4-contribution)

### 1. Requirements

1. Install Homebrew (if you don't already have it)

Open the "Terminal" and type the following command to install Homebrew:

`/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`

2. Install [displayplacer](https://github.com/jakehilborn/displayplacer)

Still in the Terminal, execute the following command:

`brew install displayplacer`

### 2. Filling in the Script information according to your monitor

1. Clone this repository on your Mac

2. Move the file `fix.monitor.sh` wherever you think is ideal. For the purpose of following this guide, I will consider it for the Desktop (I believe it is more practical this way)

3. Now that you have moved the file to the desired folder (in this case, on the Desktop), you need to give the Script execution permission

Run the command below to give the Script execution permission:

`chmod +x ~/Desktop/fix.monitor.sh`

3. Fill the variables

In the script you will have two variables, namely:

`best_resolution_of_your_monitor` and `max_refresh_rate_of_your_monitor`

In my case, my monitor is FULL HD, 1920x1080, which was my desired resolution and my monitor's maximum refresh rate is 75 Hz.

Fill in the values ​​of these variables with the maximum desired resolution of your monitor and its maximum refresh rate, respectively. Use a text editor of your choice for this, nothing too complicated.

4. Uncomment the line below, which is the displayplacer command execution code. This will be the command that will execute and apply the configuration accordingly.

`# displayplacer "id:$external_monitor_id res:$best_resolution_of_your_monitor hz:$max_refresh_rate_of_your_monitor"`

If you prefer, you can run the Script first with this line commented out, as the Script will display in the Terminal the configuration that will be applied first, to ensure that it is in accordance with your preferences. After that, you can uncomment the line, save the file and run it again.

Once you have filled the variables and uncommented the command, save the file and close it.

### 3. Running the Script

To run the Script you have two super easy ways

### Directly through the Terminal

1. Still with your Terminal open, just type the command below

`~/Desktop/fix-monitor.sh`

### With one click (opening as an App)

1. Right click on the `fix-monitor.sh` file

2. Select Open With > Terminal

### 4. Contribution

If you want to contribute to this project, with your knowledge or experience, feel free to follow the steps below.

1. Fork the project.

2. Create a branch for your feature (`git checkout -b feature/new-feature`).

3. Commit your changes (`git commit -m 'Add new feature'`).

4. Push to the branch (`git push origin feature/new-feature`).

5. Open a Pull Request.
