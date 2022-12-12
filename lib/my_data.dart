import 'alert_dialog_page.dart';
import 'buttons_page.dart';
import 'card_page.dart';
import 'carousel_slider_page.dart';
import 'data_table_page.dart';
import 'list_view_page.dart';
import 'row_column_page.dart';
import 'stack_align_center_page.dart';
import 'text_field_page.dart';
import 'theme_data_page.dart';
import 'check_box_page.dart';
import 'color_picker_page.dart';
import 'container_page.dart';
import 'dismissible_page.dart';
import 'expansion_tile_page.dart';
import 'flush_bar_page.dart';
import 'image_picker_page.dart';
import 'interactive_viewer_page.dart';
import 'list_wheel_scroll_view_page.dart';
import 'marquee_page.dart';
import 'page_view_page.dart';
import 'percent_indicator_page.dart';
import 'radio_button_page.dart';
import 'snack_bar_page.dart';
import 'splash_screen_page.dart';
import 'text_form_field_page.dart';
import 'text_page.dart';
import 'toast_page.dart';

List<String> nameList = [
  'Toast',
  'Alert Dialog',
  'Snack Bar',
  'Flush Bar',
  'Carousel Slider',
  'Radio Button',
  'Check Box',
  'Expansion Tile',
  'Marquee',
  'Image Picker',
  'Color Picker',
  'Dismissible',
  'Circular Percent Indicator',
  'List Wheel Scroll View',
  'Interactive Viewer',
  'Text Form Field',
  'Splash Screen',
  'Page View',
  'Text',
  'Container',
  'Buttons',
  'Data Table',
  'Row & Column',
  'Stack, Align & Center',
  'Text Field',
  'List View',
  'Card',
  'ThemeData',
];

List<String> definitionList = [
  'Tne Flutter toast is used to display messages for limited time.',
  'The Alert Dialog informs the user about situations that require acknowledgement.\n\nNote: It comes by default with flutter, you don\'t need any external package',
  'The SnackBar is used to inform users when certain actions take place,\nfor exemple when the user delete an item or a massage you can inform him that this item or message has been deleted \nNote: It comes by default',
  'The FlushBar is used to notify users, and it is made to replace snackbar and toast .',
  'Carousel slider support infinite scroll and custom child widget.',
  'Radio Button allows the user to choose only one option from a predefined set of options.\n there are two widgets Radio and RadioListTile ',
  'Check Box allows the user to choose mutiple options from a predefined set of options.\n\n there are two principal widgets CheckBox and CheckBoxListTile',
  'This widget is typically used with ListView to create an expand list entry,it used to reveal or hide the children.',
  'A Flutter widget that scrolls text infinitely. Provides many customizations including custom scroll directions, durations, curves as well as pauses after every round.',
  'A Flutter plugin for iOS and Android for picking images from the image library, and taking new pictures with the camera.\n To permit this app to access the camera and gallery Add the following keys to your Info.plist file, located in <project root>/ios/Runner/Info.plist: \nNSPhotoLibraryUsageDescription \nNSCameraUsageDescription \nfor more information see flutter documentation',
  'This widget used to select a color. \nHSV(HSB)/HSL/RGB/Material color picker inspired by all the good design for your amazing flutter apps.Adorable color pickers out of the box with highly customized widgets to all developers\' needs.',
  'A widget that can be dismissed by dragging in the indicated direction(endToStart,startToEnd,up,down,vertical,horizontal)',
  'Library that allows you to display progress widgets based on percentage, can be Circular or Linear, you can also customize it to your needs.',
  'A box in which children on a wheel can be scrolled.\nThis widget is similar to a ListView but with the restriction that all children must be the same size along the scrolling axis.',
  'A widget that enables pan and zoom interactions with its child, for exemple image ',
  'A FormField that contains a TextField, this widget is used to take input from the user for exemple email address.',
  'Splash screens provide a simple initial experience while your mobile app loads. They set the stage for your application, while allowing time for the app engine to load and your app to initialize. ',
  'A scrollable list that works page by page.\nEach child of a page view is forced to be the same size as the viewport.',
  'The Text widget displays a string of text with single style. The string might break across multiple lines or might all be displayed on the same line depending on the layout constraints.',
  'A widget that combines common painting, positioning,  and sizing widgets.',
  'Button is used to trigger an event such as sendind data, executing tasks,searching... \n Flutter provides several types of buttons such as Elevated Button, Icon Button, Floating Action Button...',
  'A DataTable used to display data on a table (Rows and Columns).',
  'One of the most common layout patterns is to arrange widgets vertically or horizontally. \nYou can use a Row widget to arrange widgets horizontally, and a Column widget to arrange widgets vertically.',
  'Stack: A widget that positions its children relative to the edges of its box. \nThis class is useful if you want to overlap several children in a simple way, for example having some text and an image, overlaid with a gradient and a button attached to the bottom. \n- Align: A widget that aligns its child within itself and optionally sizes itself based on the child\'s size.\n- Center: A widget that centers its child within itself.',
  'A text field lets the user enter text, either with hardware keyboard or with an onscreen keyboard.',
  'ListView is the most commonly used scrolling widget. It displays its children one after another in the scroll direction. In the cross axis, the children are required to fill the ListView.\n - There are four options for constructing a ListView:\nList\nListView.builder\nListView.seperated \nListView.custom',
  'A card is a sheet of Material used to represent some related information, for example an album, a geographical location, a meal, contact details, etc.',
  '- ThemeData defines the configuration of the overall visual theme for a MaterialApp or a widget subtree within the app .\n - The MaterialApp theme property can be used to configure the appearance of the entire app.'
];

List exempleList = [
  const TaostPage(),
  const AlertDialogPage(),
  SnackBarPage(),
  const FlushBarPage(),
  const CarouselSliderPage(),
  const RadioButtonPage(),
  const CheckBoxPage(),
  const ExpansionTilePage(),
  const MarqueePage(),
  const ImagePickerPage(),
  const ColorPickerPage(),
  const DismissiblePage(),
  const PercentIndicatorPage(),
  const ListWheelScrollViewPage(),
  const InteractiveViewerPage(),
  const TextFormFieldPage(),
  const SplashScreenPage(),
  const PageViewPage(),
  const TextPage(),
  const ContainerPage(),
  const ButtonsPage(),
  const DataTablePage(),
  const RowColumnPage(),
  const StackAlignCenterPage(),
  const TextFieldPage(),
  const ListViewPage(),
  const CardPage(),
  const ChangeThemePage(),
];

List<String> codeList = [
  'lib/toast_page.dart',
  'lib/alert_dialog_page.dart',
  'lib/snack_bar_page.dart',
  'lib/flush_bar_page.dart',
  'lib/carousel_slider_page.dart',
  'lib/radio_button_page.dart',
  'lib/check_box_page.dart',
  'lib/expansion_tile_page.dart',
  'lib/marquee_page.dart',
  'lib/image_picker_page.dart',
  'lib/color_picker_page.dart',
  'lib/dismissible_page.dart',
  'lib/percent_indicator_page.dart',
  'lib/list_wheel_scroll_view_page.dart',
  'lib/interactive_viewer_page.dart',
  'lib/text_form_field_page.dart',
  'lib/splash_screen_page.dart',
  'lib/page_view_page.dart',
  'lib/text_page.dart',
  'lib/container_page.dart',
  'lib/buttons_page.dart',
  'lib/data_table_page.dart',
  'lib/row_column_page.dart',
  'lib/stack_align_center_page.dart',
  'lib/text_field_page.dart',
  'lib/list_view_page.dart',
  'lib/card_page.dart',
  'lib/theme_data_page.dart',
];
