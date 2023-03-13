// This file is auto-generated by ./bin/rails stimulus:manifest:update
// Run that command whenever you add a new controller or create them with
// ./bin/rails generate stimulus controllerName

import { application } from "./application"

import ChatSubscriptionController from "./chat_subscription_controller"
application.register("chat-subscription", ChatSubscriptionController)

import HelloController from "./hello_controller"
application.register("hello", HelloController)

import SweetAlertController from "./sweet_alert_controller"
application.register("sweet-alert", SweetAlertController)
