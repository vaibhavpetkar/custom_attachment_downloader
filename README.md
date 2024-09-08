Redmine Attachments Download Plugin
Overview
This plugin enables users to download attachments from issues in Redmine. It offers the following features:

Download a single attachment directly.
Select and download multiple attachments, which will be zipped and provided for download.
Option to "Select All" attachments for easy download.
Automatically hides download options if no attachments are present.
Displays a simple "Download" button if only one attachment is available.
Features
Single Attachment Download: When an issue has only one attachment, a direct download button is displayed.
Multiple Attachments Download: When multiple attachments are available, the user can select specific files using checkboxes. A "Select All" checkbox is also provided.
Zip File for Multiple Attachments: If multiple attachments are selected, they are automatically zipped and downloaded with a filename in the format issue-title-date.zip.
No Attachments Handling: If the issue has no attachments, the download options are hidden.
Requirements
Redmine 4.x
Ruby 2.6+
Rails 5.2+
Installation
Clone this repository into your Redmine plugins directory:

bash
Copy code
cd /path/to/redmine/plugins
git clone https://github.com/vaibhavpetkar/custom_attachment_downloader.git
Navigate to your Redmine root directory and install dependencies:

bash
Copy code
cd /path/to/redmine
bundle install
Migrate the plugin (if necessary):

bash
Copy code
rake redmine:plugins:migrate
Restart Redmine to apply the plugin:

If you're using Passenger, run:

bash
Copy code
touch tmp/restart.txt
Or restart your Redmine server as necessary (e.g., for Puma or other setups).

Usage
Go to an issue with attachments in Redmine.
If only one attachment is available, you'll see a direct download button.
If multiple attachments are available, you will see:
Checkboxes for selecting individual attachments.
A "Select All" checkbox for downloading all attachments.
A "Download Selected" button that will either download selected files individually or as a zip file.

Support
If you encounter any issues or have questions, please open a GitHub issue or contact the author.

This README.md file gives clear instructions on what the plugin does, how to install and use it, and where to modify the code if needed. You can adjust the repository link and other details as per your actual implementation.