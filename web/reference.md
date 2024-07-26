/* bottom of screen for voice */
#ui_frame_voice {
	display: inline-flex; padding: 5;
    position: fixed; bottom: 0.5%; left: 0.5%;
}

.voice_icon { 
    display: grid;
}

.voice_icon i {
    position: relative; font-size: 25px; 
}

#voice_indc {
    color: #c9e9ff;
}




/* bottom of screen for statuses */
#ui_frame_status {
	display: inline-flex; padding: 5;
    position: fixed; bottom: 0.5%; left: 4%;
}

.status_icon { 
    display: grid;
}

.status_icon i {
    position: relative; font-size: 25px; 
}

#health_indc {
    color: #c9e9ff;
}





/* left of screen for ailments */
#ui_frame_ailment {
	display: inline-flex; padding: 5;
    position: fixed; bottom: 30%; left: 0.5%;
}

.ailment_icon { 
    display: grid;
}

.ailment_icon i {
    position: relative; font-size: 25px; 
}

#virus_indc {
    color: #c9e9ff;
}

#illness_indc { color: #a8ce42; }



            
<div id="ui_frame_voice">
                <div id="voice_indc" class="voice_icon"> <i id="icon_voice" class="fa-solid fa-comment"></i> </div>
            </div>
            <div id="ui_frame_status">
                <div id="health_indc" class="status_icon"> <i id="icon_health" class="fa-solid fa-heart-pulse"></i> </div>
            </div>
            <div id="ui_frame_ailment">
                <div id="virus_indc" class="ailment_icon"> <i id="icon_virus" class="fa-solid fa-viruses"></i> </div>
            </div>