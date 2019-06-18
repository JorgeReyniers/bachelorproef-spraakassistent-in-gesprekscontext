'use strict';
import {dialogflow, SimpleResponse, Suggestions, MediaObject} from 'actions-on-google/dist/index';
import * as functions from 'firebase-functions';
import InstructionService from './InstructionService';

const app = dialogflow({debug: true});

app.intent('Default Welcome Intent', (conv:any) => {
  conv.ask(new SimpleResponse({
    speech:"Eerste Hulp hier. Wat is er gebeurd?",
    text:"Wat is er gebeurd?"
  }))
});

app.intent('bewusteloos niet ademend', (conv:any) => {
  conv.ask(new SimpleResponse({
    speech:"Luister goed naar mijn instructies. Je kan me steeds vragen om de instructie te herhalen of om de vorige of volgende te horen.",
    text:"Hier zijn de instructies."
  }))

  conv.data.step = 0;

  conv.ask(new SimpleResponse({
    speech: InstructionService.fainted[0].speech,
    text:InstructionService.fainted[0].text
  }))
  conv.ask(new Suggestions(['Vorige','Herhaal','Volgende']));
})

app.intent('bewusteloos niet ademend - previous', (conv:any) => {
  if(conv.data.step > 0){conv.data.step--};

  conv.ask(new SimpleResponse({
    speech:InstructionService.fainted[conv.data.step].speech,
    text:InstructionService.fainted[conv.data.step].text
  }))
  conv.ask(new Suggestions(['Vorige','Herhaal','Volgende']));
})

app.intent('bewusteloos niet ademend - repeat', (conv:any) => {
  conv.ask(new SimpleResponse({
    speech:InstructionService.fainted[conv.data.step].speech,
    text:InstructionService.fainted[conv.data.step].text
  }))
  conv.ask(new Suggestions(['Vorige','Herhaal','Volgende']));
})

app.intent('bewusteloos niet ademend - next', (conv:any) => {
  if(conv.data.step+1 < InstructionService.fainted.length){conv.data.step++};

  conv.ask(new SimpleResponse({
    speech:InstructionService.fainted[conv.data.step].speech,
    text:InstructionService.fainted[conv.data.step].text
  }))
  conv.ask(new Suggestions(['Vorige','Herhaal','Volgende']));
})

app.intent('Default Fallback Intent', (conv:any) => {
  conv.ask(new SimpleResponse({
    speech:"Dat heb ik niet begrepen.",
    text:"Dat heb ik niet begrepen."
  }));
})

app.intent('Default Close Intent', (conv:any) => {
  conv.ask(new SimpleResponse({
    speech:"Tot ziens.",
    text:"Tot ziens."
  }))
})

app.catch((conv:any,error:any) => {
  console.error(error);
  conv.close("Oeps, er is iets fout gelopen. Onze ontwikkelaars zoeken naar een oplossing.");
})

exports.yourAction = functions.https.onRequest(app);


