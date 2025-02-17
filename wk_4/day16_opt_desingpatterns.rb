# ------------ DAY 16 OPTIONAL -------------------
#1. Exploring Other Design Patterns
  # Concepts:
  
  # Factory Pattern: Used to create objects without needing to specify the exact class of the object that will be created. 
      # Ideal for scenarios where you may want to dynamically determine which class to instantiate.

  # Observer Pattern: Allows an object (the subject) to notify other objects (observers) when its state changes. 
        #Commonly used in event-driven systems.

# Why Use Them?
  # Design patterns provide structured solutions to common programming challenges, making your code more reusable, readable, and easier to maintain.

# Activity:
# Choose a design pattern and implement it in Ruby.

# Implementing a Notification Center with the Observer Pattern:

#NotificationCenter using Observer Pattern 

class NotificationCenter 
  def initialize 
    @observers = [] 
  end 

  def add_observer(observer) 
    @observers << observer 
  end 

  def remove_observer(observer) 
    @observers.delete(observer) 
  end 

  def notify_observers(message) 
    @observers.each { |observer| observer.update(message) } 
  end 
end 

class User 
  def update(message) 
    puts "Received notification: #{message}" 
  end 
end 

notification_center = NotificationCenter.new 
user1 = User.new 
user2 = User.new 

notification_center.add_observer(user1) 
notification_center.add_observer(user2) 

notification_center.notify_observers("New message available!") 
# Outputs: "Received notification: New message available!" for each user
    