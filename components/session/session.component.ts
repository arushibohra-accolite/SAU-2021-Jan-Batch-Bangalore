import { Component, OnInit } from '@angular/core';

import { Session_Model } from './session_model/session_model';

@Component({
  selector: 'app-session',
  templateUrl: './session.component.html',
  styleUrls: ['./session.component.scss']
})
export class SessionComponent implements OnInit {


  // sessions: Session_Model[] = [ {
  //   name: "Angular",
  //   trainer: "Sharanya"
  // }]

  sessions: Session_Model[] = [];

  session_name = "";
  trainer_name = "";
  session_date = new Date();

  edited_session_name = "";
  edited_trainer_name = "";
  edited_session_date = new Date();

  selectedSession = new Session_Model();

  constructor() { }

  ngOnInit(): void {
    
  }

  addSession() {
    if(this.session_name !== "" || this.trainer_name !== ""){
      const newSession = {
        name: this.session_name,
        trainer: this.trainer_name,
        date: this.session_date
      }
      this.sessions.push(newSession);
    }
    this.session_name = "";
    this.trainer_name = "";
    this.session_date = new Date();
  }

  deleteSession(id) {
    this.sessions = this.sessions.filter(sessions => sessions.date != id);
  }

  editSession() {
    document.getElementById('edit').style.display = 'block';
    document.getElementById('editbutton').style.display = 'none';
    document.getElementById('delete').style.display = 'none';


    // for(let session of this.sessions){
    //   if(session.date === id){

    //   }
    // }
  }

  cancelSelection() {
    document.getElementById('edit').style.display = 'none';
    document.getElementById('delete').style.display = 'inline-block';
    document.getElementById('editbutton').style.display = 'inline-block';
  }

  submitEditedDetails(id){
    document.getElementById('edit').style.display = 'none';
    document.getElementById('editbutton').style.display = 'inline-block';
    document.getElementById('delete').style.display = 'inline-block';
    for (let session of this.sessions){
      if(session.date === id){
        session.name = this.edited_session_name;
        session.trainer = this.edited_trainer_name;
        session.date = this.edited_session_date;
      }
    }
  }

  onSelect(session) {
    this.selectedSession = session;
  }
}
