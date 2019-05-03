import Vue from 'vue'
import { Dropdown, DropdownMenu, DropdownItem, Menu, Submenu, MenuItem, MenuItemGroup, Input, Button, DatePicker, TimePicker, Popover, Breadcrumb, BreadcrumbItem, Tabs, TabPane, Alert, Slider, Row, Col, Progress, Badge, Card, Steps, Step, Form, FormItem, Select, Option, OptionGroup, Radio, RadioGroup, RadioButton, Checkbox, CheckboxButton, CheckboxGroup, Switch, Table, TableColumn, Tooltip, Tree, Message, Notification, MessageBox,Carousel,CarouselItem,InputNumber } from 'element-ui'

Vue.use(Dropdown)
Vue.use(DropdownMenu)
Vue.use(DropdownItem)
Vue.use(Menu)
Vue.use(Submenu)
Vue.use(MenuItem)
Vue.use(MenuItemGroup)
Vue.use(Input)
Vue.use(Button)
Vue.use(DatePicker)
Vue.use(TimePicker)
Vue.use(Popover)
Vue.use(Breadcrumb)
Vue.use(BreadcrumbItem)
Vue.use(Tabs)
Vue.use(TabPane)
Vue.use(Alert)
Vue.use(Slider)
Vue.use(Row)
Vue.use(Col)
Vue.use(Progress)
Vue.use(Badge)
Vue.use(Card)
Vue.use(Steps)
Vue.use(Step)
Vue.use(Form)
Vue.use(FormItem)
Vue.use(Select)
Vue.use(Option)
Vue.use(OptionGroup)
Vue.use(Radio)
Vue.use(RadioGroup)
Vue.use(RadioButton)
Vue.use(Checkbox)
Vue.use(CheckboxButton)
Vue.use(CheckboxGroup)
Vue.use(Switch)
Vue.use(Table)
Vue.use(TableColumn)
Vue.use(Tooltip)
Vue.use(Tree)
Vue.use(Carousel)
Vue.use(CarouselItem)
Vue.use(InputNumber)

Vue.prototype.$notify = Notification
Vue.prototype.$message = Message
Vue.prototype.$msgbox = MessageBox
Vue.prototype.$alert = MessageBox.alert
Vue.prototype.$confirm = MessageBox.confirm
Vue.prototype.$prompt = MessageBox.prompt