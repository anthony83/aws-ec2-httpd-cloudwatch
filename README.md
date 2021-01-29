<p>IaC - Infrustructure as code demonstration.</p>
<p>This Cloudformation will build the following:</p>
<ul>
<li>EC2 Instance (within default AWS VPC)</li>
<li>Security Group allowing Inbound port 80 for http and port 22 for ssh connectivity</li>
<li>Userdata to install httpd, git, awslogsd and a git clone of an example website - provided as free to use from cloudacademy</li>
<li>EIP for the EC2 Instance</li>
</ul>
<p>You can launch via Cloudformation directly (uploading the template), alternatively i have setup a seperate shell script if you would prefer to launch via bash.</p>
<p>&nbsp;</p>
