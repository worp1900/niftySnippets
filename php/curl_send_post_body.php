<?php

$someUrl = 'http://google.com';
$someJson = '{'someKey' : 'someValue'}';

$ch = curl_init($someUrl);
# Setup request to send json via POST
curl_setopt($ch, CURLOPT_POSTFIELDS, $someJson);
# Set return header to json
curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type:application/json'));
# Return response instead of printing.
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
# Send request and save to variable
$result = curl_exec($ch);
# Close curl handle
curl_close($ch);
# Dump results
var_dump($result);
