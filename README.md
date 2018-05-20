# Abstract-Controller
Save yourself the hassle of managing the controller actions of generic classes by using this abstract controller.

The default create, destroy, edit, index, new, show, and update actions can be managed in the parent controller, leaving your child controllers clutter-free. This also means you can make global changes that affect all of the children.

This is particularly useful when you have a bunch of lookup tables that have no special actions. The two default private actions, set_class and class_params, still exist in the child classes, although I suppose you could attempt to abstract those too. It is likely that your classes will have unique parameters, so it's easier to manage them in their own controllers.

