.class public Lcom/htc/util/weather/WSPPData;
.super Lcom/htc/util/weather/WSPData;
.source "WSPPData.java"


# static fields
.field public static final ALL_AVAILABLE_FORECAST_DATA:I = -0x1

.field private static final CONDITION_CONVERT:[I = null

.field private static final CONDITION_STATUS:[I = null

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null

.field private static final DAY:I = 0x1

.field private static final DEFAULT_SUNRISE:J = 0x258L

.field private static final DEFAULT_SUNSET:J = 0x708L

.field public static final KEY_OUT_CURR_COND_ID:Ljava/lang/String; = "currConditionID"

.field public static final KEY_OUT_CURR_TEMP_C:Ljava/lang/String; = "currTempC"

.field public static final KEY_OUT_CURR_TEMP_F:Ljava/lang/String; = "currTempF"

.field public static final KEY_OUT_DAYLIGHT:Ljava/lang/String; = "daylight"

.field public static final KEY_OUT_FEEL_TEMP_C:Ljava/lang/String; = "feelTempC"

.field public static final KEY_OUT_FEEL_TEMP_F:Ljava/lang/String; = "feelTempF"

.field public static final KEY_OUT_FSTCONDITIONID:Ljava/lang/String; = "fstCondId"

.field public static final KEY_OUT_FSTDATE:Ljava/lang/String; = "fstDate"

.field public static final KEY_OUT_FSTNAME:Ljava/lang/String; = "fstName"

.field public static final KEY_OUT_FSTNIGHTCONDITIONID:Ljava/lang/String; = "fstnightCondId"

.field public static final KEY_OUT_HIGH_TEMP_C:Ljava/lang/String; = "highTempC"

.field public static final KEY_OUT_HIGH_TEMP_F:Ljava/lang/String; = "highTempF"

.field public static final KEY_OUT_HUMIDITY:Ljava/lang/String; = "humidity"

.field public static final KEY_OUT_LOW_TEMP_C:Ljava/lang/String; = "lowTempC"

.field public static final KEY_OUT_LOW_TEMP_F:Ljava/lang/String; = "lowTempF"

.field public static final KEY_OUT_NIGHT_HIGH_TEMP_C:Ljava/lang/String; = "nighthighTempC"

.field public static final KEY_OUT_NIGHT_HIGH_TEMP_F:Ljava/lang/String; = "nighthighTempF"

.field public static final KEY_OUT_NIGHT_LOW_TEMP_C:Ljava/lang/String; = "nightlowTempC"

.field public static final KEY_OUT_NIGHT_LOW_TEMP_F:Ljava/lang/String; = "nightlowTempF"

.field public static final KEY_OUT_SUNRISE:Ljava/lang/String; = "sunrise"

.field public static final KEY_OUT_SUNSET:Ljava/lang/String; = "sunset"

.field public static final KEY_OUT_VISIBILITY_KM:Ljava/lang/String; = "visibilityKM"

.field public static final KEY_OUT_VISIBILITY_MI:Ljava/lang/String; = "visibilityMI"

.field public static final KEY_OUT_WINDDIRECTION:Ljava/lang/String; = "windDirection"

.field public static final KEY_OUT_WINDSPEED_KM:Ljava/lang/String; = "windSpeedKM"

.field public static final KEY_OUT_WINDSPEED_MI:Ljava/lang/String; = "windSpeedMI"

#the value of this static final field might be set in the static constructor
.field private static final LOG_FLAG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "WSPPData"

.field private static final NIGHT:I = 0x2

.field private static final ONE_DAY_MILLIS:J = 0x5265c00L

.field private static final PROJECTION:[Ljava/lang/String; = null

.field private static final SEPARATE:Ljava/lang/String; = ";"

.field private static final STATUS_DAWN:I = 0x0

.field private static final STATUS_DAY:I = 0x1

.field private static final STATUS_NIGHT:I = 0x2


# instance fields
.field private cityLatitude:Ljava/lang/String;

.field private cityLocalTime:Ljava/lang/String;

.field private cityLongitude:Ljava/lang/String;

.field private cityTimeZone:Ljava/lang/String;

.field private cityWebURL:Ljava/lang/String;

.field private curFeelTempC:I

.field private curFeelTempF:I

.field private curHumidity:Ljava/lang/String;

.field private curVisibilityKM:Ljava/lang/String;

.field private curVisibilityMI:Ljava/lang/String;

.field private curWinddirection:Ljava/lang/String;

.field private curWindspeedKM:Ljava/lang/String;

.field private curWindspeedMI:Ljava/lang/String;

.field private currentSetTimezone:Ljava/lang/String;

.field private dayLightFlag:Ljava/lang/String;

.field private fstFeelHighTempC:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fstFeelHighTempF:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fstFeelLowTempC:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fstFeelLowTempF:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fstNightConditionId:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fstNightFeelHighTempC:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fstNightFeelHighTempF:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fstNightFeelLowTempC:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fstNightFeelLowTempF:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fstNightHighTempC:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fstNightHighTempF:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fstNightLowTempC:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fstNightLowTempF:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fstNightPrecip:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fstPrecip:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fstSunrise:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fstSunset:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hourConditionId:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hourFeelTempC:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hourFeelTempF:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hourName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hourPrecip:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hourTempC:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hourTempF:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxIndex:I

.field private timeZoneAbbreviation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x37

    .line 120
    const/16 v0, 0x3c

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->type:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->param1:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->param2:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->lastUpdate:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->curTempC:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->curTempF:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->curConditionId:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstName:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstDate:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstConditionId:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstHighTempC:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstHighTempF:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstLowTempC:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstLowTempF:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->curLocLat:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->curLocLng:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->curLocLatTrim:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->curLocLngTrim:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->curLocName:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->curLocState:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->curLocCountry:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->curLocTimezoneId:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->cityLocalTime:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->cityLatitude:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->cityLongitude:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->cityTimeZone:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->cityWebURL:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->dayLightFlag:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->curFeelTempC:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->curFeelTempF:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->curHumidity:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->curWinddirection:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->curWindspeed:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->curVisibility:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstSunrise:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstSunset:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstFeelHighTempC:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstFeelHighTempF:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstFeelLowTempC:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstFeelLowTempF:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstNightFeelHighTempC:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x29

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstNightFeelHighTempF:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstNightFeelLowTempC:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstNightFeelLowTempF:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstNightConditionId:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstNightHighTempC:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstNightHighTempF:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstNightLowTempC:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x30

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstNightLowTempF:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x31

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstPrecip:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x32

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstNightPrecip:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x33

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->hourName:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x34

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->hourConditionId:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x35

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->hourTempC:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x36

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->hourTempF:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->hourFeelTempC:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const/16 v1, 0x38

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->hourFeelTempF:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x39

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->hourPrecip:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->timeZoneAbbreviation:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->currentSetTimezone:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/util/weather/WSPPData;->PROJECTION:[Ljava/lang/String;

    .line 487
    new-instance v0, Lcom/htc/util/weather/WSPPData$1;

    invoke-direct {v0}, Lcom/htc/util/weather/WSPPData$1;-><init>()V

    sput-object v0, Lcom/htc/util/weather/WSPPData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1259
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/htc/util/weather/WSPPData;->LOG_FLAG:Z

    .line 1273
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/util/weather/WSPPData;->CONDITION_STATUS:[I

    .line 1283
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/htc/util/weather/WSPPData;->CONDITION_CONVERT:[I

    return-void

    .line 1273
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 1283
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x23t 0x0t 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
        0x26t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x29t 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x2bt 0x0t 0x0t 0x0t
        0x2bt 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x33t 0x0t 0x0t 0x0t
        0x34t 0x0t 0x0t 0x0t
        0x35t 0x0t 0x0t 0x0t
        0x36t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 195
    invoke-direct {p0}, Lcom/htc/util/weather/WSPData;-><init>()V

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->cityLocalTime:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->cityLatitude:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->cityLongitude:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->cityTimeZone:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->cityWebURL:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->dayLightFlag:Ljava/lang/String;

    .line 42
    iput v1, p0, Lcom/htc/util/weather/WSPPData;->curFeelTempC:I

    .line 44
    iput v1, p0, Lcom/htc/util/weather/WSPPData;->curFeelTempF:I

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->curHumidity:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->curWinddirection:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->curWindspeedMI:Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->curVisibilityMI:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->curWindspeedKM:Ljava/lang/String;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->curVisibilityKM:Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstSunrise:Ljava/util/ArrayList;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstSunset:Ljava/util/ArrayList;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstFeelHighTempC:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstFeelHighTempF:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstFeelLowTempC:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstFeelLowTempF:Ljava/util/ArrayList;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelHighTempC:Ljava/util/ArrayList;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelHighTempF:Ljava/util/ArrayList;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelLowTempC:Ljava/util/ArrayList;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelLowTempF:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightConditionId:Ljava/util/ArrayList;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightHighTempC:Ljava/util/ArrayList;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightHighTempF:Ljava/util/ArrayList;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightLowTempC:Ljava/util/ArrayList;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightLowTempF:Ljava/util/ArrayList;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstPrecip:Ljava/util/ArrayList;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightPrecip:Ljava/util/ArrayList;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourName:Ljava/util/ArrayList;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourConditionId:Ljava/util/ArrayList;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourTempC:Ljava/util/ArrayList;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourTempF:Ljava/util/ArrayList;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourFeelTempC:Ljava/util/ArrayList;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourFeelTempF:Ljava/util/ArrayList;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourPrecip:Ljava/util/ArrayList;

    .line 115
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->timeZoneAbbreviation:Ljava/lang/String;

    .line 116
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->currentSetTimezone:Ljava/lang/String;

    .line 2027
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/util/weather/WSPPData;->mMaxIndex:I

    .line 196
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 8
    .parameter "cursor"

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 202
    invoke-direct {p0}, Lcom/htc/util/weather/WSPData;-><init>()V

    .line 27
    const-string v4, ""

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->cityLocalTime:Ljava/lang/String;

    .line 29
    const-string v4, ""

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->cityLatitude:Ljava/lang/String;

    .line 31
    const-string v4, ""

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->cityLongitude:Ljava/lang/String;

    .line 33
    const-string v4, ""

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->cityTimeZone:Ljava/lang/String;

    .line 35
    const-string v4, ""

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->cityWebURL:Ljava/lang/String;

    .line 40
    const-string v4, ""

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->dayLightFlag:Ljava/lang/String;

    .line 42
    iput v7, p0, Lcom/htc/util/weather/WSPPData;->curFeelTempC:I

    .line 44
    iput v7, p0, Lcom/htc/util/weather/WSPPData;->curFeelTempF:I

    .line 46
    const-string v4, ""

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->curHumidity:Ljava/lang/String;

    .line 48
    const-string v4, ""

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->curWinddirection:Ljava/lang/String;

    .line 50
    const-string v4, ""

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->curWindspeedMI:Ljava/lang/String;

    .line 52
    const-string v4, ""

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->curVisibilityMI:Ljava/lang/String;

    .line 54
    const-string v4, ""

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->curWindspeedKM:Ljava/lang/String;

    .line 56
    const-string v4, ""

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->curVisibilityKM:Ljava/lang/String;

    .line 61
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstSunrise:Ljava/util/ArrayList;

    .line 63
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstSunset:Ljava/util/ArrayList;

    .line 65
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstFeelHighTempC:Ljava/util/ArrayList;

    .line 67
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstFeelHighTempF:Ljava/util/ArrayList;

    .line 69
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstFeelLowTempC:Ljava/util/ArrayList;

    .line 71
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstFeelLowTempF:Ljava/util/ArrayList;

    .line 73
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelHighTempC:Ljava/util/ArrayList;

    .line 75
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelHighTempF:Ljava/util/ArrayList;

    .line 77
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelLowTempC:Ljava/util/ArrayList;

    .line 79
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelLowTempF:Ljava/util/ArrayList;

    .line 81
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightConditionId:Ljava/util/ArrayList;

    .line 83
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightHighTempC:Ljava/util/ArrayList;

    .line 85
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightHighTempF:Ljava/util/ArrayList;

    .line 87
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightLowTempC:Ljava/util/ArrayList;

    .line 89
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightLowTempF:Ljava/util/ArrayList;

    .line 91
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstPrecip:Ljava/util/ArrayList;

    .line 93
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightPrecip:Ljava/util/ArrayList;

    .line 98
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->hourName:Ljava/util/ArrayList;

    .line 100
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->hourConditionId:Ljava/util/ArrayList;

    .line 102
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->hourTempC:Ljava/util/ArrayList;

    .line 104
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->hourTempF:Ljava/util/ArrayList;

    .line 106
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->hourFeelTempC:Ljava/util/ArrayList;

    .line 108
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->hourFeelTempF:Ljava/util/ArrayList;

    .line 110
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->hourPrecip:Ljava/util/ArrayList;

    .line 115
    const-string v4, ""

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->timeZoneAbbreviation:Ljava/lang/String;

    .line 116
    const-string v4, ""

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->currentSetTimezone:Ljava/lang/String;

    .line 2027
    iput v6, p0, Lcom/htc/util/weather/WSPPData;->mMaxIndex:I

    .line 204
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v4

    sget-object v5, Lcom/htc/util/weather/WSPPData;->PROJECTION:[Ljava/lang/String;

    array-length v5, v5

    if-ne v4, v5, :cond_1f

    .line 206
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, p0, Lcom/htc/util/weather/WSPData;->type:I

    .line 207
    const/4 v4, 0x1

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/util/weather/WSPData;->param1:Ljava/lang/String;

    .line 208
    const/4 v4, 0x2

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/util/weather/WSPData;->param2:Ljava/lang/String;

    .line 209
    const/4 v4, 0x3

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/htc/util/weather/WSPData;->lastUpdate:J

    .line 210
    const/4 v4, 0x4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, p0, Lcom/htc/util/weather/WSPData;->curTempC:I

    .line 211
    const/4 v4, 0x5

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, p0, Lcom/htc/util/weather/WSPData;->curTempF:I

    .line 212
    const/4 v4, 0x6

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/util/weather/WSPData;->curConditionId:Ljava/lang/String;

    .line 214
    iget-object v4, p0, Lcom/htc/util/weather/WSPData;->fstName:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 215
    const/4 v4, 0x7

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 216
    .local v2, item:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/util/weather/WSPData;->fstName:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 219
    .end local v2           #item:Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/htc/util/weather/WSPData;->fstDate:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 220
    const/16 v4, 0x8

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 221
    .restart local v2       #item:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/util/weather/WSPData;->fstDate:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 224
    .end local v2           #item:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/htc/util/weather/WSPData;->fstConditionId:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 225
    const/16 v4, 0x9

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v3, :cond_2

    aget-object v2, v0, v1

    .line 226
    .restart local v2       #item:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/util/weather/WSPData;->fstConditionId:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 229
    .end local v2           #item:Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/htc/util/weather/WSPData;->fstHighTempC:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 230
    const/16 v4, 0xa

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v3, :cond_3

    aget-object v2, v0, v1

    .line 231
    .restart local v2       #item:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/util/weather/WSPData;->fstHighTempC:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 234
    .end local v2           #item:Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/htc/util/weather/WSPData;->fstHighTempF:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 235
    const/16 v4, 0xb

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v3, :cond_4

    aget-object v2, v0, v1

    .line 236
    .restart local v2       #item:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/util/weather/WSPData;->fstHighTempF:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 239
    .end local v2           #item:Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcom/htc/util/weather/WSPData;->fstLowTempC:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 240
    const/16 v4, 0xc

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v3, :cond_5

    aget-object v2, v0, v1

    .line 241
    .restart local v2       #item:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/util/weather/WSPData;->fstLowTempC:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 244
    .end local v2           #item:Ljava/lang/String;
    :cond_5
    iget-object v4, p0, Lcom/htc/util/weather/WSPData;->fstLowTempF:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 245
    const/16 v4, 0xd

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v3, :cond_6

    aget-object v2, v0, v1

    .line 246
    .restart local v2       #item:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/util/weather/WSPData;->fstLowTempF:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 249
    .end local v2           #item:Ljava/lang/String;
    :cond_6
    const/16 v4, 0xe

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/util/weather/WSPData;->curLocLat:Ljava/lang/String;

    .line 250
    const/16 v4, 0xf

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/util/weather/WSPData;->curLocLng:Ljava/lang/String;

    .line 251
    const/16 v4, 0x10

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/util/weather/WSPData;->curLocLatTrim:Ljava/lang/String;

    .line 252
    const/16 v4, 0x11

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/util/weather/WSPData;->curLocLngTrim:Ljava/lang/String;

    .line 253
    const/16 v4, 0x12

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/util/weather/WSPData;->curLocName:Ljava/lang/String;

    .line 254
    const/16 v4, 0x13

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/util/weather/WSPData;->curLocState:Ljava/lang/String;

    .line 255
    const/16 v4, 0x14

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/util/weather/WSPData;->curLocCountry:Ljava/lang/String;

    .line 256
    const/16 v4, 0x15

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/util/weather/WSPData;->curLocTimezoneId:Ljava/lang/String;

    .line 258
    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->cityLocalTime:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->cityLocalTime:Ljava/lang/String;

    .line 259
    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->cityLatitude:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->cityLatitude:Ljava/lang/String;

    .line 260
    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->cityLongitude:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->cityLongitude:Ljava/lang/String;

    .line 261
    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->cityTimeZone:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->cityTimeZone:Ljava/lang/String;

    .line 262
    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->cityWebURL:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->cityWebURL:Ljava/lang/String;

    .line 264
    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->dayLightFlag:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->dayLightFlag:Ljava/lang/String;

    .line 265
    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->curFeelTempC:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, p0, Lcom/htc/util/weather/WSPPData;->curFeelTempC:I

    .line 266
    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->curFeelTempF:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, p0, Lcom/htc/util/weather/WSPPData;->curFeelTempF:I

    .line 267
    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->curHumidity:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->curHumidity:Ljava/lang/String;

    .line 268
    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->curWinddirection:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->curWinddirection:Ljava/lang/String;

    .line 269
    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->curWindspeed:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->curWindspeedMI:Ljava/lang/String;

    .line 270
    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->curVisibility:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->curVisibilityMI:Ljava/lang/String;

    .line 271
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->curWindspeedMI:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/htc/util/weather/WSPPData;->mileToKilo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->curWindspeedKM:Ljava/lang/String;

    .line 272
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->curVisibilityMI:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/htc/util/weather/WSPPData;->mileToKilo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->curVisibilityKM:Ljava/lang/String;

    .line 274
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstSunrise:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 275
    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstSunrise:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v3, :cond_7

    aget-object v2, v0, v1

    .line 276
    .restart local v2       #item:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstSunrise:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 278
    .end local v2           #item:Ljava/lang/String;
    :cond_7
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstSunset:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 279
    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstSunset:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v3, :cond_8

    aget-object v2, v0, v1

    .line 280
    .restart local v2       #item:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstSunset:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 282
    .end local v2           #item:Ljava/lang/String;
    :cond_8
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstFeelHighTempC:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 283
    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstFeelHighTempC:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v3, :cond_9

    aget-object v2, v0, v1

    .line 284
    .restart local v2       #item:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstFeelHighTempC:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 286
    .end local v2           #item:Ljava/lang/String;
    :cond_9
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstFeelHighTempF:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 287
    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstFeelHighTempF:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v3, :cond_a

    aget-object v2, v0, v1

    .line 288
    .restart local v2       #item:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstFeelHighTempF:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 290
    .end local v2           #item:Ljava/lang/String;
    :cond_a
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstFeelLowTempC:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 291
    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstFeelLowTempC:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v3, :cond_b

    aget-object v2, v0, v1

    .line 292
    .restart local v2       #item:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstFeelLowTempC:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 294
    .end local v2           #item:Ljava/lang/String;
    :cond_b
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstFeelLowTempF:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 295
    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstFeelLowTempF:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v3, :cond_c

    aget-object v2, v0, v1

    .line 296
    .restart local v2       #item:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstFeelLowTempF:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 298
    .end local v2           #item:Ljava/lang/String;
    :cond_c
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelHighTempC:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 299
    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstNightFeelHighTempC:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v3, :cond_d

    aget-object v2, v0, v1

    .line 300
    .restart local v2       #item:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelHighTempC:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 302
    .end local v2           #item:Ljava/lang/String;
    :cond_d
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelHighTempF:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 303
    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstNightFeelHighTempF:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v3, :cond_e

    aget-object v2, v0, v1

    .line 304
    .restart local v2       #item:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelHighTempF:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 306
    .end local v2           #item:Ljava/lang/String;
    :cond_e
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelLowTempC:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 307
    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstNightFeelLowTempC:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v3, :cond_f

    aget-object v2, v0, v1

    .line 308
    .restart local v2       #item:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelLowTempC:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 310
    .end local v2           #item:Ljava/lang/String;
    :cond_f
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelLowTempF:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 311
    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstNightFeelLowTempF:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v3, :cond_10

    aget-object v2, v0, v1

    .line 312
    .restart local v2       #item:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelLowTempF:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 314
    .end local v2           #item:Ljava/lang/String;
    :cond_10
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightConditionId:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 315
    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstNightConditionId:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v1, 0x0

    :goto_11
    if-ge v1, v3, :cond_11

    aget-object v2, v0, v1

    .line 316
    .restart local v2       #item:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightConditionId:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 318
    .end local v2           #item:Ljava/lang/String;
    :cond_11
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightHighTempC:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 319
    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstNightHighTempC:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v1, 0x0

    :goto_12
    if-ge v1, v3, :cond_12

    aget-object v2, v0, v1

    .line 320
    .restart local v2       #item:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightHighTempC:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 322
    .end local v2           #item:Ljava/lang/String;
    :cond_12
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightHighTempF:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 323
    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstNightHighTempF:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v1, 0x0

    :goto_13
    if-ge v1, v3, :cond_13

    aget-object v2, v0, v1

    .line 324
    .restart local v2       #item:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightHighTempF:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 326
    .end local v2           #item:Ljava/lang/String;
    :cond_13
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightLowTempC:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 327
    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstNightLowTempC:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v1, 0x0

    :goto_14
    if-ge v1, v3, :cond_14

    aget-object v2, v0, v1

    .line 328
    .restart local v2       #item:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightLowTempC:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 330
    .end local v2           #item:Ljava/lang/String;
    :cond_14
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightLowTempF:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 331
    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstNightLowTempF:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v1, 0x0

    :goto_15
    if-ge v1, v3, :cond_15

    aget-object v2, v0, v1

    .line 332
    .restart local v2       #item:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightLowTempF:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 334
    .end local v2           #item:Ljava/lang/String;
    :cond_15
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstPrecip:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 335
    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstPrecip:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v1, 0x0

    :goto_16
    if-ge v1, v3, :cond_16

    aget-object v2, v0, v1

    .line 336
    .restart local v2       #item:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstPrecip:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 338
    .end local v2           #item:Ljava/lang/String;
    :cond_16
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightPrecip:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 339
    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstNightPrecip:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v1, 0x0

    :goto_17
    if-ge v1, v3, :cond_17

    aget-object v2, v0, v1

    .line 340
    .restart local v2       #item:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightPrecip:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 342
    .end local v2           #item:Ljava/lang/String;
    :cond_17
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->hourName:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 343
    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->hourName:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v1, 0x0

    :goto_18
    if-ge v1, v3, :cond_18

    aget-object v2, v0, v1

    .line 344
    .restart local v2       #item:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->hourName:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 346
    .end local v2           #item:Ljava/lang/String;
    :cond_18
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->hourConditionId:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 347
    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->hourConditionId:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v1, 0x0

    :goto_19
    if-ge v1, v3, :cond_19

    aget-object v2, v0, v1

    .line 348
    .restart local v2       #item:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->hourConditionId:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 350
    .end local v2           #item:Ljava/lang/String;
    :cond_19
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->hourTempC:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 351
    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->hourTempC:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v1, 0x0

    :goto_1a
    if-ge v1, v3, :cond_1a

    aget-object v2, v0, v1

    .line 352
    .restart local v2       #item:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->hourTempC:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 354
    .end local v2           #item:Ljava/lang/String;
    :cond_1a
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->hourTempF:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 355
    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->hourTempF:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v1, 0x0

    :goto_1b
    if-ge v1, v3, :cond_1b

    aget-object v2, v0, v1

    .line 356
    .restart local v2       #item:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->hourTempF:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 358
    .end local v2           #item:Ljava/lang/String;
    :cond_1b
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->hourFeelTempC:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 359
    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->hourFeelTempC:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v1, 0x0

    :goto_1c
    if-ge v1, v3, :cond_1c

    aget-object v2, v0, v1

    .line 360
    .restart local v2       #item:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->hourFeelTempC:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 362
    .end local v2           #item:Ljava/lang/String;
    :cond_1c
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->hourFeelTempF:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 363
    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->hourFeelTempF:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v1, 0x0

    :goto_1d
    if-ge v1, v3, :cond_1d

    aget-object v2, v0, v1

    .line 364
    .restart local v2       #item:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->hourFeelTempF:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 366
    .end local v2           #item:Ljava/lang/String;
    :cond_1d
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->hourPrecip:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 367
    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->hourPrecip:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v1, 0x0

    :goto_1e
    if-ge v1, v3, :cond_1e

    aget-object v2, v0, v1

    .line 368
    .restart local v2       #item:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->hourPrecip:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 371
    .end local v2           #item:Ljava/lang/String;
    :cond_1e
    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->timeZoneAbbreviation:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->timeZoneAbbreviation:Ljava/lang/String;

    .line 372
    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->currentSetTimezone:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->currentSetTimezone:Ljava/lang/String;

    .line 374
    invoke-virtual {p0}, Lcom/htc/util/weather/WSPPData;->checkMaxAvailableIndex()V

    .line 376
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v3           #len$:I
    :cond_1f
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    const/4 v1, 0x0

    .line 382
    invoke-direct {p0}, Lcom/htc/util/weather/WSPData;-><init>()V

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->cityLocalTime:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->cityLatitude:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->cityLongitude:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->cityTimeZone:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->cityWebURL:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->dayLightFlag:Ljava/lang/String;

    .line 42
    iput v1, p0, Lcom/htc/util/weather/WSPPData;->curFeelTempC:I

    .line 44
    iput v1, p0, Lcom/htc/util/weather/WSPPData;->curFeelTempF:I

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->curHumidity:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->curWinddirection:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->curWindspeedMI:Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->curVisibilityMI:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->curWindspeedKM:Ljava/lang/String;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->curVisibilityKM:Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstSunrise:Ljava/util/ArrayList;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstSunset:Ljava/util/ArrayList;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstFeelHighTempC:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstFeelHighTempF:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstFeelLowTempC:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstFeelLowTempF:Ljava/util/ArrayList;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelHighTempC:Ljava/util/ArrayList;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelHighTempF:Ljava/util/ArrayList;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelLowTempC:Ljava/util/ArrayList;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelLowTempF:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightConditionId:Ljava/util/ArrayList;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightHighTempC:Ljava/util/ArrayList;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightHighTempF:Ljava/util/ArrayList;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightLowTempC:Ljava/util/ArrayList;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightLowTempF:Ljava/util/ArrayList;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstPrecip:Ljava/util/ArrayList;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightPrecip:Ljava/util/ArrayList;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourName:Ljava/util/ArrayList;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourConditionId:Ljava/util/ArrayList;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourTempC:Ljava/util/ArrayList;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourTempF:Ljava/util/ArrayList;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourFeelTempC:Ljava/util/ArrayList;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourFeelTempF:Ljava/util/ArrayList;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourPrecip:Ljava/util/ArrayList;

    .line 115
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->timeZoneAbbreviation:Ljava/lang/String;

    .line 116
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->currentSetTimezone:Ljava/lang/String;

    .line 2027
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/util/weather/WSPPData;->mMaxIndex:I

    .line 383
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/util/weather/WSPData;->type:I

    .line 384
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->param1:Ljava/lang/String;

    .line 385
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->param2:Ljava/lang/String;

    .line 386
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/util/weather/WSPData;->lastUpdate:J

    .line 387
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/util/weather/WSPData;->curTempC:I

    .line 388
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/util/weather/WSPData;->curTempF:I

    .line 389
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->curConditionId:Ljava/lang/String;

    .line 390
    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->fstName:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 391
    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->fstDate:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 392
    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->fstConditionId:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 393
    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->fstHighTempC:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 394
    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->fstHighTempF:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 395
    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->fstLowTempC:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 396
    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->fstLowTempF:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 397
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocLat:Ljava/lang/String;

    .line 398
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocLng:Ljava/lang/String;

    .line 399
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocLatTrim:Ljava/lang/String;

    .line 400
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocLngTrim:Ljava/lang/String;

    .line 401
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocName:Ljava/lang/String;

    .line 402
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocState:Ljava/lang/String;

    .line 403
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocCountry:Ljava/lang/String;

    .line 404
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocTimezoneId:Ljava/lang/String;

    .line 406
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->cityLocalTime:Ljava/lang/String;

    .line 407
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->cityLatitude:Ljava/lang/String;

    .line 408
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->cityLongitude:Ljava/lang/String;

    .line 409
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->cityTimeZone:Ljava/lang/String;

    .line 410
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->cityWebURL:Ljava/lang/String;

    .line 411
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->dayLightFlag:Ljava/lang/String;

    .line 412
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/util/weather/WSPPData;->curFeelTempC:I

    .line 413
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/util/weather/WSPPData;->curFeelTempF:I

    .line 414
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->curHumidity:Ljava/lang/String;

    .line 415
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->curWinddirection:Ljava/lang/String;

    .line 416
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->curWindspeedMI:Ljava/lang/String;

    .line 417
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->curVisibilityMI:Ljava/lang/String;

    .line 418
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->curWindspeedKM:Ljava/lang/String;

    .line 419
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->curVisibilityKM:Ljava/lang/String;

    .line 420
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstSunrise:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 421
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstSunset:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 422
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstFeelHighTempC:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 423
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstFeelHighTempF:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 424
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstFeelLowTempC:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 425
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstFeelLowTempF:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 426
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelHighTempC:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 427
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelHighTempF:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 428
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelLowTempC:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 429
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelLowTempF:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 430
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightConditionId:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 431
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightHighTempC:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 432
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightHighTempF:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 433
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightLowTempC:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 434
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightLowTempF:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 435
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstPrecip:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 436
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightPrecip:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 437
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourName:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 438
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourConditionId:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 439
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourTempC:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 440
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourTempF:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 441
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourFeelTempC:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 442
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourFeelTempF:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 443
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourPrecip:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 445
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->timeZoneAbbreviation:Ljava/lang/String;

    .line 446
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->currentSetTimezone:Ljava/lang/String;

    .line 448
    invoke-virtual {p0}, Lcom/htc/util/weather/WSPPData;->checkMaxAvailableIndex()V

    .line 449
    return-void
.end method

.method private beforeToday(Ljava/lang/String;Ljava/lang/String;)I
    .locals 17
    .parameter "date"
    .parameter "timezoneId"

    .prologue
    .line 1784
    :try_start_0
    invoke-direct/range {p0 .. p2}, Lcom/htc/util/weather/WSPPData;->getTimeObject(Ljava/lang/String;Ljava/lang/String;)Landroid/text/format/Time;

    move-result-object v8

    .line 1785
    .local v8, tObject:Landroid/text/format/Time;
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    .line 1786
    .local v7, tNow:Landroid/text/format/Time;
    if-eqz v7, :cond_0

    if-nez v8, :cond_2

    .line 1787
    :cond_0
    const/4 v1, 0x0

    .line 1816
    .end local v7           #tNow:Landroid/text/format/Time;
    .end local v8           #tObject:Landroid/text/format/Time;
    :cond_1
    :goto_0
    return v1

    .line 1789
    .restart local v7       #tNow:Landroid/text/format/Time;
    .restart local v8       #tObject:Landroid/text/format/Time;
    :cond_2
    invoke-virtual {v7}, Landroid/text/format/Time;->setToNow()V

    .line 1790
    if-eqz p2, :cond_3

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_3

    .line 1791
    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 1793
    :cond_3
    sget-boolean v13, Lcom/htc/util/weather/WSPPData;->LOG_FLAG:Z

    if-eqz v13, :cond_4

    const-string v13, "WSPPData"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "beforeToday() - now is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v7, Landroid/text/format/Time;->hour:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "h, "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v7, Landroid/text/format/Time;->minute:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "m, "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v7, Landroid/text/format/Time;->second:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "s, timezone = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1794
    :cond_4
    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    .line 1795
    .local v5, t:J
    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v9

    .line 1796
    .local v9, tn:J
    iget v13, v7, Landroid/text/format/Time;->hour:I

    mul-int/lit8 v13, v13, 0x3c

    iget v14, v7, Landroid/text/format/Time;->minute:I

    add-int/2addr v13, v14

    mul-int/lit8 v13, v13, 0x3c

    iget v14, v7, Landroid/text/format/Time;->second:I

    add-int/2addr v13, v14

    mul-int/lit16 v13, v13, 0x3e8

    int-to-long v3, v13

    .line 1797
    .local v3, r:J
    const/4 v8, 0x0

    .line 1798
    const/4 v7, 0x0

    .line 1800
    sub-long v11, v9, v3

    .line 1801
    .local v11, today:J
    sub-long v13, v11, v5

    const-wide/32 v15, 0x5265c00

    div-long/2addr v13, v15

    long-to-int v1, v13

    .line 1802
    .local v1, daysBetween:I
    if-gez v1, :cond_5

    const/4 v1, 0x0

    .line 1806
    :cond_5
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/util/weather/WSPPData;->mMaxIndex:I

    if-le v1, v13, :cond_1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/util/weather/WSPPData;->mMaxIndex:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1810
    .end local v1           #daysBetween:I
    .end local v3           #r:J
    .end local v5           #t:J
    .end local v7           #tNow:Landroid/text/format/Time;
    .end local v8           #tObject:Landroid/text/format/Time;
    .end local v9           #tn:J
    .end local v11           #today:J
    :catch_0
    move-exception v2

    .line 1811
    .local v2, e:Ljava/lang/Exception;
    sget-boolean v13, Lcom/htc/util/weather/WSPPData;->LOG_FLAG:Z

    if-eqz v13, :cond_6

    .line 1812
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1813
    sget-boolean v13, Lcom/htc/util/weather/WSPPData;->LOG_FLAG:Z

    if-eqz v13, :cond_6

    const-string v13, "WSPPData"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "beforeToday() - some error in compare2Today with "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1816
    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method private static convertConditionID(II)I
    .locals 5
    .parameter "isDay"
    .parameter "inputID"

    .prologue
    const/4 v2, 0x1

    .line 1916
    move v0, p1

    .line 1917
    .local v0, resultID:I
    invoke-static {p1}, Lcom/htc/util/weather/WSPPData;->getConditionStatus(I)I

    move-result v1

    .line 1918
    .local v1, statusCurID:I
    if-ne v1, v2, :cond_0

    if-ne p0, v2, :cond_1

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    if-eqz p0, :cond_2

    .line 1919
    :cond_1
    sget-object v2, Lcom/htc/util/weather/WSPPData;->CONDITION_CONVERT:[I

    array-length v2, v2

    if-ge p1, v2, :cond_2

    .line 1920
    sget-object v2, Lcom/htc/util/weather/WSPPData;->CONDITION_CONVERT:[I

    aget v0, v2, p1

    .line 1922
    :cond_2
    sget-boolean v2, Lcom/htc/util/weather/WSPPData;->LOG_FLAG:Z

    if-eqz v2, :cond_3

    const-string v2, "WSPPData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "convertConditionID() - isDay = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", inputID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", resultID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1923
    :cond_3
    return v0
.end method

.method private convertHourMinute(Ljava/lang/String;)J
    .locals 11
    .parameter "strTime"

    .prologue
    const/4 v10, 0x2

    const-wide/16 v4, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1675
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1676
    :cond_0
    sget-boolean v6, Lcom/htc/util/weather/WSPPData;->LOG_FLAG:Z

    if-eqz v6, :cond_1

    const-string v6, "WSPPData"

    const-string v7, "convertHourMinute() - Invalid strTime - null or empty"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1712
    :cond_1
    :goto_0
    return-wide v4

    .line 1680
    :cond_2
    const/4 v0, 0x0

    .line 1681
    .local v0, isPM:Z
    const-string v6, " "

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1682
    .local v3, tempTime:[Ljava/lang/String;
    array-length v6, v3

    if-eq v6, v10, :cond_3

    .line 1683
    sget-boolean v6, Lcom/htc/util/weather/WSPPData;->LOG_FLAG:Z

    if-eqz v6, :cond_1

    const-string v6, "WSPPData"

    const-string v7, "convertHourMinute() - Invalid tempTime[] - length!=2"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1686
    :cond_3
    aget-object v6, v3, v9

    const-string v7, "AM"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1687
    const/4 v0, 0x0

    .line 1697
    :goto_1
    aget-object v6, v3, v8

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1698
    .local v2, tempHM:[Ljava/lang/String;
    array-length v6, v2

    if-eq v6, v10, :cond_6

    .line 1699
    sget-boolean v6, Lcom/htc/util/weather/WSPPData;->LOG_FLAG:Z

    if-eqz v6, :cond_1

    const-string v6, "WSPPData"

    const-string v7, "convertHourMinute() - Invalid tempHW[] - length!=2"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1689
    .end local v2           #tempHM:[Ljava/lang/String;
    :cond_4
    aget-object v6, v3, v9

    const-string v7, "PM"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1690
    const/4 v0, 0x1

    goto :goto_1

    .line 1693
    :cond_5
    sget-boolean v6, Lcom/htc/util/weather/WSPPData;->LOG_FLAG:Z

    if-eqz v6, :cond_1

    const-string v6, "WSPPData"

    const-string v7, "convertHourMinute() - Invalid tempTime[1] - no AM & PM"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1702
    .restart local v2       #tempHM:[Ljava/lang/String;
    :cond_6
    new-array v1, v10, [I

    .line 1703
    .local v1, result:[I
    aget-object v4, v2, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v1, v8

    .line 1704
    aget-object v4, v2, v9

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v1, v9

    .line 1705
    if-eqz v0, :cond_7

    .line 1706
    aget v4, v1, v8

    add-int/lit8 v4, v4, 0xc

    aput v4, v1, v8

    .line 1708
    :cond_7
    sget-boolean v4, Lcom/htc/util/weather/WSPPData;->LOG_FLAG:Z

    if-eqz v4, :cond_8

    .line 1709
    const-string v4, "WSPPData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "convertHourMinute() - strTime = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v1, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v1, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1712
    :cond_8
    aget v4, v1, v8

    aget v5, v1, v9

    invoke-direct {p0, v4, v5}, Lcom/htc/util/weather/WSPPData;->getHourMinute(II)J

    move-result-wide v4

    goto/16 :goto_0
.end method

.method private static getConditionStatus(I)I
    .locals 1
    .parameter "conditionID"

    .prologue
    .line 1933
    sget-object v0, Lcom/htc/util/weather/WSPPData;->CONDITION_STATUS:[I

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 1936
    sget-object v0, Lcom/htc/util/weather/WSPPData;->CONDITION_STATUS:[I

    aget v0, v0, p0

    .line 1938
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCurrentDataStatus(Landroid/content/Context;)[I
    .locals 37
    .parameter "context"

    .prologue
    .line 1523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/weather/WSPPData;->fstSunrise:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    .line 1524
    .local v32, strSunrise:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/weather/WSPPData;->fstSunset:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    .line 1525
    .local v33, strSunset:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/util/weather/WSPPData;->dayLightFlag:Ljava/lang/String;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/util/weather/WSPPData;->dayLightFlag:Ljava/lang/String;

    const-string v9, "True"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v17, 0x1

    .line 1529
    .local v17, bDayLightFlag:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/weather/WSPPData;->currentSetTimezone:Ljava/lang/String;

    move-object/from16 v34, v0

    .line 1532
    .local v34, strTimezoneId:Ljava/lang/String;
    const/4 v2, 0x4

    new-array v0, v2, [I

    move-object/from16 v24, v0

    fill-array-data v24, :array_0

    .line 1533
    .local v24, result:[I
    const/4 v9, 0x2

    if-eqz v17, :cond_2

    const/4 v2, 0x1

    :goto_1
    aput v2, v24, v9

    .line 1535
    const/4 v2, 0x3

    :try_start_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/util/weather/WSPData;->curConditionId:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput v9, v24, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1544
    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/htc/util/weather/WSPData;->lastUpdate:J

    const-wide/16 v35, 0x0

    cmp-long v2, v9, v35

    if-gtz v2, :cond_4

    .line 1545
    sget-boolean v2, Lcom/htc/util/weather/WSPPData;->LOG_FLAG:Z

    if-eqz v2, :cond_0

    const-string v2, "WSPPData"

    const-string v9, "getCurrentDataStatus() - Invalid Input Parameter - Last Update Time"

    invoke-static {v2, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    :cond_0
    :goto_2
    return-object v24

    .line 1525
    .end local v17           #bDayLightFlag:Z
    .end local v24           #result:[I
    .end local v34           #strTimezoneId:Ljava/lang/String;
    :cond_1
    const/16 v17, 0x0

    goto :goto_0

    .line 1533
    .restart local v17       #bDayLightFlag:Z
    .restart local v24       #result:[I
    .restart local v34       #strTimezoneId:Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 1537
    :catch_0
    move-exception v21

    .line 1538
    .local v21, e:Ljava/lang/Exception;
    sget-boolean v2, Lcom/htc/util/weather/WSPPData;->LOG_FLAG:Z

    if-eqz v2, :cond_3

    const-string v2, "WSPPData"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getCurrentDataStatus() - Exception = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    :cond_3
    const/4 v2, 0x3

    const/4 v9, 0x0

    aput v9, v24, v2

    goto :goto_2

    .line 1548
    .end local v21           #e:Ljava/lang/Exception;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/util/weather/WSPData;->fstDate:Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/util/weather/WSPData;->fstDate:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_6

    .line 1549
    :cond_5
    sget-boolean v2, Lcom/htc/util/weather/WSPPData;->LOG_FLAG:Z

    if-eqz v2, :cond_0

    const-string v2, "WSPPData"

    const-string v9, "getCurrentDataStatus() - Invalid Input Parameter - Forecast Date"

    invoke-static {v2, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1554
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/util/weather/WSPData;->fstDate:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v29

    .line 1555
    .local v29, sizefstDate:I
    if-eqz v32, :cond_7

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_8

    .line 1556
    :cond_7
    new-instance v32, Ljava/util/ArrayList;

    .end local v32           #strSunrise:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, v32

    move/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1557
    .restart local v32       #strSunrise:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-boolean v2, Lcom/htc/util/weather/WSPPData;->LOG_FLAG:Z

    if-eqz v2, :cond_8

    const-string v2, "WSPPData"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getCurrentDataStatus() - Error Handling - strSunrise["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v29

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    :cond_8
    if-eqz v33, :cond_9

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_a

    .line 1560
    :cond_9
    new-instance v33, Ljava/util/ArrayList;

    .end local v33           #strSunset:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, v33

    move/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1561
    .restart local v33       #strSunset:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-boolean v2, Lcom/htc/util/weather/WSPPData;->LOG_FLAG:Z

    if-eqz v2, :cond_a

    const-string v2, "WSPPData"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getCurrentDataStatus() - Error Handling - strSunset["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v29

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1567
    :cond_a
    const/16 v22, 0x0

    .line 1569
    .local v22, isOnlineSearchedCity:Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    .line 1570
    .local v19, currentSystemTime:J
    const/16 v18, 0x0

    .line 1571
    .local v18, cCurrentTime:Ljava/util/Calendar;
    if-eqz v34, :cond_b

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1572
    :cond_b
    sget-boolean v2, Lcom/htc/util/weather/WSPPData;->LOG_FLAG:Z

    if-eqz v2, :cond_c

    const-string v2, "WSPPData"

    const-string v9, "getCurrentDataStatus() - strTtimezone is null or empty - Online Searched City."

    invoke-static {v2, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    :cond_c
    const/16 v22, 0x1

    .line 1581
    :goto_3
    if-nez v18, :cond_f

    .line 1582
    sget-boolean v2, Lcom/htc/util/weather/WSPPData;->LOG_FLAG:Z

    if-eqz v2, :cond_0

    const-string v2, "WSPPData"

    const-string v9, "getCurrentDataStatus() - Invalid Parameter - cCurrentTime"

    invoke-static {v2, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1576
    :cond_d
    sget-boolean v2, Lcom/htc/util/weather/WSPPData;->LOG_FLAG:Z

    if-eqz v2, :cond_e

    const-string v2, "WSPPData"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getCurrentDataStatus() - strTtimezoneId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v34

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    :cond_e
    invoke-static/range {v34 .. v34}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v18

    .line 1578
    const/16 v22, 0x0

    goto :goto_3

    .line 1586
    :cond_f
    invoke-virtual/range {v18 .. v20}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1588
    const/4 v2, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/util/weather/WSPPData;->convertHourMinute(Ljava/lang/String;)J

    move-result-wide v12

    .line 1589
    .local v12, longSunriseBase:J
    const/4 v2, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/util/weather/WSPPData;->convertHourMinute(Ljava/lang/String;)J

    move-result-wide v14

    .line 1590
    .local v14, longSunsetBase:J
    const-wide/16 v9, -0x1

    cmp-long v2, v12, v9

    if-nez v2, :cond_10

    const-wide/16 v9, -0x1

    cmp-long v2, v14, v9

    if-nez v2, :cond_10

    .line 1591
    const/4 v2, 0x0

    const-string v9, "6:00 AM"

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1592
    const/4 v2, 0x0

    const-string v9, "6:00 PM"

    move-object/from16 v0, v33

    invoke-virtual {v0, v2, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1593
    const-wide/16 v12, 0x258

    .line 1594
    const-wide/16 v14, 0x708

    .line 1598
    :cond_10
    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/htc/util/weather/WSPData;->lastUpdate:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v9, v10}, Lcom/htc/util/weather/WSPPData;->isOverdue(Landroid/content/Context;J)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1600
    const/4 v2, 0x0

    const/4 v9, 0x0

    aput v9, v24, v2

    .line 1601
    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v27

    .line 1602
    .local v27, sizeR:I
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v28

    .line 1603
    .local v28, sizeS:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/util/weather/WSPData;->fstDate:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v26

    .line 1604
    .local v26, sizeD:I
    move/from16 v0, v27

    move/from16 v1, v28

    if-gt v0, v1, :cond_13

    move/from16 v25, v27

    .line 1605
    .local v25, size:I
    :goto_4
    move/from16 v0, v25

    move/from16 v1, v26

    if-gt v0, v1, :cond_14

    .line 1606
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/util/weather/WSPData;->fstDate:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v2, v1}, Lcom/htc/util/weather/WSPPData;->beforeToday(Ljava/lang/String;Ljava/lang/String;)I

    move-result v23

    .line 1607
    .local v23, offset:I
    add-int/lit8 v2, v25, -0x1

    move/from16 v0, v23

    if-le v0, v2, :cond_15

    const/16 v16, 0x1

    .line 1608
    .local v16, allOverDue:Z
    :goto_6
    add-int/lit8 v2, v25, -0x1

    move/from16 v0, v23

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v23

    .line 1609
    const/4 v2, 0x1

    aput v23, v24, v2

    .line 1610
    const/16 v2, 0xb

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v9, 0xc

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v9}, Lcom/htc/util/weather/WSPPData;->getHourMinute(II)J

    move-result-wide v3

    .line 1611
    .local v3, _longCurrent:J
    move-object/from16 v0, v32

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/util/weather/WSPPData;->convertHourMinute(Ljava/lang/String;)J

    move-result-wide v5

    .line 1612
    .local v5, _longSunrise:J
    move-object/from16 v0, v33

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/util/weather/WSPPData;->convertHourMinute(Ljava/lang/String;)J

    move-result-wide v7

    .line 1614
    .local v7, _longSunset:J
    const-wide/16 v9, -0x1

    cmp-long v2, v5, v9

    if-nez v2, :cond_11

    const-wide/16 v9, -0x1

    cmp-long v2, v7, v9

    if-nez v2, :cond_11

    .line 1615
    const-string v2, "6:00 AM"

    move-object/from16 v0, v32

    move/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1616
    const-string v2, "6:00 PM"

    move-object/from16 v0, v33

    move/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1617
    const-wide/16 v5, 0x258

    .line 1618
    const-wide/16 v7, 0x708

    :cond_11
    move-object/from16 v2, p0

    .line 1621
    invoke-direct/range {v2 .. v8}, Lcom/htc/util/weather/WSPPData;->getTimeStatus(JJJ)I

    move-result v30

    .line 1622
    .local v30, statusCur:I
    const/4 v2, 0x1

    move/from16 v0, v30

    if-ne v0, v2, :cond_16

    .line 1624
    const/4 v2, 0x2

    const/4 v9, 0x1

    aput v9, v24, v2

    .line 1637
    :goto_7
    sget-boolean v2, Lcom/htc/util/weather/WSPPData;->LOG_FLAG:Z

    if-eqz v2, :cond_12

    const-string v2, "WSPPData"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getCurrentDataStatus() - offset = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", statusCur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v30

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    .end local v3           #_longCurrent:J
    .end local v5           #_longSunrise:J
    .end local v7           #_longSunset:J
    .end local v16           #allOverDue:Z
    .end local v23           #offset:I
    .end local v25           #size:I
    .end local v26           #sizeD:I
    .end local v27           #sizeR:I
    .end local v28           #sizeS:I
    .end local v30           #statusCur:I
    :cond_12
    :goto_8
    sget-boolean v2, Lcom/htc/util/weather/WSPPData;->LOG_FLAG:Z

    if-eqz v2, :cond_0

    .line 1661
    const-string v2, "WSPPData"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getCurrentDataStatus() - result = { "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    aget v10, v24, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    aget v10, v24, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x2

    aget v10, v24, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x3

    aget v10, v24, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " }"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .restart local v26       #sizeD:I
    .restart local v27       #sizeR:I
    .restart local v28       #sizeS:I
    :cond_13
    move/from16 v25, v28

    .line 1604
    goto/16 :goto_4

    .restart local v25       #size:I
    :cond_14
    move/from16 v25, v26

    .line 1605
    goto/16 :goto_5

    .line 1607
    .restart local v23       #offset:I
    :cond_15
    const/16 v16, 0x0

    goto/16 :goto_6

    .line 1626
    .restart local v3       #_longCurrent:J
    .restart local v5       #_longSunrise:J
    .restart local v7       #_longSunset:J
    .restart local v16       #allOverDue:Z
    .restart local v30       #statusCur:I
    :cond_16
    const/4 v2, 0x2

    move/from16 v0, v30

    if-ne v0, v2, :cond_17

    .line 1628
    const/4 v2, 0x2

    const/4 v9, 0x0

    aput v9, v24, v2

    goto/16 :goto_7

    .line 1632
    :cond_17
    if-nez v16, :cond_18

    .line 1633
    const/4 v9, 0x1

    const/4 v2, 0x1

    aget v2, v24, v2

    add-int/lit8 v2, v2, -0x1

    if-lez v2, :cond_19

    const/4 v2, 0x1

    aget v2, v24, v2

    add-int/lit8 v2, v2, -0x1

    :goto_9
    aput v2, v24, v9

    .line 1634
    :cond_18
    const/4 v2, 0x2

    const/4 v9, 0x0

    aput v9, v24, v2

    goto/16 :goto_7

    .line 1633
    :cond_19
    const/4 v2, 0x0

    goto :goto_9

    .line 1641
    .end local v3           #_longCurrent:J
    .end local v5           #_longSunrise:J
    .end local v7           #_longSunset:J
    .end local v16           #allOverDue:Z
    .end local v23           #offset:I
    .end local v25           #size:I
    .end local v26           #sizeD:I
    .end local v27           #sizeR:I
    .end local v28           #sizeS:I
    .end local v30           #statusCur:I
    :cond_1a
    const/4 v2, 0x0

    const/4 v9, 0x1

    aput v9, v24, v2

    .line 1642
    const/4 v2, 0x1

    const/4 v9, 0x0

    aput v9, v24, v2

    .line 1644
    if-nez v22, :cond_12

    .line 1646
    const/16 v2, 0xb

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v9, 0xc

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v9}, Lcom/htc/util/weather/WSPPData;->getHourMinute(II)J

    move-result-wide v3

    .restart local v3       #_longCurrent:J
    move-object/from16 v9, p0

    move-wide v10, v3

    .line 1647
    invoke-direct/range {v9 .. v15}, Lcom/htc/util/weather/WSPPData;->getTimeStatus(JJJ)I

    move-result v31

    .line 1648
    .local v31, statusCurTime:I
    if-eqz v31, :cond_1b

    const/4 v2, 0x2

    move/from16 v0, v31

    if-ne v0, v2, :cond_1c

    .line 1649
    :cond_1b
    const/4 v2, 0x2

    const/4 v9, 0x0

    aput v9, v24, v2

    .line 1655
    :goto_a
    const/4 v2, 0x3

    const/4 v9, 0x2

    aget v9, v24, v9

    const/4 v10, 0x3

    aget v10, v24, v10

    invoke-static {v9, v10}, Lcom/htc/util/weather/WSPPData;->convertConditionID(II)I

    move-result v9

    aput v9, v24, v2

    goto/16 :goto_8

    .line 1652
    :cond_1c
    const/4 v2, 0x2

    const/4 v9, 0x1

    aput v9, v24, v2

    goto :goto_a

    .line 1532
    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private getHourMinute(II)J
    .locals 2
    .parameter "hour"
    .parameter "minute"

    .prologue
    .line 1723
    mul-int/lit8 v0, p1, 0x64

    add-int/2addr v0, p2

    int-to-long v0, v0

    return-wide v0
.end method

.method public static getProjection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    sget-object v0, Lcom/htc/util/weather/WSPPData;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method private getStringValue(Ljava/util/ArrayList;I)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1503
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, ""

    .line 1505
    .local v2, strValue:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1510
    :cond_0
    :goto_0
    return-object v2

    .line 1507
    :catch_0
    move-exception v1

    .line 1508
    .local v1, e:Ljava/lang/Exception;
    sget-boolean v3, Lcom/htc/util/weather/WSPPData;->LOG_FLAG:Z

    if-eqz v3, :cond_0

    const-string v3, "WSPPData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getStringValue() - Exception = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getTimeObject(Ljava/lang/String;Ljava/lang/String;)Landroid/text/format/Time;
    .locals 13
    .parameter "date"
    .parameter "timezoneId"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    .line 1827
    const/16 v9, 0x76c

    .line 1828
    .local v9, y:I
    const/4 v7, 0x1

    .line 1829
    .local v7, m:I
    const/4 v1, 0x1

    .line 1830
    .local v1, d:I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1833
    .local v5, keywords:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v10, "/"

    invoke-virtual {p1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v6, :cond_1

    aget-object v4, v0, v3

    .line 1834
    .local v4, k:Ljava/lang/String;
    const-string v10, ""

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1835
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1833
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1839
    .end local v4           #k:Ljava/lang/String;
    :cond_1
    :try_start_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_2

    .line 1840
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1841
    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-le v10, v11, :cond_3

    .line 1842
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1843
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-le v10, v12, :cond_4

    .line 1844
    const/4 v10, 0x2

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 1850
    :cond_4
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1851
    new-instance v8, Landroid/text/format/Time;

    invoke-direct {v8}, Landroid/text/format/Time;-><init>()V

    .line 1854
    .local v8, t:Landroid/text/format/Time;
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_5

    .line 1855
    invoke-virtual {v8, p2}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 1857
    :cond_5
    add-int/lit8 v10, v7, -0x1

    invoke-virtual {v8, v1, v10, v9}, Landroid/text/format/Time;->set(III)V

    .line 1858
    return-object v8

    .line 1846
    .end local v8           #t:Landroid/text/format/Time;
    :catch_0
    move-exception v2

    .line 1848
    .local v2, e:Ljava/lang/Exception;
    sget-boolean v10, Lcom/htc/util/weather/WSPPData;->LOG_FLAG:Z

    if-eqz v10, :cond_4

    const-string v10, "WSPPData"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getTimeObject() - The format of date is not mm/dd/yy..."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getTimeStatus(JJJ)I
    .locals 4
    .parameter "time"
    .parameter "sunrise"
    .parameter "sunset"

    .prologue
    const-wide/16 v2, 0x0

    .line 1735
    const/4 v0, 0x0

    .line 1736
    .local v0, status:I
    cmp-long v1, p3, v2

    if-gez v1, :cond_0

    cmp-long v1, p5, v2

    if-gez v1, :cond_0

    .line 1737
    const-wide/16 p3, 0x258

    .line 1738
    const-wide/16 p5, 0x708

    .line 1740
    :cond_0
    cmp-long v1, p3, v2

    if-gez v1, :cond_2

    .line 1742
    const/4 v0, 0x2

    .line 1766
    :goto_0
    sget-boolean v1, Lcom/htc/util/weather/WSPPData;->LOG_FLAG:Z

    if-eqz v1, :cond_1

    .line 1767
    const-string v1, "WSPPData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTimeStatus() - time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sunrise = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sunset = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1772
    :cond_1
    return v0

    .line 1744
    :cond_2
    cmp-long v1, p5, v2

    if-gez v1, :cond_3

    .line 1746
    const/4 v0, 0x1

    goto :goto_0

    .line 1749
    :cond_3
    cmp-long v1, p3, p5

    if-gez v1, :cond_6

    .line 1750
    cmp-long v1, p1, p3

    if-gez v1, :cond_4

    .line 1751
    const/4 v0, 0x0

    goto :goto_0

    .line 1752
    :cond_4
    cmp-long v1, p1, p3

    if-ltz v1, :cond_5

    cmp-long v1, p1, p5

    if-gez v1, :cond_5

    .line 1753
    const/4 v0, 0x1

    goto :goto_0

    .line 1755
    :cond_5
    const/4 v0, 0x2

    goto :goto_0

    .line 1758
    :cond_6
    cmp-long v1, p1, p5

    if-gez v1, :cond_7

    .line 1759
    const/4 v0, 0x1

    goto :goto_0

    .line 1760
    :cond_7
    cmp-long v1, p1, p5

    if-ltz v1, :cond_8

    cmp-long v1, p1, p3

    if-gez v1, :cond_8

    .line 1761
    const/4 v0, 0x2

    goto :goto_0

    .line 1763
    :cond_8
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isOverdue(Landroid/content/Context;J)Z
    .locals 9
    .parameter "context"
    .parameter "lastUpdateTime"

    .prologue
    .line 1870
    const-wide/32 v2, 0x36ee80

    .line 1871
    .local v2, interval:J
    if-eqz p1, :cond_0

    .line 1872
    invoke-static {p1}, Lcom/htc/util/weather/WSPPUtility;->getAutoSyncFrequency(Landroid/content/Context;)J

    move-result-wide v2

    .line 1875
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1876
    .local v0, current_time:J
    sget-boolean v4, Lcom/htc/util/weather/WSPPData;->LOG_FLAG:Z

    if-eqz v4, :cond_1

    const-string v5, "WSPPData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isOverdue() - current_time = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", lastUpdateTime = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", interval = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", current_time - lastUpdateTime = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-long v6, v0, p2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", isOverDue = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    cmp-long v4, v0, p2

    if-ltz v4, :cond_2

    sub-long v7, v0, p2

    cmp-long v4, v7, v2

    if-gez v4, :cond_2

    const-string v4, "false"

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1883
    :cond_1
    cmp-long v4, v0, p2

    if-ltz v4, :cond_3

    sub-long v4, v0, p2

    cmp-long v4, v4, v2

    if-gez v4, :cond_3

    .line 1884
    const/4 v4, 0x0

    .line 1886
    :goto_1
    return v4

    .line 1876
    :cond_2
    const-string v4, "true"

    goto :goto_0

    .line 1886
    :cond_3
    const/4 v4, 0x1

    goto :goto_1
.end method

.method private mileToKilo(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "m"

    .prologue
    .line 1248
    const/4 v1, 0x0

    .line 1251
    .local v1, mi:I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1254
    :goto_0
    int-to-double v2, v1

    const-wide v4, 0x3ff9bfe2a3cea6c2L

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1255
    .local v0, km:Ljava/lang/String;
    return-object v0

    .line 1252
    .end local v0           #km:Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private putExtra(Landroid/os/Bundle;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "res"
    .parameter "isFeel"
    .parameter "isCelsius"
    .parameter "high"
    .parameter "low"
    .parameter "cur"

    .prologue
    .line 1465
    const-string v0, ""

    .line 1466
    .local v0, strLog:Ljava/lang/String;
    if-eqz p3, :cond_2

    .line 1467
    const-string v0, "Celsius, "

    .line 1468
    if-eqz p2, :cond_1

    .line 1469
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "FeelTemp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1470
    const-string v1, "feelTempC"

    invoke-virtual {p1, v1, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1492
    :goto_0
    sget-boolean v1, Lcom/htc/util/weather/WSPPData;->LOG_FLAG:Z

    if-eqz v1, :cond_0

    const-string v1, "WSPPData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "putExtra("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") - (cur, high, low) = ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    :cond_0
    return-void

    .line 1473
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Temp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1474
    const-string v1, "currTempC"

    invoke-virtual {p1, v1, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1475
    const-string v1, "highTempC"

    invoke-virtual {p1, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1476
    const-string v1, "lowTempC"

    invoke-virtual {p1, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1480
    :cond_2
    const-string v0, "Fahrenhei, "

    .line 1481
    if-eqz p2, :cond_3

    .line 1482
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "FeelTemp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1483
    const-string v1, "feelTempF"

    invoke-virtual {p1, v1, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1486
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Temp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1487
    const-string v1, "currTempF"

    invoke-virtual {p1, v1, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1488
    const-string v1, "highTempF"

    invoke-virtual {p1, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1489
    const-string v1, "lowTempF"

    invoke-virtual {p1, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private putTemperature(Ljava/util/ArrayList;Ljava/util/ArrayList;IIZZZLandroid/os/Bundle;)V
    .locals 15
    .parameter
    .parameter
    .parameter "index"
    .parameter "curTemp"
    .parameter "isCur"
    .parameter "isFeel"
    .parameter "isCelsius"
    .parameter "res"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;IIZZZ",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1425
    .local p1, high:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, low:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-direct {p0, v0, v1}, Lcom/htc/util/weather/WSPPData;->getStringValue(Ljava/util/ArrayList;I)Ljava/lang/String;

    move-result-object v13

    .line 1426
    .local v13, strHigh:Ljava/lang/String;
    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {p0, v0, v1}, Lcom/htc/util/weather/WSPPData;->getStringValue(Ljava/util/ArrayList;I)Ljava/lang/String;

    move-result-object v14

    .line 1428
    .local v14, strLow:Ljava/lang/String;
    :try_start_0
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 1429
    .local v11, intHigh:I
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    .line 1436
    .local v12, intLow:I
    if-nez p5, :cond_4

    .line 1437
    add-int v2, v11, v12

    div-int/lit8 v10, v2, 0x2

    .line 1446
    .local v10, intCur:I
    :goto_0
    if-nez p6, :cond_1

    .line 1447
    if-ge v10, v12, :cond_0

    move v12, v10

    .line 1448
    :cond_0
    if-le v10, v11, :cond_1

    move v11, v10

    .line 1450
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v2, p0

    move-object/from16 v3, p8

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-direct/range {v2 .. v8}, Lcom/htc/util/weather/WSPPData;->putExtra(Landroid/os/Bundle;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1451
    .end local v10           #intCur:I
    .end local v11           #intHigh:I
    .end local v12           #intLow:I
    :goto_1
    return-void

    .line 1430
    :catch_0
    move-exception v9

    .line 1431
    .local v9, e:Ljava/lang/Exception;
    sget-boolean v2, Lcom/htc/util/weather/WSPPData;->LOG_FLAG:Z

    if-eqz v2, :cond_2

    const-string v2, "WSPPData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "putTemperture() - Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    :cond_2
    const-string v6, ""

    const-string v7, ""

    if-eqz p5, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_2
    move-object v2, p0

    move-object/from16 v3, p8

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-direct/range {v2 .. v8}, Lcom/htc/util/weather/WSPPData;->putExtra(Landroid/os/Bundle;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v8, ""

    goto :goto_2

    .line 1439
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v11       #intHigh:I
    .restart local v12       #intLow:I
    :cond_4
    move/from16 v10, p4

    .restart local v10       #intCur:I
    goto/16 :goto_0
.end method

.method private static safe_parseInt(Ljava/lang/String;)I
    .locals 5
    .parameter "str"

    .prologue
    .line 1897
    const/4 v1, 0x0

    .line 1898
    .local v1, val:I
    if-nez p0, :cond_0

    .line 1899
    const/4 v2, 0x0

    .line 1905
    :goto_0
    return v2

    .line 1901
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_1
    :goto_1
    move v2, v1

    .line 1905
    goto :goto_0

    .line 1902
    :catch_0
    move-exception v0

    .line 1903
    .local v0, e:Ljava/lang/NumberFormatException;
    sget-boolean v2, Lcom/htc/util/weather/WSPPData;->LOG_FLAG:Z

    if-eqz v2, :cond_1

    const-string v2, "WSPPData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "safe_parseInt() - Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method protected checkMaxAvailableIndex()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2034
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2035
    .local v0, length:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_14

    .line 2037
    iget-object v2, p0, Lcom/htc/util/weather/WSPData;->fstName:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 2038
    iget-object v2, p0, Lcom/htc/util/weather/WSPData;->fstName:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2040
    :cond_0
    iget-object v2, p0, Lcom/htc/util/weather/WSPData;->fstDate:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 2041
    iget-object v2, p0, Lcom/htc/util/weather/WSPData;->fstDate:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2043
    :cond_1
    iget-object v2, p0, Lcom/htc/util/weather/WSPData;->fstConditionId:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 2044
    iget-object v2, p0, Lcom/htc/util/weather/WSPData;->fstConditionId:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2046
    :cond_2
    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->fstNightConditionId:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 2047
    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->fstNightConditionId:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2049
    :cond_3
    iget-object v2, p0, Lcom/htc/util/weather/WSPData;->fstHighTempC:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    .line 2050
    iget-object v2, p0, Lcom/htc/util/weather/WSPData;->fstHighTempC:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2052
    :cond_4
    iget-object v2, p0, Lcom/htc/util/weather/WSPData;->fstHighTempF:Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    .line 2053
    iget-object v2, p0, Lcom/htc/util/weather/WSPData;->fstHighTempF:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2055
    :cond_5
    iget-object v2, p0, Lcom/htc/util/weather/WSPData;->fstLowTempC:Ljava/util/ArrayList;

    if-eqz v2, :cond_6

    .line 2056
    iget-object v2, p0, Lcom/htc/util/weather/WSPData;->fstLowTempC:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2058
    :cond_6
    iget-object v2, p0, Lcom/htc/util/weather/WSPData;->fstLowTempF:Ljava/util/ArrayList;

    if-eqz v2, :cond_7

    .line 2059
    iget-object v2, p0, Lcom/htc/util/weather/WSPData;->fstLowTempF:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2061
    :cond_7
    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->fstNightHighTempC:Ljava/util/ArrayList;

    if-eqz v2, :cond_8

    .line 2062
    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->fstNightHighTempC:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2064
    :cond_8
    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->fstNightHighTempF:Ljava/util/ArrayList;

    if-eqz v2, :cond_9

    .line 2065
    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->fstNightHighTempF:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2067
    :cond_9
    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->fstNightLowTempC:Ljava/util/ArrayList;

    if-eqz v2, :cond_a

    .line 2068
    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->fstNightLowTempC:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2070
    :cond_a
    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->fstNightLowTempF:Ljava/util/ArrayList;

    if-eqz v2, :cond_b

    .line 2071
    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->fstNightLowTempF:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2073
    :cond_b
    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->fstFeelHighTempC:Ljava/util/ArrayList;

    if-eqz v2, :cond_c

    .line 2074
    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->fstFeelHighTempC:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2076
    :cond_c
    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->fstFeelHighTempF:Ljava/util/ArrayList;

    if-eqz v2, :cond_d

    .line 2077
    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->fstFeelHighTempF:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2079
    :cond_d
    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->fstFeelLowTempC:Ljava/util/ArrayList;

    if-eqz v2, :cond_e

    .line 2080
    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->fstFeelLowTempC:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2082
    :cond_e
    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->fstFeelLowTempF:Ljava/util/ArrayList;

    if-eqz v2, :cond_f

    .line 2083
    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->fstFeelLowTempF:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2085
    :cond_f
    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelHighTempC:Ljava/util/ArrayList;

    if-eqz v2, :cond_10

    .line 2086
    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelHighTempC:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2088
    :cond_10
    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelHighTempF:Ljava/util/ArrayList;

    if-eqz v2, :cond_11

    .line 2089
    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelHighTempF:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2091
    :cond_11
    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelLowTempC:Ljava/util/ArrayList;

    if-eqz v2, :cond_12

    .line 2092
    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelLowTempC:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2094
    :cond_12
    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelLowTempF:Ljava/util/ArrayList;

    if-eqz v2, :cond_13

    .line 2095
    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelLowTempF:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2096
    :cond_13
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 2097
    .local v1, size:I
    if-lez v1, :cond_16

    .line 2098
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2099
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gt v3, v2, :cond_15

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    :goto_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/htc/util/weather/WSPPData;->mMaxIndex:I

    .line 2100
    sget-boolean v2, Lcom/htc/util/weather/WSPPData;->LOG_FLAG:Z

    if-eqz v2, :cond_14

    const-string v2, "WSPPData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkMaxAvailableIndex() - mMaxIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/util/weather/WSPPData;->mMaxIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2107
    .end local v1           #size:I
    :cond_14
    :goto_1
    return-void

    .line 2099
    .restart local v1       #size:I
    :cond_15
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    goto :goto_0

    .line 2103
    :cond_16
    sget-boolean v2, Lcom/htc/util/weather/WSPPData;->LOG_FLAG:Z

    if-eqz v2, :cond_17

    const-string v2, "WSPPData"

    const-string v3, "checkMaxAvailableIndex() - NO Available Index"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2104
    :cond_17
    const/4 v2, -0x1

    iput v2, p0, Lcom/htc/util/weather/WSPPData;->mMaxIndex:I

    goto :goto_1
.end method

.method public getCityLatitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->cityLatitude:Ljava/lang/String;

    return-object v0
.end method

.method public getCityLocalTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->cityLocalTime:Ljava/lang/String;

    return-object v0
.end method

.method public getCityLongitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1104
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->cityLongitude:Ljava/lang/String;

    return-object v0
.end method

.method public getCityTimeZone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1112
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->cityTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method public getCityWebURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1120
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->cityWebURL:Ljava/lang/String;

    return-object v0
.end method

.method public getCurFeelTempC()I
    .locals 1

    .prologue
    .line 591
    iget v0, p0, Lcom/htc/util/weather/WSPPData;->curFeelTempC:I

    return v0
.end method

.method public getCurFeelTempF()I
    .locals 1

    .prologue
    .line 607
    iget v0, p0, Lcom/htc/util/weather/WSPPData;->curFeelTempF:I

    return v0
.end method

.method public getCurHumidity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->curHumidity:Ljava/lang/String;

    return-object v0
.end method

.method public getCurVisibility()Ljava/lang/String;
    .locals 1

    .prologue
    .line 689
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->curVisibilityMI:Ljava/lang/String;

    return-object v0
.end method

.method public getCurVisibilityKM()Ljava/lang/String;
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->curVisibilityKM:Ljava/lang/String;

    return-object v0
.end method

.method public getCurWeatherDataInfo(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 14
    .parameter "context"
    .parameter "extras"

    .prologue
    .line 1351
    invoke-direct {p0, p1}, Lcom/htc/util/weather/WSPPData;->getCurrentDataStatus(Landroid/content/Context;)[I

    move-result-object v11

    .line 1352
    .local v11, resTemp:[I
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 1353
    .local v8, res:Landroid/os/Bundle;
    if-eqz v8, :cond_2

    if-eqz v11, :cond_2

    .line 1354
    const/4 v0, 0x0

    aget v0, v11, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    const/4 v5, 0x1

    .line 1355
    .local v5, isCurrent:Z
    :goto_0
    const/4 v0, 0x2

    aget v0, v11, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    const/4 v10, 0x1

    .line 1357
    .local v10, isDay:Z
    :goto_1
    if-eqz v5, :cond_5

    const/4 v0, 0x3

    aget v9, v11, v0

    .line 1358
    .local v9, currID:I
    :goto_2
    const-string v0, "currConditionID"

    invoke-virtual {v8, v0, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1359
    const-string v0, "daylight"

    invoke-virtual {v8, v0, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1361
    sget-boolean v0, Lcom/htc/util/weather/WSPPData;->LOG_FLAG:Z

    if-eqz v0, :cond_0

    const-string v0, "WSPPData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurWeatherDataInfo()[1] - Current_ID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", DayLight_Flag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    :cond_0
    if-eqz v10, :cond_7

    iget-object v1, p0, Lcom/htc/util/weather/WSPData;->fstHighTempC:Ljava/util/ArrayList;

    :goto_3
    if-eqz v10, :cond_8

    iget-object v2, p0, Lcom/htc/util/weather/WSPData;->fstLowTempC:Ljava/util/ArrayList;

    :goto_4
    const/4 v0, 0x1

    aget v3, v11, v0

    iget v4, p0, Lcom/htc/util/weather/WSPData;->curTempC:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/htc/util/weather/WSPPData;->putTemperature(Ljava/util/ArrayList;Ljava/util/ArrayList;IIZZZLandroid/os/Bundle;)V

    .line 1365
    if-eqz v10, :cond_9

    iget-object v1, p0, Lcom/htc/util/weather/WSPData;->fstHighTempF:Ljava/util/ArrayList;

    :goto_5
    if-eqz v10, :cond_a

    iget-object v2, p0, Lcom/htc/util/weather/WSPData;->fstLowTempF:Ljava/util/ArrayList;

    :goto_6
    const/4 v0, 0x1

    aget v3, v11, v0

    iget v4, p0, Lcom/htc/util/weather/WSPData;->curTempF:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/htc/util/weather/WSPPData;->putTemperature(Ljava/util/ArrayList;Ljava/util/ArrayList;IIZZZLandroid/os/Bundle;)V

    .line 1368
    if-eqz v10, :cond_b

    iget-object v1, p0, Lcom/htc/util/weather/WSPPData;->fstFeelHighTempC:Ljava/util/ArrayList;

    :goto_7
    if-eqz v10, :cond_c

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->fstFeelLowTempC:Ljava/util/ArrayList;

    :goto_8
    const/4 v0, 0x1

    aget v3, v11, v0

    iget v4, p0, Lcom/htc/util/weather/WSPPData;->curFeelTempC:I

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/htc/util/weather/WSPPData;->putTemperature(Ljava/util/ArrayList;Ljava/util/ArrayList;IIZZZLandroid/os/Bundle;)V

    .line 1369
    if-eqz v10, :cond_d

    iget-object v1, p0, Lcom/htc/util/weather/WSPPData;->fstFeelHighTempF:Ljava/util/ArrayList;

    :goto_9
    if-eqz v10, :cond_e

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->fstFeelLowTempF:Ljava/util/ArrayList;

    :goto_a
    const/4 v0, 0x1

    aget v3, v11, v0

    iget v4, p0, Lcom/htc/util/weather/WSPPData;->curFeelTempF:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/htc/util/weather/WSPPData;->putTemperature(Ljava/util/ArrayList;Ljava/util/ArrayList;IIZZZLandroid/os/Bundle;)V

    .line 1372
    if-eqz v5, :cond_f

    .line 1373
    const-string v0, "humidity"

    iget-object v1, p0, Lcom/htc/util/weather/WSPPData;->curHumidity:Ljava/lang/String;

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1374
    const-string v0, "windDirection"

    iget-object v1, p0, Lcom/htc/util/weather/WSPPData;->curWinddirection:Ljava/lang/String;

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1375
    const-string v0, "windSpeedMI"

    iget-object v1, p0, Lcom/htc/util/weather/WSPPData;->curWindspeedMI:Ljava/lang/String;

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1376
    const-string v0, "windSpeedKM"

    iget-object v1, p0, Lcom/htc/util/weather/WSPPData;->curWindspeedKM:Ljava/lang/String;

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1377
    const-string v0, "visibilityMI"

    iget-object v1, p0, Lcom/htc/util/weather/WSPPData;->curVisibilityMI:Ljava/lang/String;

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1378
    const-string v0, "visibilityKM"

    iget-object v1, p0, Lcom/htc/util/weather/WSPPData;->curVisibilityKM:Ljava/lang/String;

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1380
    sget-boolean v0, Lcom/htc/util/weather/WSPPData;->LOG_FLAG:Z

    if-eqz v0, :cond_1

    const-string v0, "WSPPData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurWeatherDataInfo()[2] - ( curHumidity, curWinddirection, curWindspeedMI, curWindspeedKM, curVisibilityMI, curVisibilityKM ) = ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->curHumidity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->curWinddirection:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->curWindspeedMI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->curWindspeedKM:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->curVisibilityMI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->curVisibilityKM:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    :cond_1
    :goto_b
    const-string v12, ""

    .line 1399
    .local v12, sunrise:Ljava/lang/String;
    const-string v13, ""

    .line 1400
    .local v13, sunset:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstSunrise:Ljava/util/ArrayList;

    const/4 v1, 0x1

    aget v1, v11, v1

    invoke-direct {p0, v0, v1}, Lcom/htc/util/weather/WSPPData;->getStringValue(Ljava/util/ArrayList;I)Ljava/lang/String;

    move-result-object v12

    .line 1401
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstSunset:Ljava/util/ArrayList;

    const/4 v1, 0x1

    aget v1, v11, v1

    invoke-direct {p0, v0, v1}, Lcom/htc/util/weather/WSPPData;->getStringValue(Ljava/util/ArrayList;I)Ljava/lang/String;

    move-result-object v13

    .line 1402
    const-string v0, "sunrise"

    invoke-virtual {v8, v0, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1403
    const-string v0, "sunset"

    invoke-virtual {v8, v0, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1405
    sget-boolean v0, Lcom/htc/util/weather/WSPPData;->LOG_FLAG:Z

    if-eqz v0, :cond_2

    const-string v0, "WSPPData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurWeatherDataInfo()[3] - (Sunrise, Sunset) = ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    .end local v5           #isCurrent:Z
    .end local v9           #currID:I
    .end local v10           #isDay:Z
    .end local v12           #sunrise:Ljava/lang/String;
    .end local v13           #sunset:Ljava/lang/String;
    :cond_2
    return-object v8

    .line 1354
    :cond_3
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 1355
    .restart local v5       #isCurrent:Z
    :cond_4
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 1357
    .restart local v10       #isDay:Z
    :cond_5
    if-eqz v10, :cond_6

    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->fstConditionId:Ljava/util/ArrayList;

    :goto_c
    const/4 v1, 0x1

    aget v1, v11, v1

    invoke-direct {p0, v0, v1}, Lcom/htc/util/weather/WSPPData;->getStringValue(Ljava/util/ArrayList;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/util/weather/WSPPData;->safe_parseInt(Ljava/lang/String;)I

    move-result v9

    goto/16 :goto_2

    :cond_6
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightConditionId:Ljava/util/ArrayList;

    goto :goto_c

    .line 1364
    .restart local v9       #currID:I
    :cond_7
    iget-object v1, p0, Lcom/htc/util/weather/WSPPData;->fstNightHighTempC:Ljava/util/ArrayList;

    goto/16 :goto_3

    :cond_8
    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->fstNightLowTempC:Ljava/util/ArrayList;

    goto/16 :goto_4

    .line 1365
    :cond_9
    iget-object v1, p0, Lcom/htc/util/weather/WSPPData;->fstNightHighTempF:Ljava/util/ArrayList;

    goto/16 :goto_5

    :cond_a
    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->fstNightLowTempF:Ljava/util/ArrayList;

    goto/16 :goto_6

    .line 1368
    :cond_b
    iget-object v1, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelHighTempC:Ljava/util/ArrayList;

    goto/16 :goto_7

    :cond_c
    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelLowTempC:Ljava/util/ArrayList;

    goto/16 :goto_8

    .line 1369
    :cond_d
    iget-object v1, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelHighTempF:Ljava/util/ArrayList;

    goto/16 :goto_9

    :cond_e
    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelLowTempF:Ljava/util/ArrayList;

    goto/16 :goto_a

    .line 1386
    :cond_f
    const-string v0, "humidity"

    const-string v1, ""

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1387
    const-string v0, "windDirection"

    const-string v1, ""

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1388
    const-string v0, "windSpeedMI"

    const-string v1, ""

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1389
    const-string v0, "windSpeedKM"

    const-string v1, ""

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1390
    const-string v0, "visibilityMI"

    const-string v1, ""

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1391
    const-string v0, "visibilityKM"

    const-string v1, ""

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1393
    sget-boolean v0, Lcom/htc/util/weather/WSPPData;->LOG_FLAG:Z

    if-eqz v0, :cond_1

    const-string v0, "WSPPData"

    const-string v1, "getCurWeatherDataInfo()[2] - ( curHumidity, curWinddirection, curWindspeedMI, curWindspeedKM, curVisibilityMI, curVisibilityKM ) = ( , , , , , )"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b
.end method

.method public getCurWinddirection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->curWinddirection:Ljava/lang/String;

    return-object v0
.end method

.method public getCurWindspeed()Ljava/lang/String;
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->curWindspeedMI:Ljava/lang/String;

    return-object v0
.end method

.method public getCurWindspeedKM()Ljava/lang/String;
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->curWindspeedKM:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentSetTimezone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1136
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->currentSetTimezone:Ljava/lang/String;

    return-object v0
.end method

.method public getDayLightFlag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->dayLightFlag:Ljava/lang/String;

    return-object v0
.end method

.method public getFstFeelHighTempC()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 753
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstFeelHighTempC:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFstFeelHighTempF()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 769
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstFeelHighTempF:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFstFeelLowTempC()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 785
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstFeelLowTempC:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFstFeelLowTempF()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 801
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstFeelLowTempF:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFstNightConditionId()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 737
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightConditionId:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFstNightFeelHighTempC()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 817
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelHighTempC:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFstNightFeelHighTempF()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 833
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelHighTempF:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFstNightFeelLowTempC()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 849
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelLowTempC:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFstNightFeelLowTempF()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 865
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelLowTempF:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFstNightHighTempC()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 881
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightHighTempC:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFstNightHighTempF()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 897
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightHighTempF:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFstNightLowTempC()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 913
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightLowTempC:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFstNightLowTempF()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 929
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightLowTempF:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFstNightPrecip()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 961
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightPrecip:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFstPrecip()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 945
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstPrecip:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFstSunrise()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 705
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstSunrise:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFstSunset()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 721
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstSunset:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFstWeatherDataInfo(Landroid/content/Context;I)Ljava/util/ArrayList;
    .locals 11
    .parameter "context"
    .parameter "days"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, -0x1

    .line 2116
    sget-boolean v7, Lcom/htc/util/weather/WSPPData;->LOG_FLAG:Z

    if-eqz v7, :cond_0

    const-string v8, "WSPPData"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getFstWeatherDataInfo() - Intput days: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "Available days: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v7, p0, Lcom/htc/util/weather/WSPPData;->mMaxIndex:I

    if-ge p2, v7, :cond_4

    if-eq p2, v10, :cond_4

    move v7, p2

    :goto_0
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2119
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/util/weather/WSPPData;->getCurrentDataStatus(Landroid/content/Context;)[I

    move-result-object v0

    .line 2122
    .local v0, CurrentDataStatus:[I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2124
    .local v1, FstWeatherData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    if-eqz v0, :cond_3

    .line 2126
    const/4 v7, 0x1

    aget v4, v0, v7

    .line 2127
    .local v4, index:I
    iget v7, p0, Lcom/htc/util/weather/WSPPData;->mMaxIndex:I

    if-lez v7, :cond_3

    .line 2128
    move v5, p2

    .line 2129
    .local v5, requestDays:I
    if-ne p2, v10, :cond_1

    .line 2130
    iget v5, p0, Lcom/htc/util/weather/WSPPData;->mMaxIndex:I

    .line 2131
    sget-boolean v7, Lcom/htc/util/weather/WSPPData;->LOG_FLAG:Z

    if-eqz v7, :cond_1

    const-string v7, "WSPPData"

    const-string v8, "Request all available forecast days"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2134
    :cond_1
    const/4 v3, -0x1

    .line 2135
    .local v3, indAfterShift:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v5, :cond_3

    .line 2136
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 2138
    .local v6, weatherData:Landroid/os/Bundle;
    add-int v3, v4, v2

    .line 2139
    iget v7, p0, Lcom/htc/util/weather/WSPPData;->mMaxIndex:I

    add-int/lit8 v7, v7, -0x1

    if-gt v3, v7, :cond_2

    .line 2141
    const-string v8, "fstDate"

    iget-object v7, p0, Lcom/htc/util/weather/WSPData;->fstDate:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2143
    const-string v8, "fstName"

    iget-object v7, p0, Lcom/htc/util/weather/WSPData;->fstName:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2145
    const-string v8, "fstCondId"

    iget-object v7, p0, Lcom/htc/util/weather/WSPData;->fstConditionId:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lcom/htc/util/weather/WSPPData;->safe_parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2147
    const-string v8, "highTempC"

    iget-object v7, p0, Lcom/htc/util/weather/WSPData;->fstHighTempC:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2148
    const-string v8, "highTempF"

    iget-object v7, p0, Lcom/htc/util/weather/WSPData;->fstHighTempF:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2150
    const-string v8, "lowTempC"

    iget-object v7, p0, Lcom/htc/util/weather/WSPPData;->fstNightLowTempC:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2151
    const-string v8, "lowTempF"

    iget-object v7, p0, Lcom/htc/util/weather/WSPPData;->fstNightLowTempF:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2154
    const-string v8, "fstnightCondId"

    iget-object v7, p0, Lcom/htc/util/weather/WSPPData;->fstNightConditionId:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lcom/htc/util/weather/WSPPData;->safe_parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2156
    const-string v8, "nighthighTempC"

    iget-object v7, p0, Lcom/htc/util/weather/WSPPData;->fstNightHighTempC:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2157
    const-string v8, "nighthighTempF"

    iget-object v7, p0, Lcom/htc/util/weather/WSPPData;->fstNightHighTempF:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2159
    const-string v8, "nightlowTempC"

    iget-object v7, p0, Lcom/htc/util/weather/WSPPData;->fstNightLowTempC:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2160
    const-string v8, "nightlowTempF"

    iget-object v7, p0, Lcom/htc/util/weather/WSPPData;->fstNightLowTempF:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2163
    :cond_2
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2165
    iget v7, p0, Lcom/htc/util/weather/WSPPData;->mMaxIndex:I

    add-int/lit8 v7, v7, -0x1

    if-ne v3, v7, :cond_5

    .line 2170
    .end local v2           #i:I
    .end local v3           #indAfterShift:I
    .end local v4           #index:I
    .end local v5           #requestDays:I
    .end local v6           #weatherData:Landroid/os/Bundle;
    :cond_3
    return-object v1

    .line 2116
    .end local v0           #CurrentDataStatus:[I
    .end local v1           #FstWeatherData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :cond_4
    iget v7, p0, Lcom/htc/util/weather/WSPPData;->mMaxIndex:I

    goto/16 :goto_0

    .line 2135
    .restart local v0       #CurrentDataStatus:[I
    .restart local v1       #FstWeatherData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .restart local v2       #i:I
    .restart local v3       #indAfterShift:I
    .restart local v4       #index:I
    .restart local v5       #requestDays:I
    .restart local v6       #weatherData:Landroid/os/Bundle;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1
.end method

.method public getHourConditionId()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 993
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourConditionId:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getHourFeelTempC()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourFeelTempC:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getHourFeelTempF()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourFeelTempF:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getHourName()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 977
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourName:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getHourPrecip()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourPrecip:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getHourTempC()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourTempC:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getHourTempF()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1025
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourTempF:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTimeZoneAbbreviation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1128
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->timeZoneAbbreviation:Ljava/lang/String;

    return-object v0
.end method

.method public setCityLatitude(Ljava/lang/String;)V
    .locals 0
    .parameter "cityLatitude"

    .prologue
    .line 1151
    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->cityLatitude:Ljava/lang/String;

    .line 1152
    return-void
.end method

.method public setCityLocalTime(Ljava/lang/String;)V
    .locals 0
    .parameter "cityLocalTime"

    .prologue
    .line 1143
    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->cityLocalTime:Ljava/lang/String;

    .line 1144
    return-void
.end method

.method public setCityLongitude(Ljava/lang/String;)V
    .locals 0
    .parameter "cityLongitude"

    .prologue
    .line 1159
    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->cityLongitude:Ljava/lang/String;

    .line 1160
    return-void
.end method

.method public setCityTimeZone(Ljava/lang/String;)V
    .locals 0
    .parameter "cityTimeZone"

    .prologue
    .line 1167
    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->cityTimeZone:Ljava/lang/String;

    .line 1168
    return-void
.end method

.method public setCityWebURL(Ljava/lang/String;)V
    .locals 0
    .parameter "cityWebURL"

    .prologue
    .line 1175
    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->cityWebURL:Ljava/lang/String;

    .line 1176
    return-void
.end method

.method public setCurFeelTempC(I)V
    .locals 0
    .parameter "curFeelTempC"

    .prologue
    .line 599
    iput p1, p0, Lcom/htc/util/weather/WSPPData;->curFeelTempC:I

    .line 600
    return-void
.end method

.method public setCurFeelTempF(I)V
    .locals 0
    .parameter "curFeelTempF"

    .prologue
    .line 615
    iput p1, p0, Lcom/htc/util/weather/WSPPData;->curFeelTempF:I

    .line 616
    return-void
.end method

.method public setCurHumidity(Ljava/lang/String;)V
    .locals 0
    .parameter "curHumidity"

    .prologue
    .line 631
    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->curHumidity:Ljava/lang/String;

    .line 632
    return-void
.end method

.method public setCurVisibility(Ljava/lang/String;)V
    .locals 1
    .parameter "curVisibilityMI"

    .prologue
    .line 664
    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->curVisibilityMI:Ljava/lang/String;

    .line 665
    invoke-direct {p0, p1}, Lcom/htc/util/weather/WSPPData;->mileToKilo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->curVisibilityKM:Ljava/lang/String;

    .line 666
    return-void
.end method

.method public setCurWinddirection(Ljava/lang/String;)V
    .locals 0
    .parameter "curWinddirection"

    .prologue
    .line 647
    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->curWinddirection:Ljava/lang/String;

    .line 648
    return-void
.end method

.method public setCurWindspeed(Ljava/lang/String;)V
    .locals 1
    .parameter "curWindspeedMI"

    .prologue
    .line 655
    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->curWindspeedMI:Ljava/lang/String;

    .line 656
    invoke-direct {p0, p1}, Lcom/htc/util/weather/WSPPData;->mileToKilo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->curWindspeedKM:Ljava/lang/String;

    .line 657
    return-void
.end method

.method public setCurrentSetTimezone(Ljava/lang/String;)V
    .locals 0
    .parameter "currentSetTimezone"

    .prologue
    .line 1191
    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->currentSetTimezone:Ljava/lang/String;

    .line 1192
    return-void
.end method

.method public setDayLightFlag(Ljava/lang/String;)V
    .locals 0
    .parameter "dayLightFlag"

    .prologue
    .line 583
    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->dayLightFlag:Ljava/lang/String;

    .line 584
    return-void
.end method

.method public setFstFeelHighTempC(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 761
    .local p1, fstFeelHighTempC:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->fstFeelHighTempC:Ljava/util/ArrayList;

    .line 762
    return-void
.end method

.method public setFstFeelHighTempF(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 777
    .local p1, fstFeelHighTempF:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->fstFeelHighTempF:Ljava/util/ArrayList;

    .line 778
    return-void
.end method

.method public setFstFeelLowTempC(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 793
    .local p1, fstFeelLowTempC:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->fstFeelLowTempC:Ljava/util/ArrayList;

    .line 794
    return-void
.end method

.method public setFstFeelLowTempF(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 809
    .local p1, fstFeelLowTempF:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->fstFeelLowTempF:Ljava/util/ArrayList;

    .line 810
    return-void
.end method

.method public setFstNightConditionId(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 745
    .local p1, fstNightConditionId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->fstNightConditionId:Ljava/util/ArrayList;

    .line 746
    return-void
.end method

.method public setFstNightFeelHighTempC(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 825
    .local p1, fstNightFeelHighTempC:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelHighTempC:Ljava/util/ArrayList;

    .line 826
    return-void
.end method

.method public setFstNightFeelHighTempF(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 841
    .local p1, fstNightFeelHighTempF:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelHighTempF:Ljava/util/ArrayList;

    .line 842
    return-void
.end method

.method public setFstNightFeelLowTempC(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 857
    .local p1, fstNightFeelLowTempC:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelLowTempC:Ljava/util/ArrayList;

    .line 858
    return-void
.end method

.method public setFstNightFeelLowTempF(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 873
    .local p1, fstNightFeelLowTempF:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelLowTempF:Ljava/util/ArrayList;

    .line 874
    return-void
.end method

.method public setFstNightHighTempC(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 889
    .local p1, fstNightHighTempC:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->fstNightHighTempC:Ljava/util/ArrayList;

    .line 890
    return-void
.end method

.method public setFstNightHighTempF(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 905
    .local p1, fstNightHighTempF:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->fstNightHighTempF:Ljava/util/ArrayList;

    .line 906
    return-void
.end method

.method public setFstNightLowTempC(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 921
    .local p1, fstNightLowTempC:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->fstNightLowTempC:Ljava/util/ArrayList;

    .line 922
    return-void
.end method

.method public setFstNightLowTempF(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 937
    .local p1, fstNightLowTempF:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->fstNightLowTempF:Ljava/util/ArrayList;

    .line 938
    return-void
.end method

.method public setFstNightPrecip(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 969
    .local p1, fstNightPrecip:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->fstNightPrecip:Ljava/util/ArrayList;

    .line 970
    return-void
.end method

.method public setFstPrecip(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 953
    .local p1, fstPrecip:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->fstPrecip:Ljava/util/ArrayList;

    .line 954
    return-void
.end method

.method public setFstSunrise(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 713
    .local p1, fstSunrise:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->fstSunrise:Ljava/util/ArrayList;

    .line 714
    return-void
.end method

.method public setFstSunset(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 729
    .local p1, fstSunset:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->fstSunset:Ljava/util/ArrayList;

    .line 730
    return-void
.end method

.method public setHourConditionId(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1001
    .local p1, hourConditionId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->hourConditionId:Ljava/util/ArrayList;

    .line 1002
    return-void
.end method

.method public setHourFeelTempC(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1049
    .local p1, hourFeelTempC:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->hourFeelTempC:Ljava/util/ArrayList;

    .line 1050
    return-void
.end method

.method public setHourFeelTempF(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1065
    .local p1, hourFeelTempF:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->hourFeelTempF:Ljava/util/ArrayList;

    .line 1066
    return-void
.end method

.method public setHourName(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 985
    .local p1, hourName:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->hourName:Ljava/util/ArrayList;

    .line 986
    return-void
.end method

.method public setHourPrecip(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1080
    .local p1, hourPrecip:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->hourPrecip:Ljava/util/ArrayList;

    .line 1081
    return-void
.end method

.method public setHourTempC(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1017
    .local p1, hourTempC:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->hourTempC:Ljava/util/ArrayList;

    .line 1018
    return-void
.end method

.method public setHourTempF(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1033
    .local p1, hourTempF:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->hourTempF:Ljava/util/ArrayList;

    .line 1034
    return-void
.end method

.method public setTimeZoneAbbreviation(Ljava/lang/String;)V
    .locals 0
    .parameter "timeZoneAbbreviation"

    .prologue
    .line 1183
    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->timeZoneAbbreviation:Ljava/lang/String;

    .line 1184
    return-void
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 1197
    invoke-super {p0}, Lcom/htc/util/weather/WSPData;->toContentValues()Landroid/content/ContentValues;

    move-result-object v0

    .line 1199
    .local v0, values:Landroid/content/ContentValues;
    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->cityLocalTime:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->cityLocalTime:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->cityLatitude:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->cityLatitude:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->cityLongitude:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->cityLongitude:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1202
    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->cityTimeZone:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->cityTimeZone:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->cityWebURL:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->cityWebURL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1204
    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->dayLightFlag:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->dayLightFlag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->curFeelTempC:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/htc/util/weather/WSPPData;->curFeelTempC:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1206
    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->curFeelTempF:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/htc/util/weather/WSPPData;->curFeelTempF:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1207
    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->curHumidity:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->curHumidity:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->curWinddirection:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->curWinddirection:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1209
    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->curWindspeed:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->curWindspeedMI:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->curVisibility:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->curVisibilityMI:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstSunrise:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->fstSunrise:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/htc/util/weather/WSPPData;->arrayListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstSunset:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->fstSunset:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/htc/util/weather/WSPPData;->arrayListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1213
    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstFeelHighTempC:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->fstFeelHighTempC:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/htc/util/weather/WSPPData;->arrayListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstFeelHighTempF:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->fstFeelHighTempF:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/htc/util/weather/WSPPData;->arrayListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstFeelLowTempC:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->fstFeelLowTempC:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/htc/util/weather/WSPPData;->arrayListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstFeelLowTempF:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->fstFeelLowTempF:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/htc/util/weather/WSPPData;->arrayListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstNightFeelHighTempC:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelHighTempC:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/htc/util/weather/WSPPData;->arrayListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstNightFeelHighTempF:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelHighTempF:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/htc/util/weather/WSPPData;->arrayListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1219
    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstNightFeelLowTempC:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelLowTempC:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/htc/util/weather/WSPPData;->arrayListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1220
    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstNightFeelLowTempF:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelLowTempF:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/htc/util/weather/WSPPData;->arrayListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstNightConditionId:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->fstNightConditionId:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/htc/util/weather/WSPPData;->arrayListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1222
    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstNightHighTempC:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->fstNightHighTempC:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/htc/util/weather/WSPPData;->arrayListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1223
    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstNightHighTempF:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->fstNightHighTempF:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/htc/util/weather/WSPPData;->arrayListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstNightLowTempC:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->fstNightLowTempC:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/htc/util/weather/WSPPData;->arrayListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstNightLowTempF:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->fstNightLowTempF:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/htc/util/weather/WSPPData;->arrayListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1226
    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstPrecip:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->fstPrecip:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/htc/util/weather/WSPPData;->arrayListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1227
    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstNightPrecip:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->fstNightPrecip:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/htc/util/weather/WSPPData;->arrayListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1228
    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->hourName:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->hourName:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/htc/util/weather/WSPPData;->arrayListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->hourConditionId:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->hourConditionId:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/htc/util/weather/WSPPData;->arrayListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1230
    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->hourTempC:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->hourTempC:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/htc/util/weather/WSPPData;->arrayListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->hourTempF:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->hourTempF:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/htc/util/weather/WSPPData;->arrayListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1232
    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->hourFeelTempC:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->hourFeelTempC:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/htc/util/weather/WSPPData;->arrayListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->hourFeelTempF:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->hourFeelTempF:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/htc/util/weather/WSPPData;->arrayListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->hourPrecip:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->hourPrecip:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/htc/util/weather/WSPPData;->arrayListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1236
    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->timeZoneAbbreviation:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->timeZoneAbbreviation:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->currentSetTimezone:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->currentSetTimezone:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    return-object v0
.end method

.method public toDebugInfo()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1947
    sget-boolean v2, Lcom/htc/util/weather/WSPPData;->LOG_FLAG:Z

    if-eqz v2, :cond_0

    .line 1949
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1950
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v2, "\n-------------------------------------------------------\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/util/weather/WSPData;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1958
    const-string v2, ", update: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    iget-wide v4, p0, Lcom/htc/util/weather/WSPData;->lastUpdate:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n-------------------------------------------------------\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", curConditionId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/util/weather/WSPData;->curConditionId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", curTempC: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/util/weather/WSPData;->curTempC:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", curTempF: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/util/weather/WSPData;->curTempF:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", curFeelTempC: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/util/weather/WSPPData;->curFeelTempC:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", curFeelTempF: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/util/weather/WSPPData;->curFeelTempF:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", curHumidity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/util/weather/WSPPData;->curHumidity:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", curWinddirection: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/util/weather/WSPPData;->curWinddirection:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", curWindspeedMI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/util/weather/WSPPData;->curWindspeedMI:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", curWindspeedKM: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/util/weather/WSPPData;->curWindspeedKM:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", curVisibilityMI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/util/weather/WSPPData;->curVisibilityMI:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", curVisibilityKM: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/util/weather/WSPPData;->curVisibilityKM:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n-------------------------------------------------------\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", fstName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/util/weather/WSPData;->fstName:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", fstDate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/util/weather/WSPData;->fstDate:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", fstConditionId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/util/weather/WSPData;->fstConditionId:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", fstNightConditionId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/util/weather/WSPPData;->fstNightConditionId:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n-------------------------------------------------------\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", fstHighTempC: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/util/weather/WSPData;->fstHighTempC:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", fstHighTempF: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/util/weather/WSPData;->fstHighTempF:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", fstLowTempC: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/util/weather/WSPData;->fstLowTempC:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", fstLowTempF: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/util/weather/WSPData;->fstLowTempF:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", fstNightHighTempC: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/util/weather/WSPPData;->fstNightHighTempC:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", fstNightHighTempF: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/util/weather/WSPPData;->fstNightHighTempF:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", fstNightLowTempC: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/util/weather/WSPPData;->fstNightLowTempC:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", fstNightLowTempF: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/util/weather/WSPPData;->fstNightLowTempF:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n-------------------------------------------------------\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", fstFeelHighTempC: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/util/weather/WSPPData;->fstFeelHighTempC:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", fstFeelHighTempF: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/util/weather/WSPPData;->fstFeelHighTempF:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", fstFeelLowTempC: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/util/weather/WSPPData;->fstFeelLowTempC:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", fstFeelLowTempF: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/util/weather/WSPPData;->fstFeelLowTempF:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", fstNightFeelHighTempC: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelHighTempC:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", fstNightFeelHighTempF: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelHighTempF:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", fstNightFeelLowTempC: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelLowTempC:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", fstNightFeelLowTempF: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelLowTempF:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n-------------------------------------------------------\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", fstSunrise: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/util/weather/WSPPData;->fstSunrise:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", fstSunset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/util/weather/WSPPData;->fstSunset:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n-------------------------------------------------------\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2011
    const-string v2, ", currentSetTimezone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/util/weather/WSPPData;->currentSetTimezone:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mMaxIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/util/weather/WSPPData;->mMaxIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n-------------------------------------------------------\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2015
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2022
    .end local v1           #sb:Ljava/lang/StringBuilder;
    :goto_0
    return-object v2

    .line 2017
    :catch_0
    move-exception v0

    .line 2018
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2019
    const-string v2, "Exception is caught. (can\'t generate debug info)[WSPPData]"

    goto :goto_0

    .line 2022
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method public toWSPDATA()Lcom/htc/util/weather/WSPData;
    .locals 3

    .prologue
    .line 456
    new-instance v0, Lcom/htc/util/weather/WSPData;

    invoke-direct {v0}, Lcom/htc/util/weather/WSPData;-><init>()V

    .line 457
    .local v0, data:Lcom/htc/util/weather/WSPData;
    iget v1, p0, Lcom/htc/util/weather/WSPData;->type:I

    iput v1, v0, Lcom/htc/util/weather/WSPData;->type:I

    .line 458
    iget-object v1, p0, Lcom/htc/util/weather/WSPData;->param1:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/util/weather/WSPData;->param1:Ljava/lang/String;

    .line 459
    iget-object v1, p0, Lcom/htc/util/weather/WSPData;->param2:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/util/weather/WSPData;->param2:Ljava/lang/String;

    .line 460
    iget-wide v1, p0, Lcom/htc/util/weather/WSPData;->lastUpdate:J

    iput-wide v1, v0, Lcom/htc/util/weather/WSPData;->lastUpdate:J

    .line 461
    iget v1, p0, Lcom/htc/util/weather/WSPData;->curTempC:I

    iput v1, v0, Lcom/htc/util/weather/WSPData;->curTempC:I

    .line 462
    iget v1, p0, Lcom/htc/util/weather/WSPData;->curTempF:I

    iput v1, v0, Lcom/htc/util/weather/WSPData;->curTempF:I

    .line 463
    iget-object v1, p0, Lcom/htc/util/weather/WSPData;->curConditionId:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/util/weather/WSPData;->curConditionId:Ljava/lang/String;

    .line 464
    iget-object v1, p0, Lcom/htc/util/weather/WSPData;->fstName:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/htc/util/weather/WSPData;->fstName:Ljava/util/ArrayList;

    .line 465
    iget-object v1, p0, Lcom/htc/util/weather/WSPData;->fstDate:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/htc/util/weather/WSPData;->fstDate:Ljava/util/ArrayList;

    .line 466
    iget-object v1, p0, Lcom/htc/util/weather/WSPData;->fstConditionId:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/htc/util/weather/WSPData;->fstConditionId:Ljava/util/ArrayList;

    .line 467
    iget-object v1, p0, Lcom/htc/util/weather/WSPData;->fstHighTempC:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/htc/util/weather/WSPData;->fstHighTempC:Ljava/util/ArrayList;

    .line 468
    iget-object v1, p0, Lcom/htc/util/weather/WSPData;->fstHighTempF:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/htc/util/weather/WSPData;->fstHighTempF:Ljava/util/ArrayList;

    .line 469
    iget-object v1, p0, Lcom/htc/util/weather/WSPData;->fstLowTempC:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/htc/util/weather/WSPData;->fstLowTempC:Ljava/util/ArrayList;

    .line 470
    iget-object v1, p0, Lcom/htc/util/weather/WSPData;->fstLowTempF:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/htc/util/weather/WSPData;->fstLowTempF:Ljava/util/ArrayList;

    .line 471
    iget-object v1, p0, Lcom/htc/util/weather/WSPData;->curLocLat:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/util/weather/WSPData;->curLocLat:Ljava/lang/String;

    .line 472
    iget-object v1, p0, Lcom/htc/util/weather/WSPData;->curLocLng:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/util/weather/WSPData;->curLocLng:Ljava/lang/String;

    .line 473
    iget-object v1, p0, Lcom/htc/util/weather/WSPData;->curLocLatTrim:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/util/weather/WSPData;->curLocLatTrim:Ljava/lang/String;

    .line 474
    iget-object v1, p0, Lcom/htc/util/weather/WSPData;->curLocLngTrim:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/util/weather/WSPData;->curLocLngTrim:Ljava/lang/String;

    .line 475
    iget-object v1, p0, Lcom/htc/util/weather/WSPData;->curLocName:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/util/weather/WSPData;->curLocName:Ljava/lang/String;

    .line 476
    iget-object v1, p0, Lcom/htc/util/weather/WSPData;->curLocState:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/util/weather/WSPData;->curLocState:Ljava/lang/String;

    .line 477
    iget-object v1, p0, Lcom/htc/util/weather/WSPData;->curLocCountry:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/util/weather/WSPData;->curLocCountry:Ljava/lang/String;

    .line 478
    iget-object v1, p0, Lcom/htc/util/weather/WSPData;->curLocTimezoneId:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/util/weather/WSPData;->curLocTimezoneId:Ljava/lang/String;

    .line 480
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 504
    iget v0, p0, Lcom/htc/util/weather/WSPData;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 505
    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->param1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 506
    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->param2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 507
    iget-wide v0, p0, Lcom/htc/util/weather/WSPData;->lastUpdate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 508
    iget v0, p0, Lcom/htc/util/weather/WSPData;->curTempC:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 509
    iget v0, p0, Lcom/htc/util/weather/WSPData;->curTempF:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 510
    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->curConditionId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 511
    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->fstName:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 512
    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->fstDate:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 513
    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->fstConditionId:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 514
    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->fstHighTempC:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 515
    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->fstHighTempF:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 516
    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->fstLowTempC:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 517
    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->fstLowTempF:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 518
    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocLat:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 519
    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocLng:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 520
    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocLatTrim:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 521
    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocLngTrim:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 522
    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 523
    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocState:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 524
    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocCountry:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 525
    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocTimezoneId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 527
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->cityLocalTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 528
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->cityLatitude:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 529
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->cityLongitude:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 530
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->cityTimeZone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 531
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->cityWebURL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 532
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->dayLightFlag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 533
    iget v0, p0, Lcom/htc/util/weather/WSPPData;->curFeelTempC:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 534
    iget v0, p0, Lcom/htc/util/weather/WSPPData;->curFeelTempF:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 535
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->curHumidity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 536
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->curWinddirection:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 537
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->curWindspeedMI:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 538
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->curVisibilityMI:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 539
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->curWindspeedKM:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 540
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->curVisibilityKM:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 541
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstSunrise:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 542
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstSunset:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 543
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstFeelHighTempC:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 544
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstFeelHighTempF:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 545
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstFeelLowTempC:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 546
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstFeelLowTempF:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 547
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelHighTempC:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 548
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelHighTempF:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 549
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelLowTempC:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 550
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelLowTempF:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 551
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightConditionId:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 552
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightHighTempC:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 553
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightHighTempF:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 554
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightLowTempC:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 555
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightLowTempF:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 556
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstPrecip:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 557
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightPrecip:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 558
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourName:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 559
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourConditionId:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 560
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourTempC:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 561
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourTempF:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 562
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourFeelTempC:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 563
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourFeelTempF:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 564
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourPrecip:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 566
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->timeZoneAbbreviation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 567
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->currentSetTimezone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 568
    return-void
.end method
