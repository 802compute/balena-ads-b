![balena ADS-B Flight Tracker](https://raw.githubusercontent.com/ketilmo/balena-ads-b/master/docs/images/header.png)

**ADS-B Flight Tracker running on balena with support for FlightAware, Flightradar24, Plane Finder, OpenSky Network, AirNav RadarBox, and ADSB Exchange.**

Contribute to the flight tracking community! Feed your local ADS-B data from an [RTL-SDR](https://www.rtl-sdr.com/) USB dongle and a supported device (see below) running balenaOS to the tracking services [FlightAware](https://flightaware.com/), [Flightradar24](https://www.flightradar24.com/), [Plane Finder](https://planefinder.net/), [OpenSky Network](https://opensky-network.org/), [AirNav RadarBox](https://www.radarbox.com/) and [ADSB Exchange](https://adsbexchange.com). In return, you will receive free premium accounts worth several hundred dollars/year!

## Stay in the loop

👉🏻&nbsp;<a href="https://buttondown.email/balena-ads-b"> Subscribe to our newsletter</a>&nbsp;👈🏻&nbsp; to stay updated on the latest development of balena ADS-B Flight Tracker.

## Got stuck? Get help

🚨&nbsp; [Raise an issue](https://github.com/ketilmo/balena-ads-b/issues) on GitHub

💬&nbsp; [Create a post](https://forums.balena.io/t/the-balena-ads-b-thread/272290) in our forum thread

📺&nbsp; Watch the videos from the [balena IoT Happy Hour in March 2021](https://youtu.be/-8RgToapBoQ) and from [balena Hackathon in October 2021](https://youtu.be/aHlNRT1iFl0)

📨&nbsp; [Reach out directly](https://ketil.mo.land/contact)

🗞&nbsp; [Read past newsletters](https://buttondown.email/balena-ads-b/archive/)

## Supported devices
<table>
<tr><td>
<img height="24px" src="https://files.balena-cloud.com/images/fincm3/2.58.3%2Brev1.prod/logo.svg" alt="fincm3" style="max-width: 100%; margin: 0px 4px;"></td><td> balenaFin</td>
</tr>
<tr><td>
<img height="24px" src="https://files.balena-cloud.com/images/intel-nuc/2.50.1%2Brev1.prod/logo.svg" alt="intel-nuc" style="max-width: 100%; margin: 0px 4px;"></td><td> Intel NUC</td>
</tr>
<tr><td>
<img height="24px" src="https://files.balena-cloud.com/images/jetson-nano-2gb-devkit/2.67.3%2Brev3.prod/logo.svg" alt="intel-nuc" style="max-width: 100%; margin: 0px 4px;"></td><td> Nvidia Jetson Nano 2GB Devkit SD</td>
</tr>
<tr><td>
<img height="24px" src="https://files.balena-cloud.com/images/jetson-nano/2.69.1%2Brev1.prod/logo.svg" alt="intel-nuc" style="max-width: 100%; margin: 0px 4px;"></td><td> Nvidia Jetson Nano SD-CARD</td>
</tr>
<tr><td>
<img height="24px" src="https://files.balena-cloud.com/images/raspberrypi3/2.58.3%2Brev1.prod/logo.svg" alt="raspberrypi3" style="max-width: 100%; margin: 0px 4px;"></td><td>Raspberry Pi 3 Model B+</td>
</tr>
<tr><td>
<img height="24px" src="https://files.balena-cloud.com/images/raspberrypi4-64/2.65.0%2Brev1.prod/logo.svg" alt="raspberrypi4-64" style="max-width: 100%; margin: 0px 4px;"></td><td>Raspberry Pi 4 Model B</td>
</tr>
<tr><td>
<img height="24px" src="https://files.balena-cloud.com/images/raspberrypi400-64/2.65.0%2Brev2.prod/logo.svg" alt="raspberrypi4-400" style="max-width: 100%; margin: 0px 4px;"></td><td>Raspberry Pi 400</td>
</tr>
</table>

## Credits

The balena-ads-b project is created and maintained by [Ketil Moland Olsen](https://github.com/ketilmo/).

It's inspired by and has borrowed code from the following repos and forum threads:  

 - https://github.com/compujuckel/adsb-docker
 - https://bitbucket.org/inodes/resin-docker-rtlsdr
 - https://github.com/wercsy/balena-ads-b
 - https://github.com/mikenye/
 - [https://discussions.flightaware.com/](https://discussions.flightaware.com/t/howto-install-piaware-4-0-on-debian-10-amd64-ubuntu-20-amd64-kali-2020-amd64-on-pc/69753/3)
 - https://github.com/marcelstoer/docker-adsbexchange

Thanks to [compujuckel](https://github.com/compujuckel/), [Glenn Stewart](https://bitbucket.org/inodes/), [wercsy](https://github.com/wercsy/), [mikenye](https://github.com/mikenye/), [abcd567a](https://github.com/abcd567a) and [marcelstoer](https://github.com/marcelstoer) for sharing!

Thanks to [garethhowell](https://github.com/garethhowell) for implementing the initial ADSB Exchange support, and to [wiedehopf](https://github.com/wiedehopf/) for improving it.

Thanks to [rmorillo24](https://github.com/rmorillo24/) for verifying balenaFin compability, to [adaptive](https://github.com/adaptive/) for confirming Raspberry Pi 400 compability, and to [alanb128](https://github.com/alanb128) for confirming that the UAT implementation works in the US.

Software packages that are downloaded, installed, and configured by the balena-ads-b script are disclosed in [CREDITS.md](https://github.com/ketilmo/balena-ads-b/blob/master/CREDITS.md).

## Contributors
<a href="https://github.com/ketilmo/balena-ads-b/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=ketilmo/balena-ads-b" />
</a>

## Table of Contents
- [Part 1 – Build the receiver](#part-1--build-the-receiver)
- [Part 2 – Setup balena and configure the device](#part-2--setup-balena-and-configure-the-device)
- [Part 3 – Configure FlightAware](#part-3--configure-flightaware)
  * [Alternative A: Port an existing FlightAware receiver](#alternative-a-port-an-existing-flightaware-receiver)
  * [Alternative B: Setup a new FlightAware receiver](#alternative-b-setup-a-new-flightaware-receiver)
- [Part 4 – Configure Flightradar24](#part-4--configure-flightradar24)
  * [Alternative A: Port an existing Flightradar24 receiver](#alternative-a-port-an-existing-flightradar24-receiver)
  * [Alternative B: Setup a new Flightradar24 receiver](#alternative-b-setup-a-new-flightradar24-receiver)
- [Part 5 – Configure Plane Finder](#part-5--configure-plane-finder)
  * [Alternative A: Port an existing Plane Finder receiver](#alternative-a-port-an-existing-plane-finder-receiver)
  * [Alternative B: Setup a new Plane Finder receiver](#alternative-b-setup-a-new-plane-finder-receiver)
- [Part 6 – Configure OpenSky Network](#part-6--configure-opensky-network)
  * [Alternative A: Port an existing OpenSky Network receiver](#alternative-a-port-an-existing-opensky-network-receiver)
  * [Alternative B: Setup a new OpenSky Network receiver](#alternative-b-setup-a-new-opensky-network-receiver)
- [Part 7 – Configure RadarBox](#part-7--configure-radarbox)
  * [Alternative A: Port an existing RadarBox receiver](#alternative-a-port-an-existing-radarbox-receiver)
  * [Alternative B: Setup a new RadarBox receiver](#alternative-b-setup-a-new-radarbox-receiver)
- [Part 8 - Configure ADSB Exchange](#part-8---configure-adsb-exchange)
- [Part 9 – Exploring flight traffic locally on your device](#part-9--exploring-flight-traffic-locally-on-your-device)
- [Part 10 - (Optional) Add a digital display](#part-10---optional-add-a-digital-display)

## Part 1 – Build the receiver

We'll build the receiver using the parts that are outlined on the Flightradar24, FlightAware, and RadarBox websites: 
- https://www.flightradar24.com/build-your-own
- https://flightaware.com/adsb/piaware/build
- https://www.radarbox.com/raspberry-pi

These sites suggest the Raspberry Pi 3 Model B+ as the preferred device. Still, this project runs on all the devices mentioned above. Suppose you are buying a new appliance specifically for this project. In that case, we suggest the **Raspberry Pi 4 Model B** with as much memory you can afford. It's excellent value for money.

In addition to the device, you will need an RTL-SDR compatible USB dongle. The dongles are based on a digital television tuner, and numerous types will work – both generic TV sticks and specialized ADS-B sticks (produced by FlightAware). Although both options work, the ADS-B sticks seem to perform a little better.

## Part 2 – Setup balena and configure the device

[![Deploy with button](https://www.balena.io/deploy.svg)](https://dashboard.balena-cloud.com/deploy?repoUrl=https://github.com/ketilmo/balena-ads-b&defaultDeviceType=raspberrypi4-64)

or

 1. [Create a free balena account](https://dashboard.balena-cloud.com/signup). During the process, you will be asked to upload your public SSH key. If you don't have a public SSH key yet, you can [create one](https://help.github.com/en/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent).
 2. Sign in to Balena and head over to the [*Fleets*](https://dashboard.balena-cloud.com/fleets) panel.
 3. Create a fleet with the name of your choice, for the device type of your choice. Take note of the fleet name, you will need it later. In the dialog that appears, make sure to pick a *Default Device Type* that matches your device. If you want to use WiFi (and your device supports it), specify the SSID and password here, too. (If your device comes up without an active connection to the Internet, the `wifi-connect` container will create a network with a captive portal to connect to a local WiFi network. The SSID for the created hotspot is `balenaWiFi`, and the password is`balenaWiFi`. When connected, visit `http://192.168.42.1:8181/` in your web browser to setup the connection.
 4. balena will create an SD card image for you, and this will start downloading automatically after a few seconds. Flash the image to an SD-card using balena's dedicated tool [balenaEtcher](https://www.balena.io/etcher/).
 5. Insert the SD card in your receiver, and connect it to your cabled network (unless you plan to use WiFi only, and configured that in step 3). 
 6. Power up the receiver.
 7. From the balena dashboard, navigate to the fleet you just created. Within a few minutes, a new device with an automatically generated name should appear. Click on it to open it.
 8. Rename your device to your taste by clicking on the pencil icon next to the current device name.
 9. Next, we'll configure the receiver with its geographic location. Unless you happen to know this by heart, you can use [Google Maps](https://maps.google.com) to find it. When you click on your desired location on the map, the corresponding coordinates should appear. We are looking for the decimal coordinates, which should look similar to this: 60.395429, 5.325127.
 10. Back in the balena console, verify that you have opened up the view for your desired device. Click on the *Device Variables*-button. Add the following two variables: `LAT` *(Receiver Latitude)*, e.g. with a value such as `60.12345` and `LON` *(Receiver Longitude)*, e.g. with a value such as `4.12345`.
 11. Now, you're going to enter the receiver's altitude in *meters* above sea level in a new variable named `ALT`. If you don't know the altitude, you can find it using [one of several online services](https://www.maps.ie/coordinates.html). If your antenna is mounted above ground level, remember to add the approximate number of corresponding meters.
 12. Almost there! Next, we are going to push this code to your device through the balena cloud. We'll do that using the [balena CLI](https://github.com/balena-io/balena-cli). Follow the [official instructions](https://github.com/balena-io/balena-cli/blob/master/INSTALL.md) to download and install the CLI for your platform of choice.
 14. Head into your terminal and login to balena with the following command: `balena login`. Then follow the instructions on the screen.
 15. Next, clone the balena-ads-b repository to your local computer: `git clone git@github.com:ketilmo/balena-ads-b.git`. If you want to make changes to the repo, you can also fork it.
 16. Head into the folder of the newly cloned repo by typing `cd balena-ads-b`.
 17. Do your remember your fleet name from earlier? Good. Now, we are ready to push the applications to balena's servers by typing `balena push YOUR–FLEET–NAME–HERE`.
 18. Now, wait while the Docker containers build on balena's servers. If the process is successful, you will see a beautiful piece of ASCII art depicting a unicorn right in you terminal window:
<pre>
			    \
			     \
			      \\
			       \\
			        >\/7
			    _.-(6'  \
			   (=___._/` \
			        )  \ |
			       /   / |
			      /    > /
			     j    < _\
			 _.-' :      ``.
			 \ r=._\        `.
			<`\\_  \         .`-.
			 \ r-7  `-. ._  ' .  `\
			  \`,      `-.`7  7)   )
			   \/         \|  \'  / `-._
			              ||    .'
			               \\  (
			                >\  >
			            ,.-' >.'
			           <.'_.''
			             <'

</pre>
 15. Wait a few moments while the Docker containers are deployed and installed on your device. The groundwork is now done – good job!


## Part 3 – Configure FlightAware
### Alternative A: Port an existing FlightAware receiver
If you have previously set up a standalone FlightAware receiver, and want to port it to balena, you only have to do the following steps:

 1. Head back to your device's page in the balena dashboard and click on the *Device Variables*-button. Add the following variable: `FLIGHTAWARE_FEEDER_ID`, then paste your *Unique Identifier* key, eg. `134cdg7d-7533-5gd4-d31d-r31r52g63v12`. The ID can be found on the *My ADS-B* section at the FlightAware website.
 2. From the balena dashboard, restart the *piaware* service under *Services* by clicking the "cycle" icon next to the service name.

### Alternative B: Setup a new FlightAware receiver
If you have not previously set up a FlightAware receiver that you want to reuse, do the following steps:

 1. Head back to your device's *Summary* page. Inside the *Terminal* section, click *Select a target*, then *piaware*, and finally *Start terminal session*. This will open a terminal which lets you interact directly with your PiAware container.
 2. Once the terminal prompt appears, enter `/getid.sh` (including the leading slash), then press return.
 3. If everything goes according to plan, your FlightAware feeder id will soon appear. Copy it.
 4. Click on the *Device Variables*-button in the left-hand menu. Add a variable named `FLIGHTAWARE_FEEDER_ID` and paste the value from the previous step, e.g. `134cdg7d-7533-5gd4-d31d-r31r52g63v12`.
 5. Go back to your device's *Summary* page. Restart the *piaware* service under *Services* by clicking the “cycle” icon next to the service name.
 6. Register [a new account](https://flightaware.com/account/join/) at FlightAware, then login using your newly created credentials.
 7. **Important:** While being connected to *the same network* (either cabled or wireless) as your receiver is connected to, head to FlightAware's *[Claim Receiver](https://flightaware.com/adsb/piaware/claim)* page.
 8. Check if any receivers show up under the *Linked PiAware Receivers* heading. (If not, wait a few minutes and click the *Check Again for my PiAware*-button.) Hopefully, your receiver is now visible under the *Linked PiAware Receivers* header.
 9. In the left-hand-side menu on the top of the page, click the *My ADBS-B* menu item. Your device should be listed in an orange rectangle. Next, click the cogwheel icon on the right-hand side of the screen.
 10. Click the *Configure Location*-button, and verify that the location matches the coordinates you entered earlier. If not, correct them.
 11. Click the *Configure Height*-button, and specify the altitude of your receiver. The value should match the number you entered in the `ALT` variable in part 1.
 12. If you don't face any bandwidth constraints, enable multilateration (MLAT). Enabling MLAT lets your receiver connect to other nearby receivers to multilaterate the positions of aircraft that does not report their position through ADS-B. This option increases the bandwidth usage a bit but gives more visible aircraft positions in return. 
 13. Specify the other settings in the FlightAware lightbox according to your personal preferences. Close the lightbox.
 14. Finally, verify that FlightAware is receiving data from your receiver. You'll find your receiver's dashboard by clicking on the *My ADS-B* top menu item at [flightaware.com](https://www.flightaware.com). 
 
## Part 4 – Configure Flightradar24
### Alternative A: Port an existing Flightradar24 receiver
If you have previously set up a Flightradar24 receiver and want to port it to balena, you only have to do the following steps:

 1. Head back to the balena dashboard and your device's page. Click on the *Device Variables*-button. Add a variable named `FR24_KEY` and paste the value of your existing Flightradar24 key, e.g. `dv4rrt2g122g7233`. The key is located in the Flightradar24 config file, which is usually found here: `/etc/fr24feed.ini`. (If you are unable to locate your old key, retrieve or create a new one it by following the steps in alternative B.)
 2. Restart the *fr24feed* service under *Services* by clicking the "cycle" icon next to the service name.

### Alternative B: Setup a new Flightradar24 receiver
If you have not previously set up a Flightradar24 receiver that you want to reuse, do the following steps:

 1. Head back to your device's page on the balena dashboard.
 2. Inside the *Terminal* section, click *Select a target*, then *fr24feed*, and finally *Start terminal session*.
 3. This will open a terminal which lets you interact directly with your Flightradar24 container.
 4. At the prompt, enter `fr24feed --signup`.
 5. When asked, enter your email address.
 6. You will be asked if you have a Flightradar24 sharing key. Unless you have one from the past that you would like to reuse, press return here.
 7. If you want to activate multilateration, type `yes` at the next prompt. If you have restricted bandwidth available, consider leaving it off by typing `no`. 
 8. Enter the receiver's latitude. This should be the exact same value that you entered in the `LAT` variable in part 1.
 9. Enter the receiver's longitude. This should be the exact same value that you entered in the `LON` variable in part 1.
 10. Finally, enter the receiver's altitude in *feet*. You can calculate this by multiplying the value that you entered in the `ALT` variable in part 1 by 3.28.
 11. Now, a summary of your settings will be displayed. If you are happy with the result, type `yes` to continue.
 12. Under receiver type, choose `4` for ModeS Beast.
 13. Under connection type, choose `1` for network connection.
 14. When asked for your receiver's IP address/hostname, enter `dump1090-fa`.
 15. Next, enter the data port number: `30005`.
 16. Type `no` to disable the RAW data feed on port 30334.
 17. Type `no` to disable the Basestation data feed on port 30003.
 18. Enter `0` to disable log file writing.
 19. When asked for a log file path, just hit return.
 20. The configuration will now be submitted, and you are redirected back to the terminal.
 21. At the prompt, type `cat /etc/fr24feed.ini`. Your Flightradar24 settings will be displayed. 
 22. Find the line starting with `fr24key=`, and copy the string between the quotes. It will look something like this: `dv4rrt2g122g7233`.
 23. Click on the *Device Variables*-button in the left-hand menu. Add a variable named `FR24_KEY` and paste the value from the previous step, e.g. `dv4rrt2g122g7233`.
 24. Restart the *fr24feed* service under *Services* by clicking the "cycle" icon next to the service name.
 25. Head over to [Flightradar24's website](https://www.flightradar24.com/premium/signup) and create a new *Basic* account, using the *exact same email address* that you filled in in step 5.
 26. Shortly after your receiver starts feeding data to Flightradar24, your *Basic* account will be upgraded to their *Business* plan. Enjoy!

## Part 5 – Configure Plane Finder
### Alternative A: Port an existing Plane Finder receiver
If you have previously set up a Plane Finder receiver and want to port it to balena, you only have to do the following steps:

 1. Head back to the balena dashboard and your device's page. Click on the *Device Variables*-button. Add a variable named `PLANEFINDER_SHARECODE` and paste the value of your existing Plane Finder key, e.g. `7e3q8n45wq369`. You can find your key at Plane Finder's *[Your Receivers](https://planefinder.net/account/receivers)* page.
 2. On your device's page in the balena dashboard, restart the *planefinder* service under *Services* by clicking the "cycle" icon next to the service name.

### Alternative B: Setup a new Plane Finder receiver
If you have not previously set up a Plane Finder receiver that you want to reuse, do the following steps:

 1. Register a new [Plane Finder account](https://planefinder.net).
 2. If you cloned this repo, `balena-ads-b`, in part 2 of this guide, locate it on your computer and find the folder `planefinder`. Alternatively, if you used the *Deploy with balena*-button, download the following archive and unzip it: [SharecodeGenerator.zip](https://raw.githubusercontent.com/ketilmo/balena-ads-b/master/planefinder/SharecodeGenerator.zip)
 3. Locate the the file `SharecodeGenerator.html` and open it in your web browser.
 4. Fill in the form to generate a Plane Finder share code. Use the same email address as you used when registering for the Plane Finder account. For *Receiver Lat*, use the value from the `LAT` variable in part 2. For *Receiver Lon*, use the value from the `LON` variable. Lastly, click the *Create new sharecode* button. A sharecode should appear in a few seconds, it should look similar to `6g34asr1gvvx7`. Copy it to your clipboard. Disregard the rest of the form – you don't have to fill this out.
 5. Open Plane Finder's *[Your Receivers](https://planefinder.net/account/receivers)* page. Under the *Add a Receiver* heading, locate the *Share Code* input field. Paste the sharecode from the previous step, then click the *Add Receiver*-button.
 6. Head back to the Balena dashboard and your device's page. Click on the *Device Variables*-button. Add a variable named `PLANEFINDER_SHARECODE` and paste the value of the Plane Finder key you just created, e.g. `7e3q8n45wq369`.
 7. On your device's page in the Balena dashboard, restart the *planefinder* service under *Services* by clicking the "cycle" icon next to the service name.

## Part 6 – Configure OpenSky Network
### Alternative A: Port an existing OpenSky Network receiver
If you have previously set up a OpenSky Network receiver and want to port it to balena, you only have to do the following steps:

 1. Head back to the balena dashboard and your device's page. Click on the *Device Variables*-button – *Vx*.
 2. Add a variable named `OPENSKY_USERNAME` and paste your OpenSky Network username, e.g. `JohnDoe123`. You can find your username on your OpenSky Network *[Dashboard](https://opensky-network.org/my-opensky)* page.
 3. Add a variable named `OPENSKY_SERIAL` and paste the value of your existing OpenSky Network serial number, e.g. `1663421823`. You can find your serial your OpenSky Network *[Dashboard](https://opensky-network.org/my-opensky)* page.
 4. On your device's page in the balena dashboard, restart the *opensky-network* service under *Services* by clicking the "cycle" icon next to the service name.

### Alternative B: Setup a new OpenSky Network receiver
If you have not previously set up a OpenSky Network receiver that you want to reuse, do the following steps:

 1. Register a new [OpenSky Network account](https://opensky-network.org/index.php?option=com_users&view=registration). Make sure to activate it using the email that's sent to you. Take note of your username, you will need it soon.
 2. Head back to your device's page on the balena dashboard. Click on the *Device Variables*-button in the left-hand menu. Add a variable named `OPENSKY_USERNAME` and populate it with your newly created OpenSky Username, e.g.  `JohnDoe123`.
 3. Head back to your device's *Summary* page. Restart the *opensky-network* service under *Services* by clicking the "cycle" icon next to the service name. Wait for the service to finish restarting.
 4. Inside the *Terminal* section, click *Select a target*, then *opensky-network*, and finally *Start terminal session*.
 5. This will open a terminal which lets you interact directly with your OpenSky Network container.
 6. Once the terminal prompt appears, enter `/getserial.sh` (including the leading slash), then press return.
 7. If everything goes according to plan, your OpenSky Network serial number will soon appear. Copy it.
 8. Click on the *Device Variables*-button in the left-hand menu. Add a variable named `OPENSKY_SERIAL` and paste the value from the previous step, e.g. `1267385439`.
 9. Go back to your device's *Summary* page. Restart the *opensky-network* service under *Services* by clicking the “cycle” icon next to the service name.
 10. Head over to your OpenSky Network *[Dashboard](https://opensky-network.org/my-opensky)* and verify that your receiver shows up and feeds data.

## Part 7 – Configure RadarBox

### Alternative A: Port an existing RadarBox receiver
If you have previously set up a RadarBox receiver and want to port it to Balena, you only have to do the following steps:

 1. Head back to the Balena dashboard and your device's page. Click on the *Device Variables*-button. Add a variable named `RADARBOX_KEY` and paste the value of your existing RadarBox key, e.g. `546b69e69b4671a742b82b10c674cdc1`. To get your key, issue the following command at your current RadarBox device: `sudo rbfeeder --showkey --no-start`.
 2. Restart the *radarbox* service under *Services* by clicking the "cycle" icon next to the service name.

### Alternative B: Setup a new RadarBox receiver
If you have not previously set up a RadarBox receiver that you want to reuse, do the following steps:

 1. Register a new [RadarBox account](https://www.radarbox.com/register). Make sure to activate it using the email that's sent to you.
 2. Head back to your device's page on the balena dashboard.
 3. Inside the *Terminal* section, click *Select a target*, then *radarbox*, and finally *Start terminal session*.
 4. This will open a terminal which lets you interact directly with your RadarBox container.
 5. At the prompt, enter `/showkey.sh`. Your RadarBox key will be displayed, and will look similar to this: `546b69e69b4671a742b82b10c674cdc1`.
 6. Click on the *Device Variables*-button in the left-hand menu. Add a variable named `RADARBOX_KEY` and paste the value from step 5, e.g. `546b69e69b4671a742b82b10c674cdc1`.
 7. Restart the *radarbox* service under *Services* by clicking the "cycle" icon next to the service name.
 8. Next, head over to RadarBox' [Claim Your Raspberry Pi](https://www.radarbox.com/raspberry-pi/claim) page. Locate the input field named *Sharing Key,* and paste the value from step 5, e.g. `546b69e69b4671a742b82b10c674cdc1`.
 9. Next, you might be asked to enter your feeder's location and altitude *above the ground.* Enter the same values that you entered in the `LAT` and `LON` variables earlier. When asked for the antenna's altitude, specify it i meters (or feet) *above the ground* – NOT above sea level as done previously. If you are not asked to enter this information, you can do it manually by clicking the *Edit* link under your receiver's ID on the left-hand side of the screen. 
 10. Finally, verify that RadarBox is receiving data from your receiver. You'll find your receiver by clicking on the *Account* menu at [radarbox.com](https://www.radarbox.com) , under the *Stations* accordion. 

## Part 8 - Configure ADSB Exchange

1. Head back to your device's page on the balena dashboard. Inside the *Terminal* section, click *Select a target*, then *adsb-exchange*, and finally *Start terminal session*. This will open a terminal which lets you interact directly with your ADSB Exchange container.
2. At the prompt, type `/usr/local/share/adsbexchange-stats/create-uuid.sh` followed by return. Your ADSB-Exchange UUID is displayed. Note it down.
3. At the same prompt, type `/create-sitename.sh` followed by return. Enter a friendly name for your feeder as per the instructions on screen (e.g. your location). Hit return and note down the result.
4. Click on the *Device Variables*-button. Add a variable named `ADSB_EXCHANGE_UUID` with the value from step 2.
5. Click on the *Device Variables*-button. Add a variable named `ADSB_EXCHANGE_SITENAME` with the value from step 3.
6. Restart the *adsb-exchange* service under *Services* by clicking the "cycle" icon next to the service names.
7. Next, wait a minute or two for the service to restart and head over to ADSB Exchange's 
[Feeder Status](https://www.adsbexchange.com/myip/) page from a PC on the same network as the feeder. Verify that your feeder is shown as registered and that ADSB Exchange is receiving your feed and mlat data. You can also verify your feeder's performance at the [ADSB Exchange Feeder Map](https://map.adsbexchange.com/mlat-map/) by searching for you sitename.

## Part 9 – Exploring flight traffic locally on your device
If the setup went well, you should now be feeding flight traffic data to several online services. In return for your efforts, you will receive access to the providers' premium services. But in addition to this, you can explore the data straight from your device, raw and unedited. And that's part of the magic, right?

When you have local network access to your receiver, you can explore the data straight from the source. Start by opening your device page in balena console and locate the `IP ADDRESS` field, e.g. `10.0.0.10`. Then, add the desired port numbers specified further below.

Away from your local network but still eager to know what planes are cruising over your home? Here, balena's builtin *Public Device URL* comes in handy. Open your device page in balena console and locate the `PUBLIC DEVICE URL` header, and flip the switch below to enable it. Finally, click on the arrow icon next to the button, add the desired URL postfix specified below and voila – you should see what's going on in your area.

 **Dump1090's Radar View**
This view visualizes everything that your receiver sees, including multilaterated plane positions. When you are in your local network, head to `YOURIP:8080` to check it out. When remote, open balena's *Public Device URL* and add `/skyaware/` to the tail end of the URL, e.g. `https://6g31f15653bwt4y251b18c1daf4qw164.balena-devices.com/skyaware/`

**Plane Finder's Radar View**
It's similar to Dump1090, but Plane Finder adds 3D visualization and other nice viewing options. Head to `YOURIP:30053` to check it out. When remote, open balena's *Public Device URL* and add `/planefinder/` to the tail end of the URL, e.g. `https://6g31f15653bwt4y251b18c1daf4qw164.balena-devices.com/planefinder/`

**Flightradar24 Status Page**
Less visual than the two other options, Flightradar24's status page gives you high level statistics and a metrics about how your feeder is doing. Head to `YOURIP:8754` to check it out. When remote, open balena's *Public Device URL* and add `/fr24feed/` to the tail end of the URL, e.g. `https://6g31f15653bwt4y251b18c1daf4qw164.balena-devices.com/fr24feed/`

## Part 10 - (Optional) Add a digital display
balena also produces a project that can be easily configured to display a webpage in kiosk mode on a digital display called balenaDash. By dropping that project into this one, we can automatically display a feeder page directly from the Pi. Ensure you have cloned this repository recursively (`git clone --recursive {{repository URL}}`). We can then set a `LAUNCH_URL` device variable configured to connect to `http://{{YOURIP or YOURSERVICENAME}}:YOURSERVICEPORT` (where the service/port are one of the frontends above, like `http://planefinder:30053`) and that will automatically be displayed on the attached display. The balenaDash service can be configured locally by accessing the webserver on port 8081.

Enjoy!
