require "test_helper"

class MenuitemTest < ActiveSupport::TestCase
  test 'Each menu item should have a price' do 
    seafood_menu = Menu.find_by(title:"seafood_1")
    menu_item = Menuitem.new(menus:[seafood_menu])
    assert_not menu_item.save
  end

  test 'Each menu item should be a part of at least one menu' do 
    menu_item = Menuitem.new(price:123.34)
    skip("Requirements changed to where a menu can be part of any menu or no menu.")
    assert_not menu_item.save
  end

  test 'Menu items cannot have the same name can not be saved' do
    new_menu = Menu.new(title:"New Test Menu")
    new_menu_2 = Menu.new(title:"New Test Menu 2")
    same_title  = "menu_item_title"
    assert Menuitem.new(title:same_title, price:1231.42, menus: [new_menu]).save
    assert_raises ActiveRecord::RecordNotUnique do
      Menuitem.new(title:same_title, price:1.42, menus: [new_menu_2]).save
    end
  end

  test 'Create two menu items for two menus' do
    new_menu = Menu.new(title:"New Test Menu")
    new_menu_2 = Menu.new(title:"New Test Menu 2")
    assert Menuitem.new(title:"Salad", price:1231.42, menus: [new_menu, new_menu_2]).save
    assert Menuitem.new(title:"Steak", price:1.42, menus: [new_menu_2,new_menu]).save
    assert_equal 2, new_menu.menuitems.size 
  end
end
