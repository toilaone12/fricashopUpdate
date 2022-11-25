<?php
    include_once "../classes/contact.php";
    class ContactController{
        public function contact(){
            $contact = new Contact();
            $c = $contact->get_contact();
            return $c;
        }
    }