# Abstract-Controller
This is an sample Rails application showing how you can abstract controller actions. By doing this you can save yourself the hassle of managing multiple controller actions in generic child controller.

The default create, destroy, edit, index, new, show, and update actions can be managed in the parent controller, leaving your child controllers clutter-free. This also means you can make global changes that affect all of the children.

This is particularly useful when you have a bunch of lookup tables that have no special actions. The two default private actions, set_class and class_params, still exist in the child classes, although I suppose you could attempt to abstract those too. It is likely that your classes will have unique parameters, so it's best to manage them in their own controllers.

