SOC Splunk Project - 
This project is a hands-on Security Operations Center (SOC) lab built with Splunk to simulate real-world blue team monitoring and detection. It demonstrates SIEM setup, Sysmon-based log collection, SOC detections, automation scripts, and dashboards.

📌 Features
Splunk Enterprise SIEM running on a Linux VM

Windows VM with Sysmon installed and event forwarding via Splunk Universal Forwarder

Full SwiftOnSecurity Sysmon Config for rich telemetry (process, network, registry events)

Automation scripts to ensure the Splunk Forwarder remains active

Pre-built Splunk detection queries for:

Brute-force login attempts

Suspicious PowerShell usage

Privilege escalation events

Outbound network connections

Ready-to-import Splunk dashboards for monitoring and triage

🛠️ Lab Setup
Splunk Server (Linux VM):

Install Splunk Enterprise

Enable receiving on port 9997

Windows VM:

Install Splunk Universal Forwarder

Configure outputs.conf and inputs.conf to send Sysmon and Security logs

Install Sysmon with SwiftOnSecurity Sysmon Config

Automation:

Deploy scheduled task using /automation/Restart-SplunkForwarder.ps1 to ensure forwarder resiliency.
