---
source_url: https://docs.appian.com/suite/help/25.3/fnc_system_a_iconnewsevent.html
original_path: fnc_system_a_iconnewsevent.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!iconNewsEvent() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!iconNewsEvent**( _icon, color_ )

Returns the specified image from a list of standard news event icons in one of six colors: blue, green, gray, orange, purple, or red.

**See also:** [Post System Event to Feed Smart Service](Post_System_Event_to_Feed_Smart_Service.html), [DocumentImage](Document_Image_Component.html)

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`icon`

 |

_Text_

 |

The key from the table of the icon to be returned.

 |
|

`color`

 |

_Text_

 |

The key from the color table to be returned. Default color is blue.

 |

## Returns

Document

## Usage considerations

### Supported use case

News event icons can be used as the icon for a news event or on an interface within a [document image](Document_Image_Component.html).

### Available Colors

The table below shows a sample of each color.

| Color | Name | Key | Color | Name | Key |
| --- | --- | --- | --- | --- | --- |
| ![Blue Icon](images/iconNewsEvent/airplane_blue.png) | Blue | BLUE | ![Orange Icon](images/iconNewsEvent/airplane_orange.png) | Orange | ORANGE |
| ![Green Icon](images/iconNewsEvent/airplane_green.png) | Green | GREEN | ![Purple Icon](images/iconNewsEvent/airplane_purple.png) | Purple | PURPLE |
| ![Grey Icon](images/iconNewsEvent/airplane_grey.png) | Grey | GREY | ![Red Icon](images/iconNewsEvent/airplane_red.png) | Red | RED |

### Available Icons

The table below shows a sample of each icon.

| Icon | Name | Key | Icon | Name | Key |
| --- | --- | --- | --- | --- | --- |
| ![Add Person Icon](images/iconNewsEvent/person_add_blue.png) | Add Person | ADD\_PERSON | ![Airplane Icon](images/iconNewsEvent/airplane_blue.png) | Airplane | AIRPLANE |
| ![Archive Icon](images/iconNewsEvent/archive_blue.png) | Archive | ARCHIVE | ![Attachment Icon](images/iconNewsEvent/attachment_blue.png) | Attachment | ATTACHMENT |
| ![Bank Icon](images/iconNewsEvent/bank_blue.png) | Bank | BANK | ![Bar Chart Icon](images/iconNewsEvent/bar_chart_blue.png) | Bar Chart | BAR\_CHART |
| ![Barcode Icon](images/iconNewsEvent/bar_code_blue.png) | Barcode | BARCODE | ![Book Icon](images/iconNewsEvent/book_blue.png) | Book | BOOK |
| ![Briefcase Icon](images/iconNewsEvent/briefcase_blue.png) | Briefcase | BRIEFCASE | ![Building Icon](images/iconNewsEvent/building_blue.png) | Building | BUILDING |
| ![Calendar Icon](images/iconNewsEvent/calendar_blue.png) | Calendar | CALENDAR | ![Car Icon](images/iconNewsEvent/car_blue.png) | Car | CAR |
| ![Chevrons Icon](images/iconNewsEvent/chevrons_blue.png) | Chevrons | CHEVRONS | ![Clipboard Icon](images/iconNewsEvent/clipboard_blue.png) | Clipboard | CLIPBOARD |
| ![Clock Icon](images/iconNewsEvent/clock_blue.png) | Clock | CLOCK | ![Cloudy Icon](images/iconNewsEvent/cloudy_blue.png) | Cloudy | CLOUDY |
| ![Compose Icon](images/iconNewsEvent/compose_blue.png) | Compose | COMPOSE | ![Conversation Icon](images/iconNewsEvent/conversation_blue.png) | Conversation | CONVERSATION |
| ![Credit Card Icon](images/iconNewsEvent/credit_card_blue.png) | Credit Card | CREDIT\_CARD | ![Crossover Icon](images/iconNewsEvent/crossover_blue.png) | Crossover | CROSSOVER |
| ![Currency (dollar) Icon](images/iconNewsEvent/dollar_blue.png) | Currency (dollar) | CURRENCY\_DOLLAR | ![Currency (euro) Icon](images/iconNewsEvent/euro_blue.png) | Currency (euro) | CURRENCY\_EURO |
| ![Currency (Pound) Icon](images/iconNewsEvent/GBP_blue.png) | Currency (pound) | CURRENCY\_POUND | ![Currency (yen) Icon](images/iconNewsEvent/yen_blue.png) | Currency (yen) | CURRENCY\_YEN |
| ![Delete Icon](images/iconNewsEvent/delete_blue.png) | Delete | DELETE | ![Discs Icon](images/iconNewsEvent/discs_blue.png) | Discs | DISCS |
| ![Document Icon](images/iconNewsEvent/document_blue.png) | Document | DOCUMENT | ![Download Icon](images/iconNewsEvent/download_blue.png) | Download | DOWNLOAD |
| ![Envelope Icon](images/iconNewsEvent/envelope_blue.png) | Envelope | ENVELOPE | ![Exit Icon](images/iconNewsEvent/exit_blue.png) | Exit | EXIT |
| ![Eye Icon](images/iconNewsEvent/eye_blue.png) | Eye | EYE | ![Factory Icon](images/iconNewsEvent/factory_blue.png) | Factory | FACTORY |
| ![File Cabinet Icon](images/iconNewsEvent/file_cabinet_blue.png) | File Cabinet | FILE\_CABINET | ![File (doc) Icon](images/iconNewsEvent/file_doc_blue.png) | File (doc) | FILE\_DOC |
| ![File (docx) Icon](images/iconNewsEvent/file_docx_blue.png) | File (docx) | FILE\_DOCX | ![File (pdf) Icon](images/iconNewsEvent/file_pdf_blue.png) | File (pdf) | FILE\_PDF |
| ![File (ppt) Icon](images/iconNewsEvent/file_ppt_blue.png) | File (ppt) | FILE\_PPT | ![File (pptx) Icon](images/iconNewsEvent/file_pptx_blue.png) | File (pptx) | FILE\_PPTX |
| ![File (xls) Icon](images/iconNewsEvent/file_xls_blue.png) | File (xls) | FILE\_XLS | ![File (xlsx) Icon](images/iconNewsEvent/file_xlsx_blue.png) | File (xlsx) | FILE\_XLSX |
| ![Folder Icon](images/iconNewsEvent/folder_blue.png) | Folder | FOLDER | ![Fountain Pen Icon](images/iconNewsEvent/fountain_pen_blue.png) | Fountain Pen | FOUNTAIN\_PEN |
| ![Gear Icon](images/iconNewsEvent/gear_blue.png) | Gear | GEAR | ![Gears Icon](images/iconNewsEvent/gears_blue.png) | Gears | GEARS |
| ![Globe Icon](images/iconNewsEvent/globe_blue.png) | Globe | GLOBE | ![Hammer Icon](images/iconNewsEvent/hammer_blue.png) | Hammer | HAMMER |
| ![Handshake Icon](images/iconNewsEvent/hand_shake_blue.png) | Handshake | HANDSHAKE | ![Home Icon](images/iconNewsEvent/home_blue.png) | Home | HOME |
| ![Hourglass Icon](images/iconNewsEvent/hourglass_blue.png) | Hourglass | HOURGLASS | ![ID Card Icon](images/iconNewsEvent/person_id_card_blue.png) | ID Card | ID\_CARD |
| ![Key Icon](images/iconNewsEvent/key_blue.png) | Key | KEY | ![Life Preserver Icon](images/iconNewsEvent/life_preserver_blue.png) | Life Preserver | LIFE\_PRESERVER |
| ![Light Glow Icon](images/iconNewsEvent/light_glow_blue.png) | Light Glow | LIGHT\_GLOW | ![Lightning Icon](images/iconNewsEvent/lightning_blue.png) | Lightning | LIGHTNING |
| ![Line Chart Icon](images/iconNewsEvent/line_chart_blue.png) | Line Chart | LINE\_CHART | ![Line Chart (up) Icon](images/iconNewsEvent/line_chart_up_blue.png) | Line Chart (up) | LINE\_CHART\_UP |
| ![List Icon](images/iconNewsEvent/list_blue.png) | List | LIST | ![Magnify Icon](images/iconNewsEvent/magnifying_blue.png) | Magnify | MAGNIFY |
| ![Medal Icon](images/iconNewsEvent/medal_blue.png) | Medal | MEDAL | ![Microphone Icon](images/iconNewsEvent/microphone_blue.png) | Microphone | MICROPHONE |
| ![Music Note Icon](images/iconNewsEvent/music_note_blue.png) | Music Note | MUSIC\_NOTE | ![Padlock Icon](images/iconNewsEvent/padlock_blue.png) | Padlock | PADLOCK |
| ![Paint Roller Icon](images/iconNewsEvent/paint_roller_blue.png) | Paint Roller | PAINT\_ROLLER | ![Paper Airplane Icon](images/iconNewsEvent/paper_airplane_blue.png) | Paper Airplane | PAPER\_AIRPLANE |
| ![Partly Cloudy Icon](images/iconNewsEvent/partly_cloudy_blue.png) | Partly Cloudy | PARTLY\_CLOUDY | ![Pause Icon](images/iconNewsEvent/pause_blue.png) | Pause | PAUSE |
| ![Pen Icon](images/iconNewsEvent/pen_blue.png) | Pen | PEN | ![Pencil Icon](images/iconNewsEvent/pencil_blue.png) | Pencil | PENCIL |
| ![People (2) Icon](images/iconNewsEvent/people_2_blue.png) | People (2) | PEOPLE\_2 | ![People (3) Icon](images/iconNewsEvent/people_3_blue.png) | People (3) | PEOPLE\_3 |
| ![People (4) Icon](images/iconNewsEvent/people_4_blue.png) | People (4) | PEOPLE\_4 | ![Person Icon](images/iconNewsEvent/person_blue.png) | Person | PERSON |
| ![Person Info Icon](images/iconNewsEvent/person_info_blue.png) | Person Info | PERSON\_INFO | ![Pie Chart Icon](images/iconNewsEvent/pie_chart_blue.png) | Pie Chart | PIE\_CHART |
| ![Piggy Icon](images/iconNewsEvent/piggy_blue.png) | Piggy | PIGGY | ![Play Icon](images/iconNewsEvent/play_blue.png) | Play | PLAY |
| ![Plus Icon](images/iconNewsEvent/plus_blue.png) | Plus | PLUS | ![Presentation Icon](images/iconNewsEvent/presentation_blue.png) | Presentation | PRESENTATION |
| ![Process Icon](images/iconNewsEvent/process_blue.png) | Process | PROCESS | ![Question Box Icon](images/iconNewsEvent/question_box_blue.png) | Question Box | QUESTION\_BOX |
| ![Question Bubble Icon](images/iconNewsEvent/question_bubble_blue.png) | Question Bubble | QUESTION\_BUBBLE | ![Question Circle Icon](images/iconNewsEvent/question_circle_blue.png) | Question Circle | QUESTION\_CIRCLE |
| ![Refresh Icon](images/iconNewsEvent/refresh_blue.png) | Refresh | REFRESH | ![Remove Person Icon](images/iconNewsEvent/person_remove_blue.png) | Remove Person | REMOVE\_PERSON |
| ![Reply All Icon](images/iconNewsEvent/reply_all_blue.png) | Reply All | REPLY\_ALL | ![Reply Icon](images/iconNewsEvent/reply_blue.png) | Reply | REPLY |
| ![Return Icon](images/iconNewsEvent/return_blue.png) | Return | RETURN | ![Ribbon Icon](images/iconNewsEvent/ribbon_blue.png) | Ribbon | RIBBON |
| ![Road Sign Curves Icon](images/iconNewsEvent/road_sign_curves_blue.png) | Road Sign Curves | ROAD\_SIGN\_CURVES | ![Road Sign Turn Icon](images/iconNewsEvent/road_sign_turn_blue.png) | Road Sign Turn | ROAD\_SIGN\_TURN |
| ![Rocket Icon](images/iconNewsEvent/rocket_blue.png) | Rocket | ROCKET | ![Scale Icon](images/iconNewsEvent/scale_blue.png) | Scale | SCALE |
| ![Share Icon](images/iconNewsEvent/share_blue.png) | Share | SHARE | ![Shopping Cart Icon](images/iconNewsEvent/shopping_cart_blue.png) | Shopping Cart | SHOPPING\_CART |
| ![Sign Post Icon](images/iconNewsEvent/sign_post_blue.png) | Sign Post | SIGN\_POST | ![Signature Icon](images/iconNewsEvent/signature_blue.png) | Signature | SIGNATURE |
| ![Smart Phone Icon](images/iconNewsEvent/smart_phone_blue.png) | Smart Phone | SMART\_PHONE | ![Speech Bubble Icon](images/iconNewsEvent/speech_bubble_blue.png) | Speech Bubble | SPEECH\_BUBBLE |
| ![Speech Bubble Dots Icon](images/iconNewsEvent/speech_bubble_dots_blue.png) | Speech Bubble Dots | SPEECH\_BUBBLE\_DOTS | ![Spinner Icon](images/iconNewsEvent/spinner_blue.png) | Spinner | SPINNER |
| ![Steps Icon](images/iconNewsEvent/steps_blue.png) | Steps | STEPS | ![Stop Icon](images/iconNewsEvent/stop_blue.png) | Stop | STOP |
| ![Stormy Icon](images/iconNewsEvent/stormy_blue.png) | Stormy | STORMY | ![Suitcase Icon](images/iconNewsEvent/suitcase_blue.png) | Suitcase | SUITCASE |
| ![Sun Icon](images/iconNewsEvent/sun_blue.png) | Sun | SUN | ![Table Icon](images/iconNewsEvent/table_blue.png) | Table | TABLE |
| ![Target Icon](images/iconNewsEvent/target_blue.png) | Target | TARGET | ![Task Icon](images/iconNewsEvent/task_blue.png) | Task | TASK |
| ![Task (Big) Icon](images/iconNewsEvent/task_big_blue.png) | Task (Big) | TASK\_BIG | ![Task Problem Icon](images/iconNewsEvent/task_problem_blue.png) | Task Problem | TASK\_PROBLEM |
| ![Thumbs Down Icon](images/iconNewsEvent/thumbs_down_blue.png) | Thumbs Down | THUMBS\_DOWN | ![Thumbs Up Icon](images/iconNewsEvent/thumbs_up_blue.png) | Thumbs Up | THUMBS\_UP |
| ![Traffic Cone Icon](images/iconNewsEvent/traffic_cone_blue.png) | Traffic Cone | TRAFFIC\_CONE | ![Trophy Icon](images/iconNewsEvent/trophy_blue.png) | Trophy | TROPHY |
| ![Umbrella Icon](images/iconNewsEvent/umbrella_blue.png) | Umbrella | UMBRELLA | ![Video Icon](images/iconNewsEvent/video_blue.png) | Video | VIDEO |
| ![Warning Icon](images/iconNewsEvent/warning_blue.png) | Warning | WARNING | ![Wheelchair Icon](images/iconNewsEvent/wheelchair_blue.png) | Wheelchair | WHEELCHAIR |
| ![Wrench Icon](images/iconNewsEvent/wrench_blue.png) | Wrench | WRENCH | ![Zoom In Icon](images/iconNewsEvent/zoom_in_blue.png) | Zoom In | ZOOM\_IN |
| ![Zoom Out Icon](images/iconNewsEvent/zoom_out_blue.png) | Zoom Out | ZOOM\_OUT |

## Feature compatibility

The table below lists this function's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Partially compatible |
Can be used with Appian Portals if it is connected using an [integration and web API](portals-design.html#using-partially-compatible-functions-and-objects-in-a-portal).

 |
| Offline Mobile | Incompatible |  |
| Sync-Time Custom Record Fields | Incompatible |  |
| Real-Time Custom Record Fields | Incompatible |

Custom record fields that evaluate in real time must be configured using one or more Custom Field functions.

 |
| Process Reports | Incompatible |

Cannot be used to configure a [process report](Process_Reports.html).

 |
| Process Events | Partially compatible |

If autoscale is enabled, can be used to configure a supported process event node (such as a start event or timer event).

 |
| Process Autoscaling | Compatible |

Can be used in autoscaled processes.

 |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...