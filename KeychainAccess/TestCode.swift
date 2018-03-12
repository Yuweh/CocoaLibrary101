// @AccessControl

    @IBAction func didTapRegisterDevice(_ sender: Any) {
        self.segueToSecurityPin()
        
        let userPIN = self.pinUsers
        let userProfile = self.primaryUser //primaryUser
        
        let keychainForLogin = Keychain(service: "Login")
        keychainForLogin[userProfile.userNumber!] = userProfile.userPassword!
        
        let keychainForPIN = Keychain(service: "PIN Login")
        keychainForPIN[userPIN.userNumber!] = userPIN.pinNumber!
        
    }
    
    
 // @
 
