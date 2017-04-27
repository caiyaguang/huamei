<?php

class captchaAction extends FrontAction {

    public function _empty() {
        Image::buildImageVerify(4, 1, 'png', '50', '24', 'captcha');
    }
}