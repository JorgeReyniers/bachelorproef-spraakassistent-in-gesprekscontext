'use strict';
const Alexa = require('ask-sdk-core');

const LaunchRequestHandler = {
    canHandle(handlerInput) {
        return handlerInput.requestEnvelope.request.type === 'LaunchRequest';
    },
    handle(handlerInput) {
        const speechText = 'Welcome to First Aid, what happened?';
        return handlerInput.responseBuilder
            .speak(speechText)
            .reprompt(speechText)
            .withSimpleCard('Welcome', speechText)
            .getResponse();
    }
};

const FaintedNoBreathingIntentHandler = {
    canHandle(handlerInput) {
        return handlerInput.requestEnvelope.request.type === 'IntentRequest' &&
            handlerInput.requestEnvelope.request.intent.name === 'fainted_no_breathing';
    },
    handle(handlerInput) {
        const speechText = 'Check the consciousness. Carefully shake his shoulders and ask loudly: Are you okay? ' +
        'Open the airway. Check the breathing. Look, listen and feel for 10 seconds. ' +
        'Have someone call 112 or do this yourself when you are alone. Something else?';
        return handlerInput.responseBuilder
            .speak(speechText)
            .reprompt(speechText)
            .withSimpleCard('Follow these instructions.', speechText)
            .getResponse();
    }
};

const BurnIntentHandler = {
    canHandle(handlerInput) {
        return handlerInput.requestEnvelope.request.type === 'IntentRequest' &&
            handlerInput.requestEnvelope.request.intent.name === 'burn';
    },
    handle(handlerInput) {
        const speechText = 'Cool the burn as quickly as possible with cool or lukewarm tap water. ' +
        'Aim the jet of water just above the burn and let the water flow over the wound. Do this for at least 10 minutes. ' +
        'Then cover the wound with a bandage specially developed for burns. Something else?';
        return handlerInput.responseBuilder
            .speak(speechText)
            .reprompt(speechText)
            .withSimpleCard('Follow these instructions.', speechText)
            .getResponse();
    }
};

const BackacheIntentHandler = {
    canHandle(handlerInput) {
        return handlerInput.requestEnvelope.request.type === 'IntentRequest' &&
            handlerInput.requestEnvelope.request.intent.name === 'backache';
    },
    handle(handlerInput) {
        const speechText = 'Look for the most comfortable position and apply warmth to the back. ' +
        'Use a heat bag or warm clothing to do this. ' +
        'If your back pain is accompanied by paralysis symptoms, sensory disturbances or problems with keeping up your urine or excrement, consult a doctor. ' +
        'Something else?';
        return handlerInput.responseBuilder
            .speak(speechText)
            .reprompt(speechText)
            .withSimpleCard('Follow these instructions.', speechText)
            .getResponse();
    }
};

const HelpIntentHandler = {
    canHandle(handlerInput) {
        return handlerInput.requestEnvelope.request.type === 'IntentRequest' &&
            handlerInput.requestEnvelope.request.intent.name === 'AMAZON.HelpIntent';
    },
    handle(handlerInput) {
        const speechText = 'Tell me what happened and I give you the right instructions.';
        return handlerInput.responseBuilder
            .speak(speechText)
            .reprompt(speechText)
            .withSimpleCard('First Aid', speechText)
            .getResponse();
    }
};

const CancelAndStopIntentHandler = {
    canHandle(handlerInput) {
        return handlerInput.requestEnvelope.request.type === 'IntentRequest' &&
            (handlerInput.requestEnvelope.request.intent.name === 'AMAZON.CancelIntent' ||
                handlerInput.requestEnvelope.request.intent.name === 'AMAZON.StopIntent');
    },
    handle(handlerInput) {
        const speechText = 'Goodbye!';
        return handlerInput.responseBuilder
            .speak(speechText)
            .withSimpleCard('First Aid', speechText)
            .getResponse();
    }
};

const SessionEndedRequestHandler = {
    canHandle(handlerInput) {
        return handlerInput.requestEnvelope.request.type === 'SessionEndedRequest';
    },
    handle(handlerInput) {
        return handlerInput.responseBuilder.getResponse();
    }
};

const FallbackIntentHandler = {
    canHandle(handlerInput) {
        return handlerInput.requestEnvelope.request.type === 'IntentRequest' &&
            handlerInput.requestEnvelope.request.intent.name === 'AMAZON.FallbackIntent';
    },
    handle(handlerInput) {
        const speechText = 'I\'m sorry, but I didn\'t understand that right.';
        return handlerInput.responseBuilder
            .speak(speechText)
            .reprompt(speechText)
            .withSimpleCard('First Aid', speechText)
            .getResponse();
    }
};

exports.handler = Alexa.SkillBuilders.custom()
    .addRequestHandlers(
        LaunchRequestHandler,
        FaintedNoBreathingIntentHandler,
        BurnIntentHandler,
        BackacheIntentHandler,
        HelpIntentHandler,
        CancelAndStopIntentHandler,
        SessionEndedRequestHandler,
        FallbackIntentHandler
        )
    .lambda();