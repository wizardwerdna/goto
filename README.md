1. **Functional Requirements**

    1.  **Mandatory Requirements**

        1.  [X] The service must complete all requests ≤ one second.  
    
        1.  [X] The service must be simple and intuitive such that it does not require training for non-IT personnel to use.
    
        1.  [X] The service will have an entirely web-based front end, allowing entry of a “keyword” and “long URL”. 

        1.  [X] The resulting shortcut URL shall be available immediately after completing the data entry portion of the process (keyword, long URL and possibly a confirmation step). 
    
        1.  [X] End users will be able to enter the shortcut URL in a browser address bar and be redirected to the appropriate long URL.
    
        1.  [X] The service must be scalable to support Energy-wide use.  Therefore, use of a relational database (Oracle, MS SQL, MySQL, etc) is recommended (but not required) for storage of keywords and long URLs. *Needs to be better quantified*
    
        1.  [X] Specific keywords should be linked to and managed by the user who created them. 
    
        1.  [ ] Only authenticated users on the Siemens network will be able to access this service and create shortcuts. 

        1.  [ ] Users must be authenticated automatically, without manually entering username or password (e.g. leverage NTLM, Kerberos).
    
        1.  [ ] Users cannot overwrite existing keywords entered by other users, but should be notified when requesting an existing keyword.  In that case, the following error message will display (X = keyword):  “Keyword “X” already exists”  
    
        1.  [ ] The long URL must be eight or more characters.  If not, then the following error message will display:  “URL is too short to be valid ( < 8 characters)”
        Note:  http (4) + “:” (1) + “//” (2) + alphanumeric (at least 1) = 8
    
        1.  [ ] The keyword must be made up of letters and/or numbers, and may not contain extended or special characters, other than short-dash and underscore.  If a keyword that does not meet this criteria is attempted, then the following error message will display (X = invalid character):  “Your keyword contains an invalid character: X” 
    
        1.  [X] The solution will support English language.
    
        1.  [X] The service will fully support Internet Explorer, the current Siemens standard browser.

    1.  **Optional (High Value) Functions**

        1.  [X] The service will provide users a dynamic list of the “live” shortcut URLs they have created.
    
        1.  [X] The solution will migrate and support existing “Goto” links. *using* `rake seed`

    1.  **Optional (Medium Value) Functions**

        1.  [X] Users will be able to edit their previously entered keywords and/or long URLs.
    
        1.  [X] Users will be able to delete previous entries.
    
        1.  [ ] The service will be integrated with the employee portal (EnergyNet), such that a button can be selected within the employee portal, the service is launched, and the long URL pre-populated.
    
        1.  [ ] The solution will support German language.
    
        1.  [X] The service will support additional browser platforms (e.g. Chrome, Firefox, Safari). *don't know how this will work with authentication*

 
    1.  **Optional (Low Value) Functions**

        1.  [X] The solution will leverage open source components to avoid license and/or framework related issues.
    
        1.  [ ] The service will offer a Help or FAQ page for user support.
    
        1.  [ ] The service will have a custom logo.
    
        1.  [ ] The service will provide utilization type reports (e.g. short URL has been used # of times).
    
        1.  [ ] The solution will support Dansk language.
    
        1.  [ ] The developer(s) will create documentation detailing service architecture (e.g. web server type and version, OS type and version).
