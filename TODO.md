
This project is a Rails web app that lets a user upload files, view metadata about the files they've uploaded, and download files that they've already uploaded to the server.  It's up to you whether to implement this as separate frontend and backend components, or to use the Rails built-in views, or a combination of both.  We might ask for a justification of the approach you decide to take.  There's no need to worry about authentication or different users.

You can use any third-party libraries that you want, as long as the deployment instructions cover installing them.



## Project Specification

The default page for the app should be a table that displays the uploaded files present on the server.  The items in the table should be sorted by filename.  The table should have the following columns, with a header row that labels the columns, and the appropriate values for the file in each row:

Filename, Filesize, SHA256 Checksum, Actions

The Actions cell in each row should contain a download button, a rename button, and a delete button.  These should work in a reasonable way, and let the user rename the file in that row, delete it, or download it.  The download button should not display the file contents in the browser; when clicking the button the browser should prompt for a local download location, or download it automatically to the default location, depending on how the user's browser is configured.

Somewhere on the page there should be a button or link that allows the user to upload a new file.  The user should be able to input a different filename than what the file about to be uploaded is currently named.  When this is submitted, that file with the selected filename should persist on the server to be available for download in the future, including after reboots of the server.  The server should accept files up to 1 gigabyte in size, and reject any files larger than that with a useful error message to the user.



## Appearance

The appearance of the app is not critical, but there should be enough styling applied so that it doesn't look like a professor's university homepage from 1996.  Clean, simple, and unoffensive are good enough here.  Using an existing CSS framework or library is fine, and you don't need to serve those CSS files from your own server unless you want to.  It's fine to link them from a CDN or other external source on the web.



## Deployment

The Rails app should be deployed behind a standard web server, either Apache or Nginx, as it would in a typical production deployment.  Other than that requirement, the deployment should be pretty simple and straightforward.  Document the steps needed to deploy your app including installing dependencies, configuration, and starting services automatically.  This could be in the form of a
Dockerfile (or a Docker image on Dockerhub), an Ansible playbook, or some other automated dev ops tool.  Since this isn't a devops position, it's also fine to do it as a Bash script or as instructions in the README.



## Submitting

E-mail us a link to a Gitlab or Github repo where your completed project lives.  There should be a README.md file at the root of the repo that gives instructions on how to run the app, which can leverage the use of an automated devops tool.  Feel free to include any additional information or comments about the project in your e-mail.