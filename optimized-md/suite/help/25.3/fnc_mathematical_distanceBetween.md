---
source_url: https://docs.appian.com/suite/help/25.3/fnc_mathematical_distanceBetween.html
original_path: fnc_mathematical_distanceBetween.html
version: "25.3"
title: "a!distanceBetween() Function"
page_id: "fnc_mathematical_distanceBetween"
section: "Functions"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!distanceBetween() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Functions

**a!distanceBetween**( _startLatitude, startLongitude, endLatitude, endLongitude_ )

Returns the distance between the two locations (in meters) specified by the start and end coordinates. The distance is calculated by tracing a line between the two locations that follows the curvature of the Earth, and measuring the length of the resulting arc.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`startLatitude`

 |

_Number (Decimal)_

 |

Latitude of the start location in degrees.

 |
|

`startLongitude`

 |

_Number (Decimal)_

 |

Longitude of the start location in degrees.

 |
|

`endLatitude`

 |

_Number (Decimal)_

 |

Latitude of the end location in degrees.

 |
|

`endLongitude`

 |

_Number (Decimal)_

 |

Longitude of the end location in degrees.

 |

## Returns

Number (Decimal)

## Usage considerations

-   Valid range for latitude values is -90 and +90 degrees, specifying coordinates to the south and north of the equator respectively.
-   Valid range for longitude values is -180 and +180 degrees, specifying coordinates to the west and east of the Prime Meridian respectively.

## Examples

`a!distanceBetween(startLatitude: 38.932290, startLongitude: -77.218490, endLatitude: 38.917370, endLongitude: -77.220760)` returns `1670.609`

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...