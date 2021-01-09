
class Observer: 
    def __init__(self):
        self.observers = list()
        self.msg = str()

    def notify(self, event_data):
        for observer in self.observers:
            observer.notify(event_data)

    def register(self, observer):
        self.observers.append(observer)

    def unregister(self, observer):
        self.observers.remove(observer)
        
class SMSNotifier:    
    def notify(self, event_data):
        print(event_data, 'received..')
        print('send sms')
        
class EmailNotifier:
    def notify(self, event_data):
        print(event_data, 'received..')
        print('send email')
        
class PushNotifier:
    def notify(self, event_data):
        print(event_data, 'received..')
        print('send push notification')        
        
notifier = Observer()

sms_notifier = SMSNotifier()
email_notifier = EmailNotifier()
push_notifier = PushNotifier()

notifier.register(sms_notifier)
notifier.register(email_notifier)
notifier.register(push_notifier)

notifier.notify('user activation event')        