<p>Infrustructure as code demonstration leveraging Cloudformation Init for installation of packages and scripts.</p>
<p>This Cloudformation will build the following:</p>
<ul>
<li>EC2 Instance (within default AWS VPC)</li>
<li>Security Group allowing Inbound port 80 for http and port 22 for SSH connectivity</li>
<li>Userdata triggering cfn-init</li>
<li>Package installation of httpd and awslogs</li>
<li>Script execution</li>
</ul>
<p>You can launch via Cloudformation directly (uploading the template), alternatively i have setup a seperate shell script if you would prefer to launch via bash.</p>
<p>Ensure create-instance-make.sh is set so it can be executed and apply either the -c (to create) or -d (to delete)</p>
<p>eg.</p>
<p>./create-instance-make.sh -c testinfrabuild</p>
<p>ot</p>
<p>./create-instance-make.sh -d testinfrabuild</p>
<p>Its my attempt at streamlining continuous delivery.</p>
<p>&nbsp;</p>
<p>note: Cloudwatch log group is called httpd</p>
<p>Usefull resource for info on debuggin cfn-init:</p>
<p><a href="https://lono.cloud/docs/configsets/debugging/">https://lono.cloud/docs/configsets/debugging/</a></p>
<p>AWS resource on cfn-init:</p>
<p><a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cfn-init.html#cfn-init-Examples">https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cfn-init.html#cfn-init-Examples</a></p>
<p>&nbsp;</p>
<p>&nbsp;</p>
