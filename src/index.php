<?php

if ($_SERVER['REQUEST_URI'] === '/1/ping') {
    http_response_code(200);
} else {
    http_response_code(503);
}
