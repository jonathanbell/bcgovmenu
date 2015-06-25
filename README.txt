BC Gov Menu
===========

BC Gov Menu allows the import of the BC Government first, second and third level
menu items into your Drupal menu system.

Creates a new menu that can be administered at: /admin/structure/menu called BC
Gov Menu.

**NOTE: This Drupal module comes without warranty. Make sure you read and abide
by this file, LICENSE.txt and all the documentation located in the documentation
folder (included with this module).

Installation
------------

1. Place the module in your site's modules folder.
2. Make sure to enable permissions for the module at:
   /admin/people/permissions#module-bcgovmenu
3. Get fresh data, by clicking the "Manually Refresh XML Data" button at:
   /admin/config/bcgovmenu/manage
3. By default, a block with the fist and second level menu items will be created
   and can be administered at:
   /admin/structure/block/manage/menu/bc-gov-menu/configure
   Place the block into a region of your choosing.
4. (optional) Use the Menu Block module to make a block with all three menu
   levels from www2.gov.bc.ca at:
   /admin/structure/block/add-menu-block
5. Make sure you have cron setup so that the XML data updates automatically.
   Otherwise, you will have to click the button here:
   /admin/config/bcgovmenu/manage every time the menu on www2.gov.bc.ca changes
   and you want your site's menu to reflect those changes.

Uninstall the module to remove the menu from the Drupal menu system.

Support
-------

- jonathan.bell@gov.bc.ca
- https://www.yammer.com/gov.bc.ca/#/Threads/show?threadId=542418713

TODO:
-----

- enable the use of an XSL file for the output (currently, it's easier to pass
  an array of menu items to Drupal and have Drupal incorporate them into its own
  menu system using menu_link_save())
