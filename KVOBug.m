In Objective-C, a tricky bug can arise from the interaction between KVO (Key-Value Observing) and memory management.  If an observer is not removed properly before the observed object is deallocated, it can lead to crashes or unexpected behavior.  This is especially true if the observer is held in a weak reference, and the observed object is deallocated before the observer is removed, which can lead to sending messages to a deallocated object.