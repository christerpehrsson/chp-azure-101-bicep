// TODO: add a resource of type Microsoft.ServiceBus/namespaces
//       - use the 'Basic' service tier

// TODO: add a resource of type Microsoft.ServiceBus/namespaces/AuthorizationRules
//       - specify 'Manage', 'Listen', 'Send' rights

// TODO: add a resource of type Microsoft.ServiceBus/namespaces/queues
//       - make sure to give the queue the name that your function app expects
//         (i.e. if you have hardcoded the name in your function app you need to set the same name for the queue here)

// TODO: add an output for the connection string for the _AuthorizationRules resources_
//       - hint: use listKeys()
//         sample response from listKeys:
//          {
//            "primaryConnectionString": "Endpoint...",
//            "secondaryConnectionString": "Endpoint...",
//            "primaryKey": "############################################",
//            "secondaryKey": "############################################",
//            "keyName": "NameOfTheAuthRule"
//          }
