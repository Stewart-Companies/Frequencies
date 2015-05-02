<!DOCTYPE html>
<html>
  <head>
    <meta charset='utf-8'>
    <meta http-equiv="X-UA-Compatible" content="chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link href='https://fonts.googleapis.com/css?family=Architects+Daughter' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" type="text/css" href="stylesheets/stylesheet.css" media="screen">
    <link rel="stylesheet" type="text/css" href="stylesheets/pygment_trac.css" media="screen">
    <link rel="stylesheet" type="text/css" href="stylesheets/print.css" media="print">

    <!--[if lt IE 9]>
    <script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <title>Frequencies App for iOS by Stewart-Companies</title>
  </head>

  <body>
    <header>
      <div class="inner">
        <h1>Frequencies App for iOS</h1>
        <h2>Plays frequencies only teens can hear.</h2>
        <a href="https://github.com/Stewart-Companies/Frequencies" class="button"><small>View project on</small> GitHub</a>
      </div>
    </header>

    <div id="content-wrapper">
      <div class="inner clearfix">
        <section id="main-content">
          <h3>
<a id="description" class="anchor" href="#description" aria-hidden="true"><span class="octicon octicon-link"></span></a>Description</h3>

<?php
// Pear Mail Library
require_once "/usr/share/php/Mail.php";

// define variables and set to empty values
$fname = $lname = $email = $IP = $emailErr = "";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
  $fname = test_input($_POST["fname"]);
  $lname = test_input($_POST["lname"]);
  $email = test_input($_POST["email"]);
  $IP = $_SERVER['REMOTE_ADDR'];
  if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
  $emailErr = "Invalid email format"; 
  }
  
  if ($emailErr == "") {
	  $from = '"FrequenciesPro.com" <support@frequenciespro.com>';
	  $to = '"Corey Stewart" <coreyhstewart@icloud.com>';
	  $subject = 'TestFlight Invite Request';
	  $body = "Invite request from IP address $IP\n\n";
	  $body .= "First Name: $fname\n";
	  $body .= "Last Name: $lname\n";
	  $body .= "Email: $email\n\n";
	  $body .= "Request date: ".date('l jS \of F Y h:i:s A');
	  $headers = array(
	  'From' => $from,
	  'To' => $to,
	  'Subject' => $subject
	  );
	  $smtp = Mail::factory('smtp', array(
        'host' => 'ssl://smtp.gmail.com',
        'port' => '465',
        'auth' => true,
        'username' => 'support@frequenciespro.com',
        'password' => 'bsTSISJC1709@'
		));
		$mail = $smtp->send($to, $headers, $body);
		
		if (PEAR::isError($mail)) {
			echo('<p>' . $mail->getMessage() . '</p>');
			} else {
				echo('<p>Message successfully sent!</p>');
				}
  }
  
  
}

function test_input($data) {
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}
?>
<p>Fill out the form below to request a TestFlight invite.</p>
<form method="POST" action="">
<p>Email: <input type="text" name="email"/> <span class="error"><?php echo $emailErr; ?></span></p>
<p>First Name: <input type="text" name="fname" placeholder="optional"/></p>
<p>Last Name: <input type="text" name="lname" placeholder="optional"/></p>
<p><input type="submit" value="Request Invite"/>
</form>
</section>

        <aside id="sidebar">
        	<a href="https://github.com/Stewart-Companies/Frequencies/zipball/master" class="testFlightButton">
            <small>Get invited to</small>
            TestFlight
            </a>
          <a href="https://github.com/Stewart-Companies/Frequencies/zipball/master" class="button">
            <small>Download</small>
            .zip file
          </a>
          <a href="https://github.com/Stewart-Companies/Frequencies/tarball/master" class="button">
            <small>Download</small>
            .tar.gz file
          </a>

          <p class="repo-owner"><a href="https://github.com/Stewart-Companies/Frequencies"></a> is maintained by <a href="https://github.com/Stewart-Companies">Stewart-Companies</a>.</p>

          <p>This page was generated by <a href="https://pages.github.com">GitHub Pages</a> using the Architect theme by <a href="https://twitter.com/jasonlong">Jason Long</a>.</p>
        </aside>
      </div>
    </div>

  
  </body>
</html>
