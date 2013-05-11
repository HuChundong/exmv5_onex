.class public Lcom/htc/util/calendar/holidays/LunarUtils;
.super Ljava/lang/Object;
.source "LunarUtils.java"


# static fields
.field private static final BASE_YEAR:I = 0x76c

.field private static final DATE_MAX_BOUND_OBJ:Ljava/util/Calendar; = null

.field private static final DATE_MIN_BOUND_OBJ:Ljava/util/Calendar; = null

.field private static final GANZHI_BASE_YEAR:I = 0x748

.field public static final KEY_LUNAR_DAY:Ljava/lang/String; = "LunarDay"

.field public static final KEY_LUNAR_HOLIDAY:Ljava/lang/String; = "LunarHoliday"

.field public static final KEY_SOLAR_HOLIDAY:Ljava/lang/String; = "SolarHoliday"

.field public static final KEY_SOLAR_TERM:Ljava/lang/String; = "SolarTerm"

.field public static final KEY_SPECIAL_HOLIDAY:Ljava/lang/String; = "SpecialHoliday"

.field private static final LOG_TAG:Ljava/lang/String; = "CnDate"

.field private static final LUNARDATE:I = -0x3

.field private static final LUNARMONTH:I = -0x2

.field private static final LUNARYEAR:I = -0x1

.field private static LunarHolidays:[Ljava/lang/String; = null

.field private static LunarHolidays_date:[Ljava/lang/String; = null

.field private static final MAX_YEAR:I = 0x833

.field private static final MILLISECS_PER_DAY:J = 0x5265c00L

.field private static final MIN_YEAR:I = 0x76c

.field private static SolarHolidays:[Ljava/lang/String;

.field private static SolarHolidays_date:[Ljava/lang/String;

.field private static final exception:[[I

.field private static final mBaseDate:Ljava/util/GregorianCalendar;

.field private static final mCnBaseDateOffsets:[I

.field private static mCnDays:[Ljava/lang/String;

.field private static mCnDaysSmall:[Ljava/lang/String;

.field private static mCnGans:[Ljava/lang/String;

.field private static mCnMonths:[Ljava/lang/String;

.field private static final mCnYearCodes:[I

.field private static mCnZhis:[Ljava/lang/String;

.field private static mCnZodiacs:[Ljava/lang/String;

.field private static final mErrArray:[Ljava/lang/String;

.field private static mLunarHolidays:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mSolarDaysInMonth:[I

.field private static mSolarHolidays:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mSolarTerms:[Ljava/lang/String;

.field private static mSpecailHoliday:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mYear:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static singleLunar:Lcom/htc/util/calendar/holidays/LunarUtils;


# instance fields
.field private mCurrentDate:Ljava/util/GregorianCalendar;

.field private mCurrentDateOffset:J

.field private mHolidays:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLeapTitle:Ljava/lang/String;

.field private mLunarDate:I

.field private mLunarDaysInMonth:[I

.field private mLunarLeapMonth:Z

.field private mLunarMonth:I

.field private mLunarSpecialDay:Z

.field private mLunarYear:I

.field private mLunarYearCache:I

.field private mSolarTermsThisYear:[J

.field private mYearCache:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v2, 0x0

    const/4 v10, 0x3

    .line 29
    const/16 v0, 0x1c

    new-array v0, v0, [[I

    new-array v1, v10, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v2

    new-array v1, v10, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v11

    new-array v1, v10, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v12

    new-array v1, v10, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v10

    new-array v1, v10, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v13

    const/4 v1, 0x5

    new-array v3, v10, [I

    fill-array-data v3, :array_5

    aput-object v3, v0, v1

    const/4 v1, 0x6

    new-array v3, v10, [I

    fill-array-data v3, :array_6

    aput-object v3, v0, v1

    const/4 v1, 0x7

    new-array v3, v10, [I

    fill-array-data v3, :array_7

    aput-object v3, v0, v1

    const/16 v1, 0x8

    new-array v3, v10, [I

    fill-array-data v3, :array_8

    aput-object v3, v0, v1

    const/16 v1, 0x9

    new-array v3, v10, [I

    fill-array-data v3, :array_9

    aput-object v3, v0, v1

    const/16 v1, 0xa

    new-array v3, v10, [I

    fill-array-data v3, :array_a

    aput-object v3, v0, v1

    const/16 v1, 0xb

    new-array v3, v10, [I

    fill-array-data v3, :array_b

    aput-object v3, v0, v1

    const/16 v1, 0xc

    new-array v3, v10, [I

    fill-array-data v3, :array_c

    aput-object v3, v0, v1

    const/16 v1, 0xd

    new-array v3, v10, [I

    fill-array-data v3, :array_d

    aput-object v3, v0, v1

    const/16 v1, 0xe

    new-array v3, v10, [I

    fill-array-data v3, :array_e

    aput-object v3, v0, v1

    const/16 v1, 0xf

    new-array v3, v10, [I

    fill-array-data v3, :array_f

    aput-object v3, v0, v1

    const/16 v1, 0x10

    new-array v3, v10, [I

    fill-array-data v3, :array_10

    aput-object v3, v0, v1

    const/16 v1, 0x11

    new-array v3, v10, [I

    fill-array-data v3, :array_11

    aput-object v3, v0, v1

    const/16 v1, 0x12

    new-array v3, v10, [I

    fill-array-data v3, :array_12

    aput-object v3, v0, v1

    const/16 v1, 0x13

    new-array v3, v10, [I

    fill-array-data v3, :array_13

    aput-object v3, v0, v1

    const/16 v1, 0x14

    new-array v3, v10, [I

    fill-array-data v3, :array_14

    aput-object v3, v0, v1

    const/16 v1, 0x15

    new-array v3, v10, [I

    fill-array-data v3, :array_15

    aput-object v3, v0, v1

    const/16 v1, 0x16

    new-array v3, v10, [I

    fill-array-data v3, :array_16

    aput-object v3, v0, v1

    const/16 v1, 0x17

    new-array v3, v10, [I

    fill-array-data v3, :array_17

    aput-object v3, v0, v1

    const/16 v1, 0x18

    new-array v3, v10, [I

    fill-array-data v3, :array_18

    aput-object v3, v0, v1

    const/16 v1, 0x19

    new-array v3, v10, [I

    fill-array-data v3, :array_19

    aput-object v3, v0, v1

    const/16 v1, 0x1a

    new-array v3, v10, [I

    fill-array-data v3, :array_1a

    aput-object v3, v0, v1

    const/16 v1, 0x1b

    new-array v3, v10, [I

    fill-array-data v3, :array_1b

    aput-object v3, v0, v1

    sput-object v0, Lcom/htc/util/calendar/holidays/LunarUtils;->exception:[[I

    .line 33
    const/16 v0, 0xc8

    new-array v0, v0, [I

    fill-array-data v0, :array_1c

    sput-object v0, Lcom/htc/util/calendar/holidays/LunarUtils;->mCnYearCodes:[I

    .line 79
    new-instance v0, Ljava/util/GregorianCalendar;

    const/16 v1, 0x834

    const/16 v3, 0x1f

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    sput-object v0, Lcom/htc/util/calendar/holidays/LunarUtils;->DATE_MAX_BOUND_OBJ:Ljava/util/Calendar;

    .line 82
    new-instance v3, Ljava/util/GregorianCalendar;

    const/16 v4, 0x76c

    move v5, v12

    move v6, v11

    move v7, v2

    move v8, v2

    move v9, v2

    invoke-direct/range {v3 .. v9}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    sput-object v3, Lcom/htc/util/calendar/holidays/LunarUtils;->DATE_MIN_BOUND_OBJ:Ljava/util/Calendar;

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/util/calendar/holidays/LunarUtils;->mSolarHolidays:Ljava/util/Map;

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarHolidays:Ljava/util/Map;

    .line 108
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_1d

    sput-object v0, Lcom/htc/util/calendar/holidays/LunarUtils;->mSolarDaysInMonth:[I

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/util/calendar/holidays/LunarUtils;->mYear:Ljava/util/Map;

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/util/calendar/holidays/LunarUtils;->mSpecailHoliday:Ljava/util/Map;

    .line 125
    new-instance v0, Ljava/util/GregorianCalendar;

    const/16 v1, 0x76c

    const/16 v3, 0x1f

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Ljava/util/GregorianCalendar;-><init>(IIIII)V

    sput-object v0, Lcom/htc/util/calendar/holidays/LunarUtils;->mBaseDate:Ljava/util/GregorianCalendar;

    .line 128
    const/16 v0, 0xc9

    new-array v0, v0, [I

    fill-array-data v0, :array_1e

    sput-object v0, Lcom/htc/util/calendar/holidays/LunarUtils;->mCnBaseDateOffsets:[I

    .line 181
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/util/calendar/holidays/LunarUtils;->singleLunar:Lcom/htc/util/calendar/holidays/LunarUtils;

    .line 344
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Out of Year Bounds"

    aput-object v1, v0, v2

    const-string v1, "Incorrect Month Value"

    aput-object v1, v0, v11

    const-string v1, "Not A Leap Month"

    aput-object v1, v0, v12

    const-string v1, "Incorrect Date Value"

    aput-object v1, v0, v10

    const-string v1, "Out of Date Bounds"

    aput-object v1, v0, v13

    sput-object v0, Lcom/htc/util/calendar/holidays/LunarUtils;->mErrArray:[Ljava/lang/String;

    return-void

    .line 29
    nop

    :array_0
    .array-data 0x4
        0xdbt 0x7t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0xdft 0x7t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0xd0t 0x7t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0xd1t 0x7t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0xd2t 0x7t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_5
    .array-data 0x4
        0xd3t 0x7t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_6
    .array-data 0x4
        0xd4t 0x7t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_7
    .array-data 0x4
        0xd4t 0x7t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_8
    .array-data 0x4
        0xd5t 0x7t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_9
    .array-data 0x4
        0xd7t 0x7t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_a
    .array-data 0x4
        0xd8t 0x7t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_b
    .array-data 0x4
        0xd8t 0x7t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_c
    .array-data 0x4
        0xd8t 0x7t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_d
    .array-data 0x4
        0xd9t 0x7t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_e
    .array-data 0x4
        0xdat 0x7t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_f
    .array-data 0x4
        0xdct 0x7t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_10
    .array-data 0x4
        0xdct 0x7t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_11
    .array-data 0x4
        0xdet 0x7t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_12
    .array-data 0x4
        0xe0t 0x7t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_13
    .array-data 0x4
        0xe0t 0x7t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_14
    .array-data 0x4
        0xe1t 0x7t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_15
    .array-data 0x4
        0xe2t 0x7t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_16
    .array-data 0x4
        0xe5t 0x7t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_17
    .array-data 0x4
        0xe6t 0x7t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_18
    .array-data 0x4
        0xe7t 0x7t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_19
    .array-data 0x4
        0xeat 0x7t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_1a
    .array-data 0x4
        0xebt 0x7t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_1b
    .array-data 0x4
        0xedt 0x7t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 33
    :array_1c
    .array-data 0x4
        0xd8t 0x4bt 0x0t 0x0t
        0xe0t 0x4at 0x0t 0x0t
        0x70t 0xa5t 0x0t 0x0t
        0xd5t 0x54t 0x0t 0x0t
        0x60t 0xd2t 0x0t 0x0t
        0x50t 0xd9t 0x0t 0x0t
        0x54t 0x65t 0x1t 0x0t
        0xa0t 0x56t 0x0t 0x0t
        0xd0t 0x9at 0x0t 0x0t
        0xd2t 0x55t 0x0t 0x0t
        0xe0t 0x4at 0x0t 0x0t
        0xb6t 0xa5t 0x0t 0x0t
        0xd0t 0xa4t 0x0t 0x0t
        0x50t 0xd2t 0x0t 0x0t
        0x55t 0xd2t 0x1t 0x0t
        0x40t 0xb5t 0x0t 0x0t
        0xa0t 0xd6t 0x0t 0x0t
        0xa2t 0xadt 0x0t 0x0t
        0xb0t 0x95t 0x0t 0x0t
        0x77t 0x49t 0x1t 0x0t
        0x70t 0x49t 0x0t 0x0t
        0xb0t 0xa4t 0x0t 0x0t
        0xb5t 0xb4t 0x0t 0x0t
        0x50t 0x6at 0x0t 0x0t
        0x40t 0x6dt 0x0t 0x0t
        0x54t 0xabt 0x1t 0x0t
        0x60t 0x2bt 0x0t 0x0t
        0x70t 0x95t 0x0t 0x0t
        0xf2t 0x52t 0x0t 0x0t
        0x70t 0x49t 0x0t 0x0t
        0x66t 0x65t 0x0t 0x0t
        0xa0t 0xd4t 0x0t 0x0t
        0x50t 0xeat 0x0t 0x0t
        0x95t 0x6et 0x0t 0x0t
        0xd0t 0x5at 0x0t 0x0t
        0x60t 0x2bt 0x0t 0x0t
        0xe3t 0x86t 0x1t 0x0t
        0xe0t 0x92t 0x0t 0x0t
        0xd7t 0xc8t 0x1t 0x0t
        0x50t 0xc9t 0x0t 0x0t
        0xa0t 0xd4t 0x0t 0x0t
        0xa6t 0xd8t 0x1t 0x0t
        0x50t 0xb5t 0x0t 0x0t
        0xa0t 0x56t 0x0t 0x0t
        0xb4t 0xa5t 0x1t 0x0t
        0xd0t 0x25t 0x0t 0x0t
        0xd0t 0x92t 0x0t 0x0t
        0xb2t 0xd2t 0x0t 0x0t
        0x50t 0xa9t 0x0t 0x0t
        0x57t 0xb5t 0x0t 0x0t
        0xa0t 0x6ct 0x0t 0x0t
        0x50t 0xb5t 0x0t 0x0t
        0x55t 0x53t 0x1t 0x0t
        0xa0t 0x4dt 0x0t 0x0t
        0xd0t 0xa5t 0x0t 0x0t
        0x73t 0x45t 0x1t 0x0t
        0xd0t 0x52t 0x0t 0x0t
        0xa8t 0xa9t 0x0t 0x0t
        0x50t 0xe9t 0x0t 0x0t
        0xa0t 0x6at 0x0t 0x0t
        0xa6t 0xaet 0x0t 0x0t
        0x50t 0xabt 0x0t 0x0t
        0x60t 0x4bt 0x0t 0x0t
        0xe4t 0xaat 0x0t 0x0t
        0x70t 0xa5t 0x0t 0x0t
        0x60t 0x52t 0x0t 0x0t
        0x63t 0xf2t 0x0t 0x0t
        0x50t 0xd9t 0x0t 0x0t
        0x57t 0x5bt 0x0t 0x0t
        0xa0t 0x56t 0x0t 0x0t
        0xd0t 0x96t 0x0t 0x0t
        0xd5t 0x4dt 0x0t 0x0t
        0xd0t 0x4at 0x0t 0x0t
        0xd0t 0xa4t 0x0t 0x0t
        0xd4t 0xd4t 0x0t 0x0t
        0x50t 0xd2t 0x0t 0x0t
        0x58t 0xd5t 0x0t 0x0t
        0x40t 0xb5t 0x0t 0x0t
        0xa0t 0xb5t 0x0t 0x0t
        0xa6t 0x95t 0x1t 0x0t
        0xb0t 0x95t 0x0t 0x0t
        0xb0t 0x49t 0x0t 0x0t
        0x74t 0xa9t 0x0t 0x0t
        0xb0t 0xa4t 0x0t 0x0t
        0x7at 0xb2t 0x0t 0x0t
        0x50t 0x6at 0x0t 0x0t
        0x40t 0x6dt 0x0t 0x0t
        0x46t 0xaft 0x0t 0x0t
        0x60t 0xabt 0x0t 0x0t
        0x70t 0x95t 0x0t 0x0t
        0xf5t 0x4at 0x0t 0x0t
        0x70t 0x49t 0x0t 0x0t
        0xb0t 0x64t 0x0t 0x0t
        0xa3t 0x74t 0x0t 0x0t
        0x50t 0xeat 0x0t 0x0t
        0x58t 0x6bt 0x0t 0x0t
        0xc0t 0x55t 0x0t 0x0t
        0x60t 0xabt 0x0t 0x0t
        0xd5t 0x96t 0x0t 0x0t
        0xe0t 0x92t 0x0t 0x0t
        0x60t 0xc9t 0x0t 0x0t
        0x54t 0xd9t 0x0t 0x0t
        0xa0t 0xd4t 0x0t 0x0t
        0x50t 0xdat 0x0t 0x0t
        0x52t 0x75t 0x0t 0x0t
        0xa0t 0x56t 0x0t 0x0t
        0xb7t 0xabt 0x0t 0x0t
        0xd0t 0x25t 0x0t 0x0t
        0xd0t 0x92t 0x0t 0x0t
        0xb5t 0xcat 0x0t 0x0t
        0x50t 0xa9t 0x0t 0x0t
        0xa0t 0xb4t 0x0t 0x0t
        0xa4t 0xbat 0x0t 0x0t
        0x50t 0xadt 0x0t 0x0t
        0xd9t 0x55t 0x0t 0x0t
        0xa0t 0x4bt 0x0t 0x0t
        0xb0t 0xa5t 0x0t 0x0t
        0x76t 0x51t 0x1t 0x0t
        0xb0t 0x52t 0x0t 0x0t
        0x30t 0xa9t 0x0t 0x0t
        0x54t 0x79t 0x0t 0x0t
        0xa0t 0x6at 0x0t 0x0t
        0x50t 0xadt 0x0t 0x0t
        0x52t 0x5bt 0x0t 0x0t
        0x60t 0x4bt 0x0t 0x0t
        0xe6t 0xa6t 0x0t 0x0t
        0xe0t 0xa4t 0x0t 0x0t
        0x60t 0xd2t 0x0t 0x0t
        0x65t 0xeat 0x0t 0x0t
        0x30t 0xd5t 0x0t 0x0t
        0xa0t 0x5at 0x0t 0x0t
        0xa3t 0x76t 0x0t 0x0t
        0xd0t 0x96t 0x0t 0x0t
        0xd7t 0x4bt 0x0t 0x0t
        0xd0t 0x4at 0x0t 0x0t
        0xd0t 0xa4t 0x0t 0x0t
        0xb6t 0xd0t 0x1t 0x0t
        0x50t 0xd2t 0x0t 0x0t
        0x20t 0xd5t 0x0t 0x0t
        0x45t 0xddt 0x0t 0x0t
        0xa0t 0xb5t 0x0t 0x0t
        0xd0t 0x56t 0x0t 0x0t
        0xb2t 0x55t 0x0t 0x0t
        0xb0t 0x49t 0x0t 0x0t
        0x77t 0xa5t 0x0t 0x0t
        0xb0t 0xa4t 0x0t 0x0t
        0x50t 0xaat 0x0t 0x0t
        0x55t 0xb2t 0x1t 0x0t
        0x20t 0x6dt 0x0t 0x0t
        0xa0t 0xadt 0x0t 0x0t
        0x63t 0x4bt 0x1t 0x0t
        0x70t 0x93t 0x0t 0x0t
        0xf8t 0x49t 0x0t 0x0t
        0x70t 0x49t 0x0t 0x0t
        0xb0t 0x64t 0x0t 0x0t
        0xa6t 0x68t 0x1t 0x0t
        0x50t 0xeat 0x0t 0x0t
        0xa0t 0x6at 0x0t 0x0t
        0xc4t 0xa6t 0x1t 0x0t
        0xe0t 0xaat 0x0t 0x0t
        0xe0t 0x92t 0x0t 0x0t
        0xe3t 0xd2t 0x0t 0x0t
        0x60t 0xc9t 0x0t 0x0t
        0x57t 0xd5t 0x0t 0x0t
        0xa0t 0xd4t 0x0t 0x0t
        0x50t 0xdat 0x0t 0x0t
        0x55t 0x5dt 0x0t 0x0t
        0xa0t 0x56t 0x0t 0x0t
        0xd0t 0xa6t 0x0t 0x0t
        0xd4t 0x55t 0x0t 0x0t
        0xd0t 0x52t 0x0t 0x0t
        0xb8t 0xa9t 0x0t 0x0t
        0x50t 0xa9t 0x0t 0x0t
        0xa0t 0xb4t 0x0t 0x0t
        0xa6t 0xb6t 0x0t 0x0t
        0x50t 0xadt 0x0t 0x0t
        0xa0t 0x55t 0x0t 0x0t
        0xa4t 0xabt 0x0t 0x0t
        0xb0t 0xa5t 0x0t 0x0t
        0xb0t 0x52t 0x0t 0x0t
        0x73t 0xb2t 0x0t 0x0t
        0x30t 0x69t 0x0t 0x0t
        0x37t 0x73t 0x0t 0x0t
        0xa0t 0x6at 0x0t 0x0t
        0x50t 0xadt 0x0t 0x0t
        0x55t 0x4bt 0x1t 0x0t
        0x60t 0x4bt 0x0t 0x0t
        0x70t 0xa5t 0x0t 0x0t
        0xe4t 0x54t 0x0t 0x0t
        0x60t 0xd1t 0x0t 0x0t
        0x68t 0xe9t 0x0t 0x0t
        0x20t 0xd5t 0x0t 0x0t
        0xa0t 0xdat 0x0t 0x0t
        0xa6t 0x6at 0x1t 0x0t
        0xd0t 0x56t 0x0t 0x0t
        0xe0t 0x4at 0x0t 0x0t
        0xd4t 0xa9t 0x0t 0x0t
        0xd0t 0xa2t 0x0t 0x0t
        0x50t 0xd1t 0x0t 0x0t
        0x52t 0xf2t 0x0t 0x0t
    .end array-data

    .line 108
    :array_1d
    .array-data 0x4
        0x1ft 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
    .end array-data

    .line 128
    :array_1e
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x80t 0x1t 0x0t 0x0t
        0xe2t 0x2t 0x0t 0x0t
        0x45t 0x4t 0x0t 0x0t
        0xc4t 0x5t 0x0t 0x0t
        0x26t 0x7t 0x0t 0x0t
        0x89t 0x8t 0x0t 0x0t
        0x9t 0xat 0x0t 0x0t
        0x6bt 0xbt 0x0t 0x0t
        0xcet 0xct 0x0t 0x0t
        0x4et 0xet 0x0t 0x0t
        0xb0t 0xft 0x0t 0x0t
        0x30t 0x11t 0x0t 0x0t
        0x92t 0x12t 0x0t 0x0t
        0xf4t 0x13t 0x0t 0x0t
        0x74t 0x15t 0x0t 0x0t
        0xd6t 0x16t 0x0t 0x0t
        0x39t 0x18t 0x0t 0x0t
        0xb9t 0x19t 0x0t 0x0t
        0x1ct 0x1bt 0x0t 0x0t
        0x9ct 0x1ct 0x0t 0x0t
        0xfet 0x1dt 0x0t 0x0t
        0x60t 0x1ft 0x0t 0x0t
        0xe0t 0x20t 0x0t 0x0t
        0x42t 0x22t 0x0t 0x0t
        0xa4t 0x23t 0x0t 0x0t
        0x25t 0x25t 0x0t 0x0t
        0x87t 0x26t 0x0t 0x0t
        0xeat 0x27t 0x0t 0x0t
        0x6at 0x29t 0x0t 0x0t
        0xcct 0x2at 0x0t 0x0t
        0x4bt 0x2ct 0x0t 0x0t
        0xadt 0x2dt 0x0t 0x0t
        0x10t 0x2ft 0x0t 0x0t
        0x90t 0x30t 0x0t 0x0t
        0xf3t 0x31t 0x0t 0x0t
        0x55t 0x33t 0x0t 0x0t
        0xd5t 0x34t 0x0t 0x0t
        0x37t 0x36t 0x0t 0x0t
        0xb7t 0x37t 0x0t 0x0t
        0x19t 0x39t 0x0t 0x0t
        0x7bt 0x3at 0x0t 0x0t
        0xfbt 0x3bt 0x0t 0x0t
        0x5et 0x3dt 0x0t 0x0t
        0xc0t 0x3et 0x0t 0x0t
        0x41t 0x40t 0x0t 0x0t
        0xa3t 0x41t 0x0t 0x0t
        0x5t 0x43t 0x0t 0x0t
        0x85t 0x44t 0x0t 0x0t
        0xe7t 0x45t 0x0t 0x0t
        0x67t 0x47t 0x0t 0x0t
        0xc9t 0x48t 0x0t 0x0t
        0x2ct 0x4at 0x0t 0x0t
        0xact 0x4bt 0x0t 0x0t
        0xet 0x4dt 0x0t 0x0t
        0x71t 0x4et 0x0t 0x0t
        0xf1t 0x4ft 0x0t 0x0t
        0x53t 0x51t 0x0t 0x0t
        0xd2t 0x52t 0x0t 0x0t
        0x35t 0x54t 0x0t 0x0t
        0x97t 0x55t 0x0t 0x0t
        0x17t 0x57t 0x0t 0x0t
        0x7at 0x58t 0x0t 0x0t
        0xdct 0x59t 0x0t 0x0t
        0x5ct 0x5bt 0x0t 0x0t
        0xbft 0x5ct 0x0t 0x0t
        0x20t 0x5et 0x0t 0x0t
        0xa0t 0x5ft 0x0t 0x0t
        0x3t 0x61t 0x0t 0x0t
        0x83t 0x62t 0x0t 0x0t
        0xe5t 0x63t 0x0t 0x0t
        0x48t 0x65t 0x0t 0x0t
        0xc8t 0x66t 0x0t 0x0t
        0x2at 0x68t 0x0t 0x0t
        0x8ct 0x69t 0x0t 0x0t
        0xct 0x6bt 0x0t 0x0t
        0x6et 0x6ct 0x0t 0x0t
        0xeet 0x6dt 0x0t 0x0t
        0x50t 0x6ft 0x0t 0x0t
        0xb3t 0x70t 0x0t 0x0t
        0x33t 0x72t 0x0t 0x0t
        0x96t 0x73t 0x0t 0x0t
        0xf8t 0x74t 0x0t 0x0t
        0x78t 0x76t 0x0t 0x0t
        0xdat 0x77t 0x0t 0x0t
        0x5at 0x79t 0x0t 0x0t
        0xbct 0x7at 0x0t 0x0t
        0x1et 0x7ct 0x0t 0x0t
        0x9et 0x7dt 0x0t 0x0t
        0x1t 0x7ft 0x0t 0x0t
        0x64t 0x80t 0x0t 0x0t
        0xe4t 0x81t 0x0t 0x0t
        0x46t 0x83t 0x0t 0x0t
        0xa8t 0x84t 0x0t 0x0t
        0x27t 0x86t 0x0t 0x0t
        0x8at 0x87t 0x0t 0x0t
        0xat 0x89t 0x0t 0x0t
        0x6ct 0x8at 0x0t 0x0t
        0xcft 0x8bt 0x0t 0x0t
        0x4ft 0x8dt 0x0t 0x0t
        0xb1t 0x8et 0x0t 0x0t
        0x13t 0x90t 0x0t 0x0t
        0x93t 0x91t 0x0t 0x0t
        0xf5t 0x92t 0x0t 0x0t
        0x58t 0x94t 0x0t 0x0t
        0xd8t 0x95t 0x0t 0x0t
        0x3at 0x97t 0x0t 0x0t
        0xbbt 0x98t 0x0t 0x0t
        0x1dt 0x9at 0x0t 0x0t
        0x7ft 0x9bt 0x0t 0x0t
        0xfft 0x9ct 0x0t 0x0t
        0x61t 0x9et 0x0t 0x0t
        0xc3t 0x9ft 0x0t 0x0t
        0x43t 0xa1t 0x0t 0x0t
        0xa6t 0xa2t 0x0t 0x0t
        0x26t 0xa4t 0x0t 0x0t
        0x88t 0xa5t 0x0t 0x0t
        0xebt 0xa6t 0x0t 0x0t
        0x6bt 0xa8t 0x0t 0x0t
        0xcdt 0xa9t 0x0t 0x0t
        0x2ft 0xabt 0x0t 0x0t
        0xaft 0xact 0x0t 0x0t
        0x11t 0xaet 0x0t 0x0t
        0x74t 0xaft 0x0t 0x0t
        0xf4t 0xb0t 0x0t 0x0t
        0x56t 0xb2t 0x0t 0x0t
        0xd6t 0xb3t 0x0t 0x0t
        0x38t 0xb5t 0x0t 0x0t
        0x9at 0xb6t 0x0t 0x0t
        0x1at 0xb8t 0x0t 0x0t
        0x7dt 0xb9t 0x0t 0x0t
        0xdft 0xbat 0x0t 0x0t
        0x5ft 0xbct 0x0t 0x0t
        0xc2t 0xbdt 0x0t 0x0t
        0x42t 0xbft 0x0t 0x0t
        0xa4t 0xc0t 0x0t 0x0t
        0x6t 0xc2t 0x0t 0x0t
        0x86t 0xc3t 0x0t 0x0t
        0xe8t 0xc4t 0x0t 0x0t
        0x4at 0xc6t 0x0t 0x0t
        0xcat 0xc7t 0x0t 0x0t
        0x2dt 0xc9t 0x0t 0x0t
        0x90t 0xcat 0x0t 0x0t
        0x10t 0xcct 0x0t 0x0t
        0x72t 0xcdt 0x0t 0x0t
        0xf2t 0xcet 0x0t 0x0t
        0x54t 0xd0t 0x0t 0x0t
        0xb6t 0xd1t 0x0t 0x0t
        0x36t 0xd3t 0x0t 0x0t
        0x98t 0xd4t 0x0t 0x0t
        0xfbt 0xd5t 0x0t 0x0t
        0x7bt 0xd7t 0x0t 0x0t
        0xdet 0xd8t 0x0t 0x0t
        0x5et 0xdat 0x0t 0x0t
        0xc0t 0xdbt 0x0t 0x0t
        0x22t 0xddt 0x0t 0x0t
        0xa1t 0xdet 0x0t 0x0t
        0x4t 0xe0t 0x0t 0x0t
        0x66t 0xe1t 0x0t 0x0t
        0xe6t 0xe2t 0x0t 0x0t
        0x49t 0xe4t 0x0t 0x0t
        0xabt 0xe5t 0x0t 0x0t
        0x2bt 0xe7t 0x0t 0x0t
        0x8dt 0xe8t 0x0t 0x0t
        0xdt 0xeat 0x0t 0x0t
        0x6ft 0xebt 0x0t 0x0t
        0xd2t 0xect 0x0t 0x0t
        0x52t 0xeet 0x0t 0x0t
        0xb4t 0xeft 0x0t 0x0t
        0x17t 0xf1t 0x0t 0x0t
        0x97t 0xf2t 0x0t 0x0t
        0xf9t 0xf3t 0x0t 0x0t
        0x79t 0xf5t 0x0t 0x0t
        0xdbt 0xf6t 0x0t 0x0t
        0x3dt 0xf8t 0x0t 0x0t
        0xbdt 0xf9t 0x0t 0x0t
        0x20t 0xfbt 0x0t 0x0t
        0x82t 0xfct 0x0t 0x0t
        0x2t 0xfet 0x0t 0x0t
        0x65t 0xfft 0x0t 0x0t
        0xc7t 0x0t 0x1t 0x0t
        0x47t 0x2t 0x1t 0x0t
        0xa9t 0x3t 0x1t 0x0t
        0x29t 0x5t 0x1t 0x0t
        0x8bt 0x6t 0x1t 0x0t
        0xeet 0x7t 0x1t 0x0t
        0x6et 0x9t 0x1t 0x0t
        0xd0t 0xat 0x1t 0x0t
        0x33t 0xct 0x1t 0x0t
        0xb2t 0xdt 0x1t 0x0t
        0x14t 0xft 0x1t 0x0t
        0x94t 0x10t 0x1t 0x0t
        0xf6t 0x11t 0x1t 0x0t
        0x59t 0x13t 0x1t 0x0t
        0xd9t 0x14t 0x1t 0x0t
        0x3ct 0x16t 0x1t 0x0t
        0x9et 0x17t 0x1t 0x0t
        0x1et 0x19t 0x1t 0x0t
        0x80t 0x1at 0x1t 0x0t
        0xe2t 0x1bt 0x1t 0x0t
        0x62t 0x1dt 0x1t 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0xd

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 171
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarDaysInMonth:[I

    .line 120
    const/16 v0, 0x18

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mSolarTermsThisYear:[J

    .line 154
    iput v1, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mYearCache:I

    .line 155
    iput v1, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarYearCache:I

    .line 166
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLeapTitle:Ljava/lang/String;

    .line 927
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mHolidays:Ljava/util/Map;

    .line 172
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    iput-object v0, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    .line 173
    iget-object v0, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 174
    iget-object v0, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 175
    iget-object v0, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v0, v3, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 177
    invoke-direct {p0}, Lcom/htc/util/calendar/holidays/LunarUtils;->solarToLunar()V

    .line 178
    return-void
.end method

.method private constructor <init>(III)V
    .locals 7
    .parameter "year"
    .parameter "month"
    .parameter "date"

    .prologue
    const/4 v1, -0x1

    const/4 v4, 0x0

    .line 225
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const/16 v0, 0xd

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarDaysInMonth:[I

    .line 120
    const/16 v0, 0x18

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mSolarTermsThisYear:[J

    .line 154
    iput v1, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mYearCache:I

    .line 155
    iput v1, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarYearCache:I

    .line 166
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLeapTitle:Ljava/lang/String;

    .line 927
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mHolidays:Ljava/util/Map;

    .line 226
    new-instance v0, Ljava/util/GregorianCalendar;

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    .line 228
    invoke-direct {p0}, Lcom/htc/util/calendar/holidays/LunarUtils;->solarToLunar()V

    .line 229
    return-void
.end method

.method private constructor <init>(Landroid/content/res/Resources;)V
    .locals 6
    .parameter "res"

    .prologue
    const/16 v5, 0xd

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 191
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-array v2, v5, [I

    iput-object v2, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarDaysInMonth:[I

    .line 120
    const/16 v2, 0x18

    new-array v2, v2, [J

    iput-object v2, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mSolarTermsThisYear:[J

    .line 154
    iput v3, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mYearCache:I

    .line 155
    iput v3, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarYearCache:I

    .line 166
    const-string v2, ""

    iput-object v2, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLeapTitle:Ljava/lang/String;

    .line 927
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mHolidays:Ljava/util/Map;

    .line 192
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    iput-object v2, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    .line 193
    iget-object v2, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    const/16 v3, 0xa

    invoke-virtual {v2, v3, v4}, Ljava/util/GregorianCalendar;->set(II)V

    .line 194
    iget-object v2, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    const/16 v3, 0xc

    invoke-virtual {v2, v3, v4}, Ljava/util/GregorianCalendar;->set(II)V

    .line 195
    iget-object v2, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v2, v5, v4}, Ljava/util/GregorianCalendar;->set(II)V

    .line 196
    const v2, 0x408001f

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/htc/util/calendar/holidays/LunarUtils;->mCnMonths:[Ljava/lang/String;

    .line 197
    const v2, 0x4080020

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/htc/util/calendar/holidays/LunarUtils;->mCnDays:[Ljava/lang/String;

    .line 198
    const v2, 0x4080021

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/htc/util/calendar/holidays/LunarUtils;->mCnDaysSmall:[Ljava/lang/String;

    .line 199
    const v2, 0x4080022

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/htc/util/calendar/holidays/LunarUtils;->mCnGans:[Ljava/lang/String;

    .line 200
    const v2, 0x4080023

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/htc/util/calendar/holidays/LunarUtils;->mCnZhis:[Ljava/lang/String;

    .line 201
    const v2, 0x4080024

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/htc/util/calendar/holidays/LunarUtils;->mCnZodiacs:[Ljava/lang/String;

    .line 202
    const v2, 0x4080025

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/htc/util/calendar/holidays/LunarUtils;->mSolarTerms:[Ljava/lang/String;

    .line 203
    const v2, 0x4080026

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/htc/util/calendar/holidays/LunarUtils;->SolarHolidays:[Ljava/lang/String;

    .line 204
    const v2, 0x4080027

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/htc/util/calendar/holidays/LunarUtils;->SolarHolidays_date:[Ljava/lang/String;

    .line 206
    sget-object v2, Lcom/htc/util/calendar/holidays/LunarUtils;->SolarHolidays:[Ljava/lang/String;

    array-length v1, v2

    .line 207
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 208
    sget-object v2, Lcom/htc/util/calendar/holidays/LunarUtils;->mSolarHolidays:Ljava/util/Map;

    sget-object v3, Lcom/htc/util/calendar/holidays/LunarUtils;->SolarHolidays_date:[Ljava/lang/String;

    aget-object v3, v3, v0

    sget-object v4, Lcom/htc/util/calendar/holidays/LunarUtils;->SolarHolidays:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 211
    :cond_0
    const v2, 0x4080028

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/htc/util/calendar/holidays/LunarUtils;->LunarHolidays:[Ljava/lang/String;

    .line 212
    const v2, 0x4080029

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/htc/util/calendar/holidays/LunarUtils;->LunarHolidays_date:[Ljava/lang/String;

    .line 213
    sget-object v2, Lcom/htc/util/calendar/holidays/LunarUtils;->LunarHolidays_date:[Ljava/lang/String;

    array-length v1, v2

    .line 214
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 215
    sget-object v2, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarHolidays:Ljava/util/Map;

    sget-object v3, Lcom/htc/util/calendar/holidays/LunarUtils;->LunarHolidays_date:[Ljava/lang/String;

    aget-object v3, v3, v0

    sget-object v4, Lcom/htc/util/calendar/holidays/LunarUtils;->LunarHolidays:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 217
    :cond_1
    invoke-direct {p0}, Lcom/htc/util/calendar/holidays/LunarUtils;->solarToLunar()V

    .line 218
    return-void
.end method

.method private constructor <init>(Lcom/htc/util/calendar/holidays/LunarUtils;)V
    .locals 7
    .parameter "c1"

    .prologue
    const/4 v1, -0x1

    const/4 v4, 0x0

    .line 247
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const/16 v0, 0xd

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarDaysInMonth:[I

    .line 120
    const/16 v0, 0x18

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mSolarTermsThisYear:[J

    .line 154
    iput v1, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mYearCache:I

    .line 155
    iput v1, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarYearCache:I

    .line 166
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLeapTitle:Ljava/lang/String;

    .line 927
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mHolidays:Ljava/util/Map;

    .line 248
    new-instance v0, Ljava/util/GregorianCalendar;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Lcom/htc/util/calendar/holidays/LunarUtils;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-direct {p1, v2}, Lcom/htc/util/calendar/holidays/LunarUtils;->get(I)I

    move-result v2

    const/4 v3, 0x5

    invoke-direct {p1, v3}, Lcom/htc/util/calendar/holidays/LunarUtils;->get(I)I

    move-result v3

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    .line 252
    invoke-direct {p0}, Lcom/htc/util/calendar/holidays/LunarUtils;->solarToLunar()V

    .line 253
    return-void
.end method

.method private constructor <init>(Ljava/util/Calendar;)V
    .locals 7
    .parameter "c1"

    .prologue
    const/4 v1, -0x1

    const/4 v4, 0x0

    .line 235
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const/16 v0, 0xd

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarDaysInMonth:[I

    .line 120
    const/16 v0, 0x18

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mSolarTermsThisYear:[J

    .line 154
    iput v1, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mYearCache:I

    .line 155
    iput v1, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarYearCache:I

    .line 166
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLeapTitle:Ljava/lang/String;

    .line 927
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mHolidays:Ljava/util/Map;

    .line 236
    new-instance v0, Ljava/util/GregorianCalendar;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    .line 240
    invoke-direct {p0}, Lcom/htc/util/calendar/holidays/LunarUtils;->solarToLunar()V

    .line 241
    return-void
.end method

.method private add(II)V
    .locals 6
    .parameter "field"
    .parameter "value"

    .prologue
    .line 262
    packed-switch p1, :pswitch_data_0

    .line 266
    :pswitch_0
    iget-object v2, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v2, p1, p2}, Ljava/util/GregorianCalendar;->add(II)V

    .line 269
    const/4 v2, 0x5

    if-ne v2, p1, :cond_1

    .line 270
    iget v2, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarDate:I

    add-int v0, v2, p2

    .line 271
    .local v0, aNewDate:I
    invoke-direct {p0}, Lcom/htc/util/calendar/holidays/LunarUtils;->getDaysInCurrentLunarMonth()I

    move-result v1

    .line 274
    .local v1, theDaysInThisMonth:I
    if-lez v0, :cond_0

    if-gt v0, v1, :cond_0

    .line 275
    iput v0, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarDate:I

    .line 276
    iget-wide v2, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mCurrentDateOffset:J

    int-to-long v4, p2

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mCurrentDateOffset:J

    .line 282
    .end local v0           #aNewDate:I
    .end local v1           #theDaysInThisMonth:I
    :goto_0
    :pswitch_1
    return-void

    .line 278
    .restart local v0       #aNewDate:I
    .restart local v1       #theDaysInThisMonth:I
    :cond_0
    invoke-direct {p0}, Lcom/htc/util/calendar/holidays/LunarUtils;->solarToLunar()V

    goto :goto_0

    .line 281
    .end local v0           #aNewDate:I
    .end local v1           #theDaysInThisMonth:I
    :cond_1
    invoke-direct {p0}, Lcom/htc/util/calendar/holidays/LunarUtils;->solarToLunar()V

    goto :goto_0

    .line 262
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private cacularSpecialDay(Ljava/util/GregorianCalendar;)V
    .locals 6
    .parameter "cal"

    .prologue
    const/4 v5, 0x1

    .line 1050
    invoke-virtual {p1, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 1051
    .local v1, stryear:Ljava/lang/String;
    sget-object v2, Lcom/htc/util/calendar/holidays/LunarUtils;->mYear:Ljava/util/Map;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/htc/util/calendar/holidays/LunarUtils;->mYear:Ljava/util/Map;

    invoke-virtual {p1, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1053
    const-string v0, ""

    .line 1054
    .local v0, holiday:Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x7

    invoke-static {v2, v3, v4}, Lcom/htc/util/calendar/holidays/LunarUtils;->getSundayOfWeekByMonth(III)Ljava/lang/String;

    move-result-object v0

    .line 1055
    sget-object v2, Lcom/htc/util/calendar/holidays/LunarUtils;->mSpecailHoliday:Ljava/util/Map;

    const-string v3, "\u6bcd\u4eb2\u8282"

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1057
    invoke-virtual {p1, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    const/4 v3, 0x5

    const/16 v4, 0xe

    invoke-static {v2, v3, v4}, Lcom/htc/util/calendar/holidays/LunarUtils;->getSundayOfWeekByMonth(III)Ljava/lang/String;

    move-result-object v0

    .line 1058
    sget-object v2, Lcom/htc/util/calendar/holidays/LunarUtils;->mSpecailHoliday:Ljava/util/Map;

    const-string v3, "\u7236\u4eb2\u8282"

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1061
    .end local v0           #holiday:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private calcLunarDaysInMonth()V
    .locals 2

    .prologue
    .line 546
    iget v0, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarYearCache:I

    iget v1, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarYear:I

    if-ne v0, v1, :cond_0

    .line 552
    :goto_0
    return-void

    .line 549
    :cond_0
    iget v0, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarYear:I

    iput v0, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarYearCache:I

    .line 551
    iget v0, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarYear:I

    iget-object v1, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarDaysInMonth:[I

    invoke-static {v0, v1}, Lcom/htc/util/calendar/holidays/LunarUtils;->calcLunarDaysInMonthHelper(I[I)V

    goto :goto_0
.end method

.method private static calcLunarDaysInMonthHelper(I[I)V
    .locals 6
    .parameter "year"
    .parameter "daysinmonth"

    .prologue
    .line 561
    const/4 v4, 0x2

    new-array v0, v4, [I

    fill-array-data v0, :array_0

    .line 562
    .local v0, aLunarMonthDay:[I
    sget-object v4, Lcom/htc/util/calendar/holidays/LunarUtils;->mCnYearCodes:[I

    add-int/lit16 v5, p0, -0x76c

    aget v1, v4, v5

    .line 564
    .local v1, code:I
    shr-int/lit8 v1, v1, 0x4

    .line 565
    const/4 v2, 0x0

    .local v2, iMonth:I
    :goto_0
    const/16 v4, 0xc

    if-ge v2, v4, :cond_0

    .line 566
    rsub-int/lit8 v4, v2, 0xb

    and-int/lit8 v5, v1, 0x1

    aget v5, v0, v5

    aput v5, p1, v4

    .line 567
    shr-int/lit8 v1, v1, 0x1

    .line 565
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 570
    :cond_0
    invoke-static {p0}, Lcom/htc/util/calendar/holidays/LunarUtils;->lunarLeapMonth(I)I

    move-result v4

    if-lez v4, :cond_2

    .line 571
    invoke-static {p0}, Lcom/htc/util/calendar/holidays/LunarUtils;->lunarLeapMonth(I)I

    move-result v3

    .line 572
    .local v3, lm:I
    const/16 v2, 0xc

    :goto_1
    if-lez v2, :cond_2

    .line 573
    if-le v2, v3, :cond_1

    .line 574
    add-int/lit8 v4, v2, -0x1

    aget v4, p1, v4

    aput v4, p1, v2

    .line 572
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 576
    :cond_1
    and-int/lit8 v4, v1, 0x1

    aget v4, v0, v4

    aput v4, p1, v2

    .line 581
    .end local v3           #lm:I
    :cond_2
    return-void

    .line 561
    :array_0
    .array-data 0x4
        0x1dt 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private calcSolarTerms()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 596
    iget v3, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mYearCache:I

    iget-object v4, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v4, v11}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 606
    :cond_0
    return-void

    .line 599
    :cond_1
    iget-object v3, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v3, v11}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    iput v3, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mYearCache:I

    .line 601
    const-wide/16 v0, 0x0

    .line 602
    .local v0, f:D
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/16 v3, 0x18

    if-ge v2, v3, :cond_0

    .line 603
    const-wide v3, 0x4076d3df3b645a1dL

    iget-object v5, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v5, v11}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    add-int/lit16 v5, v5, -0x76c

    int-to-double v5, v5

    mul-double/2addr v3, v5

    const-wide v5, 0x4038cccccccccccdL

    sub-double/2addr v3, v5

    const-wide v5, 0x402e70a3d70a3d71L

    int-to-double v7, v2

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    const-wide v5, 0x3ffe666666666666L

    const-wide v7, 0x3fd0c49ba5e353f8L

    int-to-double v9, v2

    mul-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    sub-double v0, v3, v5

    .line 604
    iget-object v3, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mSolarTermsThisYear:[J

    double-to-long v4, v0

    iget-object v6, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v6, v11}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v6

    invoke-direct {p0, v4, v5, v6, v2}, Lcom/htc/util/calendar/holidays/LunarUtils;->correct(JII)J

    move-result-wide v4

    aput-wide v4, v3, v2

    .line 602
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private correct(JII)J
    .locals 5
    .parameter "offset"
    .parameter "year"
    .parameter "season"

    .prologue
    .line 608
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v3, Lcom/htc/util/calendar/holidays/LunarUtils;->exception:[[I

    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 609
    sget-object v3, Lcom/htc/util/calendar/holidays/LunarUtils;->exception:[[I

    aget-object v3, v3, v0

    const/4 v4, 0x0

    aget v3, v3, v4

    if-ne p3, v3, :cond_0

    sget-object v3, Lcom/htc/util/calendar/holidays/LunarUtils;->exception:[[I

    aget-object v3, v3, v0

    const/4 v4, 0x1

    aget v3, v3, v4

    if-ne p4, v3, :cond_0

    .line 610
    sget-object v3, Lcom/htc/util/calendar/holidays/LunarUtils;->exception:[[I

    aget-object v3, v3, v0

    const/4 v4, 0x2

    aget v3, v3, v4

    int-to-long v3, v3

    add-long/2addr p1, v3

    move-wide v1, p1

    .line 612
    .end local p1
    .local v1, offset:J
    :goto_1
    return-wide v1

    .line 608
    .end local v1           #offset:J
    .restart local p1
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-wide v1, p1

    .line 612
    .end local p1
    .restart local v1       #offset:J
    goto :goto_1
.end method

.method private debugInfo()V
    .locals 3

    .prologue
    .line 887
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calendar Date: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 895
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lunar dates: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarYear:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/htc/util/calendar/holidays/LunarUtils;->getLunarMonth()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/util/calendar/holidays/LunarUtils;->getLunarDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 896
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5929\u5e72\u5730\u652f\u5c5e\u76f8\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/htc/util/calendar/holidays/LunarUtils;->getTianGan()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/htc/util/calendar/holidays/LunarUtils;->getDiZhi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/htc/util/calendar/holidays/LunarUtils;->getLunarZodiac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 897
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8282\u65e5\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/util/calendar/holidays/LunarUtils;->getSolarHoliday()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 898
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 899
    return-void
.end method

.method private get(I)I
    .locals 1
    .parameter "field"

    .prologue
    .line 418
    packed-switch p1, :pswitch_data_0

    .line 426
    iget-object v0, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v0, p1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    :goto_0
    return v0

    .line 420
    :pswitch_0
    iget v0, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarYear:I

    goto :goto_0

    .line 422
    :pswitch_1
    iget v0, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarMonth:I

    goto :goto_0

    .line 424
    :pswitch_2
    iget v0, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarDate:I

    goto :goto_0

    .line 418
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getDaysInCurrentLunarMonth()I
    .locals 2

    .prologue
    .line 814
    iget v0, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarYear:I

    invoke-static {v0}, Lcom/htc/util/calendar/holidays/LunarUtils;->lunarLeapMonth(I)I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarMonth:I

    iget v1, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarYear:I

    invoke-static {v1}, Lcom/htc/util/calendar/holidays/LunarUtils;->lunarLeapMonth(I)I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 816
    iget-object v0, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarDaysInMonth:[I

    iget v1, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarMonth:I

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    .line 818
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarDaysInMonth:[I

    iget v1, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarMonth:I

    aget v0, v0, v1

    goto :goto_0
.end method

.method private getDiZhi()Ljava/lang/String;
    .locals 2

    .prologue
    .line 779
    sget-object v0, Lcom/htc/util/calendar/holidays/LunarUtils;->mCnZhis:[Ljava/lang/String;

    iget v1, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarYear:I

    add-int/lit16 v1, v1, -0x748

    rem-int/lit8 v1, v1, 0xc

    aget-object v0, v0, v1

    return-object v0
.end method

.method private getFirstSundayOfMonth()Lcom/htc/util/calendar/holidays/LunarUtils;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 801
    new-instance v0, Lcom/htc/util/calendar/holidays/LunarUtils;

    iget-object v1, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v1, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-direct {v0, v1, v2, v4}, Lcom/htc/util/calendar/holidays/LunarUtils;-><init>(III)V

    .line 805
    .local v0, tmp:Lcom/htc/util/calendar/holidays/LunarUtils;
    const/4 v1, 0x5

    const/4 v2, 0x7

    invoke-direct {v0, v2}, Lcom/htc/util/calendar/holidays/LunarUtils;->get(I)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/htc/util/calendar/holidays/LunarUtils;->add(II)V

    .line 806
    return-object v0
.end method

.method public static getInstance(Landroid/content/res/Resources;)Lcom/htc/util/calendar/holidays/LunarUtils;
    .locals 1
    .parameter "res"

    .prologue
    .line 184
    sget-object v0, Lcom/htc/util/calendar/holidays/LunarUtils;->singleLunar:Lcom/htc/util/calendar/holidays/LunarUtils;

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Lcom/htc/util/calendar/holidays/LunarUtils;

    invoke-direct {v0, p0}, Lcom/htc/util/calendar/holidays/LunarUtils;-><init>(Landroid/content/res/Resources;)V

    sput-object v0, Lcom/htc/util/calendar/holidays/LunarUtils;->singleLunar:Lcom/htc/util/calendar/holidays/LunarUtils;

    .line 188
    :cond_0
    sget-object v0, Lcom/htc/util/calendar/holidays/LunarUtils;->singleLunar:Lcom/htc/util/calendar/holidays/LunarUtils;

    return-object v0
.end method

.method private getLeapTitle()Ljava/lang/String;
    .locals 4

    .prologue
    .line 995
    iget-object v3, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLeapTitle:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 997
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 998
    .local v1, locale:Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 999
    .local v2, systemLanguage:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 1000
    .local v0, country:Ljava/lang/String;
    const-string v3, "zh"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "TW"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/htc/util/calendar/holidays/HolidayUtils;->isChinaSku()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1001
    const-string v3, "\u958f"

    iput-object v3, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLeapTitle:Ljava/lang/String;

    .line 1004
    .end local v0           #country:Ljava/lang/String;
    .end local v1           #locale:Ljava/util/Locale;
    .end local v2           #systemLanguage:Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLeapTitle:Ljava/lang/String;

    return-object v3

    .line 1002
    .restart local v0       #country:Ljava/lang/String;
    .restart local v1       #locale:Ljava/util/Locale;
    .restart local v2       #systemLanguage:Ljava/lang/String;
    :cond_1
    const-string v3, "\u95f0"

    iput-object v3, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLeapTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method private getLunarDateSymbolsOfCurrentMonth()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 851
    invoke-direct {p0}, Lcom/htc/util/calendar/holidays/LunarUtils;->getDaysInCurrentLunarMonth()I

    move-result v0

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_0

    .line 852
    sget-object v0, Lcom/htc/util/calendar/holidays/LunarUtils;->mCnDays:[Ljava/lang/String;

    .line 854
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/htc/util/calendar/holidays/LunarUtils;->mCnDaysSmall:[Ljava/lang/String;

    goto :goto_0
.end method

.method private getLunarMonth()Ljava/lang/String;
    .locals 3

    .prologue
    .line 638
    iget-boolean v0, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarLeapMonth:Z

    if-eqz v0, :cond_0

    .line 639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/htc/util/calendar/holidays/LunarUtils;->getLeapTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/util/calendar/holidays/LunarUtils;->mCnMonths:[Ljava/lang/String;

    iget v2, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarMonth:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 641
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/htc/util/calendar/holidays/LunarUtils;->mCnMonths:[Ljava/lang/String;

    iget v1, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarMonth:I

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method private getLunarMonthSymbolsOfCurrentYear()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 826
    iget v4, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarYear:I

    invoke-static {v4}, Lcom/htc/util/calendar/holidays/LunarUtils;->lunarLeapMonth(I)I

    move-result v0

    .line 827
    .local v0, aLeapMonth:I
    if-nez v0, :cond_1

    .line 828
    sget-object v3, Lcom/htc/util/calendar/holidays/LunarUtils;->mCnMonths:[Ljava/lang/String;

    .line 836
    :cond_0
    return-object v3

    .line 830
    :cond_1
    const/16 v4, 0xd

    new-array v3, v4, [Ljava/lang/String;

    .line 831
    .local v3, theLunarMonthSymbols:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    const/16 v4, 0xc

    if-ge v1, v4, :cond_0

    .line 832
    sget-object v4, Lcom/htc/util/calendar/holidays/LunarUtils;->mCnMonths:[Ljava/lang/String;

    aget-object v4, v4, v1

    aput-object v4, v3, v2

    .line 833
    add-int/lit8 v4, v1, 0x1

    if-ne v0, v4, :cond_2

    .line 834
    add-int/lit8 v2, v2, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/htc/util/calendar/holidays/LunarUtils;->getLeapTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/htc/util/calendar/holidays/LunarUtils;->mCnMonths:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 831
    :cond_2
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private final getLunarPlainDate()Ljava/lang/String;
    .locals 2

    .prologue
    .line 654
    sget-object v0, Lcom/htc/util/calendar/holidays/LunarUtils;->mCnDays:[Ljava/lang/String;

    iget v1, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarDate:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private getLunarZodiac()Ljava/lang/String;
    .locals 2

    .prologue
    .line 787
    sget-object v0, Lcom/htc/util/calendar/holidays/LunarUtils;->mCnZodiacs:[Ljava/lang/String;

    iget v1, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarYear:I

    add-int/lit16 v1, v1, -0x748

    rem-int/lit8 v1, v1, 0xc

    aget-object v0, v0, v1

    return-object v0
.end method

.method private static getSundayOfWeekByMonth(III)Ljava/lang/String;
    .locals 7
    .parameter "year"
    .parameter "month"
    .parameter "week_days"

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x1

    .line 1010
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1012
    .local v0, cal:Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1, v5}, Ljava/util/Calendar;->set(III)V

    .line 1014
    const/4 v4, 0x7

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 1015
    .local v3, weekDay:I
    const/4 v2, 0x1

    .line 1016
    .local v2, sunDay:I
    const/4 v1, 0x0

    .line 1017
    .local v1, sumDay:I
    if-ne v3, v2, :cond_0

    .line 1018
    move v1, p2

    .line 1023
    :goto_0
    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->add(II)V

    .line 1025
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1021
    :cond_0
    rsub-int/lit8 v4, v3, 0x7

    add-int/2addr v4, v2

    add-int v1, v4, p2

    goto :goto_0
.end method

.method private getTianGan()Ljava/lang/String;
    .locals 2

    .prologue
    .line 771
    sget-object v0, Lcom/htc/util/calendar/holidays/LunarUtils;->mCnGans:[Ljava/lang/String;

    iget v1, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarYear:I

    add-int/lit16 v1, v1, -0x748

    rem-int/lit8 v1, v1, 0xa

    aget-object v0, v0, v1

    return-object v0
.end method

.method private isLunarLeapMonth()Z
    .locals 1

    .prologue
    .line 862
    iget-boolean v0, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarLeapMonth:Z

    return v0
.end method

.method private isSolarLeapYear()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 439
    iget-object v2, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v2, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    .line 440
    .local v0, year:I
    rem-int/lit8 v2, v0, 0x4

    if-nez v2, :cond_0

    rem-int/lit8 v2, v0, 0x64

    if-nez v2, :cond_1

    :cond_0
    rem-int/lit16 v2, v0, 0x190

    if-nez v2, :cond_2

    :cond_1
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isTheSameDay(Lcom/htc/util/calendar/holidays/LunarUtils;)Z
    .locals 5
    .parameter "c1"

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x2

    const/4 v0, 0x1

    .line 878
    iget-object v1, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v1, v0}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    invoke-direct {p1, v0}, Lcom/htc/util/calendar/holidays/LunarUtils;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v1, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    invoke-direct {p1, v3}, Lcom/htc/util/calendar/holidays/LunarUtils;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v1, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    invoke-direct {p1, v4}, Lcom/htc/util/calendar/holidays/LunarUtils;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTheSameDay(Ljava/util/Calendar;)Z
    .locals 5
    .parameter "c1"

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x2

    const/4 v0, 0x1

    .line 869
    iget-object v1, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v1, v0}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v1, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v1, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static lunarLeapMonth(I)I
    .locals 2
    .parameter "year"

    .prologue
    .line 538
    sget-object v0, Lcom/htc/util/calendar/holidays/LunarUtils;->mCnYearCodes:[I

    add-int/lit16 v1, p0, -0x76c

    aget v0, v0, v1

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method private static lunarYearDays(I)I
    .locals 6
    .parameter "year"

    .prologue
    .line 619
    const/4 v3, 0x0

    .line 620
    .local v3, totaldays:I
    const/4 v4, 0x2

    new-array v0, v4, [I

    fill-array-data v0, :array_0

    .line 621
    .local v0, aLunarMonthDay:[I
    sget-object v4, Lcom/htc/util/calendar/holidays/LunarUtils;->mCnYearCodes:[I

    add-int/lit16 v5, p0, -0x76c

    aget v1, v4, v5

    .line 623
    .local v1, code:I
    shr-int/lit8 v1, v1, 0x4

    .line 624
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/16 v4, 0xc

    if-ge v2, v4, :cond_0

    .line 625
    and-int/lit8 v4, v1, 0x1

    aget v4, v0, v4

    add-int/2addr v3, v4

    .line 626
    shr-int/lit8 v1, v1, 0x1

    .line 624
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 629
    :cond_0
    invoke-static {p0}, Lcom/htc/util/calendar/holidays/LunarUtils;->lunarLeapMonth(I)I

    move-result v4

    if-lez v4, :cond_1

    .line 630
    and-int/lit8 v4, v1, 0x1

    aget v4, v0, v4

    add-int/2addr v3, v4

    .line 631
    :cond_1
    return v3

    .line 620
    :array_0
    .array-data 0x4
        0x1dt 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private static final main([Ljava/lang/String;)V
    .locals 8
    .parameter "argv"

    .prologue
    .line 902
    new-instance v0, Lcom/htc/util/calendar/holidays/LunarUtils;

    invoke-direct {v0}, Lcom/htc/util/calendar/holidays/LunarUtils;-><init>()V

    .line 904
    .local v0, c1:Lcom/htc/util/calendar/holidays/LunarUtils;
    invoke-direct {v0}, Lcom/htc/util/calendar/holidays/LunarUtils;->debugInfo()V

    .line 905
    invoke-direct {v0}, Lcom/htc/util/calendar/holidays/LunarUtils;->getLunarMonthSymbolsOfCurrentYear()[Ljava/lang/String;

    move-result-object v3

    .line 906
    .local v3, lms:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 907
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    aget-object v5, v3, v2

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 906
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 909
    :cond_0
    const/16 v4, 0x7d8

    const/4 v5, 0x5

    const/16 v6, 0xf

    const/4 v7, 0x0

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/htc/util/calendar/holidays/LunarUtils;->setLunarDate(IIIZ)I

    move-result v1

    .line 910
    .local v1, i:I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_1

    .line 911
    invoke-direct {v0}, Lcom/htc/util/calendar/holidays/LunarUtils;->debugInfo()V

    .line 912
    invoke-direct {v0}, Lcom/htc/util/calendar/holidays/LunarUtils;->getLunarMonthSymbolsOfCurrentYear()[Ljava/lang/String;

    move-result-object v3

    .line 913
    const/4 v2, 0x0

    :goto_1
    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 914
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    aget-object v5, v3, v2

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 913
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 917
    :cond_1
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v5, Lcom/htc/util/calendar/holidays/LunarUtils;->mErrArray:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 920
    :cond_2
    return-void
.end method

.method private set(II)V
    .locals 1
    .parameter "field"
    .parameter "value"

    .prologue
    .line 290
    packed-switch p1, :pswitch_data_0

    .line 294
    :pswitch_0
    iget-object v0, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 297
    invoke-direct {p0}, Lcom/htc/util/calendar/holidays/LunarUtils;->solarToLunar()V

    .line 298
    :pswitch_1
    return-void

    .line 290
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private set(Lcom/htc/util/calendar/holidays/LunarUtils;)V
    .locals 7
    .parameter "c1"

    .prologue
    const/4 v4, 0x0

    .line 336
    iget-object v0, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Lcom/htc/util/calendar/holidays/LunarUtils;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-direct {p1, v2}, Lcom/htc/util/calendar/holidays/LunarUtils;->get(I)I

    move-result v2

    const/4 v3, 0x5

    invoke-direct {p1, v3}, Lcom/htc/util/calendar/holidays/LunarUtils;->get(I)I

    move-result v3

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    .line 340
    invoke-direct {p0}, Lcom/htc/util/calendar/holidays/LunarUtils;->solarToLunar()V

    .line 341
    return-void
.end method

.method private set(Ljava/util/Calendar;)V
    .locals 7
    .parameter "c1"

    .prologue
    const/4 v4, 0x0

    .line 324
    iget-object v0, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    .line 328
    invoke-direct {p0}, Lcom/htc/util/calendar/holidays/LunarUtils;->solarToLunar()V

    .line 329
    return-void
.end method

.method private setLunarDate(IIIZ)I
    .locals 10
    .parameter "year"
    .parameter "month"
    .parameter "date"
    .parameter "leap"

    .prologue
    const/4 v4, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v9, 0x5

    .line 361
    const/16 v7, 0x76c

    if-lt p1, v7, :cond_0

    const/16 v7, 0x833

    if-le p1, v7, :cond_2

    :cond_0
    move v4, v6

    .line 409
    :cond_1
    :goto_0
    return v4

    .line 363
    :cond_2
    if-ltz p2, :cond_3

    const/16 v7, 0xb

    if-le p2, v7, :cond_4

    :cond_3
    move v4, v5

    .line 364
    goto :goto_0

    .line 365
    :cond_4
    if-eqz p4, :cond_5

    invoke-static {p1}, Lcom/htc/util/calendar/holidays/LunarUtils;->lunarLeapMonth(I)I

    move-result v7

    add-int/lit8 v8, p2, 0x1

    if-eq v7, v8, :cond_5

    .line 366
    const/4 v4, 0x2

    goto :goto_0

    .line 367
    :cond_5
    if-lt p3, v5, :cond_1

    const/16 v7, 0x1e

    if-gt p3, v7, :cond_1

    .line 370
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 371
    .local v0, aBaseCalDate:Ljava/util/Calendar;
    add-int/lit16 v1, p1, -0x76c

    .line 372
    .local v1, index:I
    sget-object v7, Lcom/htc/util/calendar/holidays/LunarUtils;->mBaseDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v7}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 373
    sget-object v7, Lcom/htc/util/calendar/holidays/LunarUtils;->mCnBaseDateOffsets:[I

    aget v7, v7, v1

    invoke-virtual {v0, v9, v7}, Ljava/util/Calendar;->add(II)V

    .line 375
    const/16 v7, 0xd

    new-array v3, v7, [I

    .line 376
    .local v3, theLunarDaysInMonth:[I
    invoke-static {p1, v3}, Lcom/htc/util/calendar/holidays/LunarUtils;->calcLunarDaysInMonthHelper(I[I)V

    .line 377
    const/4 v1, 0x0

    move v2, v1

    .end local v1           #index:I
    .local v2, index:I
    :goto_1
    if-ge v2, p2, :cond_6

    .line 378
    aget v7, v3, v2

    invoke-virtual {v0, v9, v7}, Ljava/util/Calendar;->add(II)V

    .line 377
    add-int/lit8 v1, v2, 0x1

    .end local v2           #index:I
    .restart local v1       #index:I
    move v2, v1

    .end local v1           #index:I
    .restart local v2       #index:I
    goto :goto_1

    .line 380
    :cond_6
    if-nez p4, :cond_7

    invoke-static {p1}, Lcom/htc/util/calendar/holidays/LunarUtils;->lunarLeapMonth(I)I

    move-result v7

    if-lez v7, :cond_c

    invoke-static {p1}, Lcom/htc/util/calendar/holidays/LunarUtils;->lunarLeapMonth(I)I

    move-result v7

    if-gt v7, p2, :cond_c

    .line 382
    :cond_7
    add-int/lit8 v1, v2, 0x1

    .end local v2           #index:I
    .restart local v1       #index:I
    aget v7, v3, v2

    invoke-virtual {v0, v9, v7}, Ljava/util/Calendar;->add(II)V

    .line 383
    :goto_2
    aget v7, v3, v1

    if-gt p3, v7, :cond_1

    .line 386
    add-int/lit8 v4, p3, -0x1

    invoke-virtual {v0, v9, v4}, Ljava/util/Calendar;->add(II)V

    .line 388
    sget-object v4, Lcom/htc/util/calendar/holidays/LunarUtils;->DATE_MAX_BOUND_OBJ:Ljava/util/Calendar;

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    sget-object v4, Lcom/htc/util/calendar/holidays/LunarUtils;->DATE_MIN_BOUND_OBJ:Ljava/util/Calendar;

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 390
    :cond_8
    const/4 v4, 0x4

    goto :goto_0

    .line 392
    :cond_9
    iget-object v4, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 393
    iput p1, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarYear:I

    .line 394
    iput p2, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarMonth:I

    .line 395
    iput p3, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarDate:I

    .line 396
    if-eqz p4, :cond_b

    .line 397
    iput-boolean v5, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarLeapMonth:Z

    .line 401
    :goto_3
    iget v4, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarYear:I

    iget v5, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarYearCache:I

    if-eq v4, v5, :cond_a

    .line 402
    iput-object v3, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarDaysInMonth:[I

    .line 403
    iget v4, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarYear:I

    iput v4, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarYearCache:I

    .line 405
    :cond_a
    invoke-direct {p0}, Lcom/htc/util/calendar/holidays/LunarUtils;->calcSolarTerms()V

    .line 407
    invoke-direct {p0}, Lcom/htc/util/calendar/holidays/LunarUtils;->solarDaysFromBaseDate()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mCurrentDateOffset:J

    .line 409
    const/4 v4, -0x1

    goto/16 :goto_0

    .line 399
    :cond_b
    iput-boolean v6, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarLeapMonth:Z

    goto :goto_3

    .end local v1           #index:I
    .restart local v2       #index:I
    :cond_c
    move v1, v2

    .end local v2           #index:I
    .restart local v1       #index:I
    goto :goto_2
.end method

.method private solarDaysFromBaseDate()J
    .locals 9

    .prologue
    .line 459
    iget-object v4, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v4}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v6}, Ljava/util/GregorianCalendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v7}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v6

    int-to-long v6, v6

    add-long v0, v4, v6

    .line 460
    .local v0, endl:J
    sget-object v4, Lcom/htc/util/calendar/holidays/LunarUtils;->mBaseDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v4}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v4

    sget-object v6, Lcom/htc/util/calendar/holidays/LunarUtils;->mBaseDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v6}, Ljava/util/GregorianCalendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v6

    sget-object v7, Lcom/htc/util/calendar/holidays/LunarUtils;->mBaseDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v7}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v6

    int-to-long v6, v6

    add-long v2, v4, v6

    .line 461
    .local v2, startl:J
    sub-long v4, v0, v2

    const-wide/32 v6, 0x5265c00

    div-long/2addr v4, v6

    return-wide v4
.end method

.method private solarDaysFromDate(Ljava/util/Calendar;)J
    .locals 9
    .parameter "cc"

    .prologue
    .line 469
    iget-object v4, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v4}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v6}, Ljava/util/GregorianCalendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v7}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v6

    int-to-long v6, v6

    add-long v0, v4, v6

    .line 470
    .local v0, endl:J
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v6

    int-to-long v6, v6

    add-long v2, v4, v6

    .line 471
    .local v2, startl:J
    sub-long v4, v0, v2

    const-wide/32 v6, 0x5265c00

    div-long/2addr v4, v6

    return-wide v4
.end method

.method private solarDaysInMonth()I
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 448
    invoke-direct {p0}, Lcom/htc/util/calendar/holidays/LunarUtils;->isSolarLeapYear()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 449
    const/16 v0, 0x1d

    .line 451
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/htc/util/calendar/holidays/LunarUtils;->mSolarDaysInMonth:[I

    iget-object v1, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    aget v0, v0, v1

    goto :goto_0
.end method

.method private solarToLunar()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 481
    invoke-direct {p0}, Lcom/htc/util/calendar/holidays/LunarUtils;->solarDaysFromBaseDate()J

    move-result-wide v2

    .line 482
    .local v2, offset:J
    iput-wide v2, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mCurrentDateOffset:J

    .line 494
    iget-object v4, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v4, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    add-int/lit16 v1, v4, -0x76c

    .line 495
    .local v1, index:I
    sget-object v4, Lcom/htc/util/calendar/holidays/LunarUtils;->mCnBaseDateOffsets:[I

    aget v4, v4, v1

    int-to-long v4, v4

    cmp-long v4, v4, v2

    if-lez v4, :cond_2

    .line 496
    sget-object v4, Lcom/htc/util/calendar/holidays/LunarUtils;->mCnBaseDateOffsets:[I

    add-int/lit8 v5, v1, -0x1

    aget v4, v4, v5

    int-to-long v4, v4

    sub-long/2addr v2, v4

    .line 497
    add-int/lit8 v4, v1, -0x1

    add-int/lit16 v4, v4, 0x76c

    iput v4, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarYear:I

    .line 504
    :goto_0
    invoke-direct {p0}, Lcom/htc/util/calendar/holidays/LunarUtils;->calcLunarDaysInMonth()V

    .line 505
    invoke-direct {p0}, Lcom/htc/util/calendar/holidays/LunarUtils;->calcSolarTerms()V

    .line 507
    const/4 v0, 0x0

    .local v0, iMonth:I
    :goto_1
    const/16 v4, 0xd

    if-ge v0, v4, :cond_0

    .line 508
    iget-object v4, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarDaysInMonth:[I

    aget v4, v4, v0

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_3

    .line 509
    iput v0, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarMonth:I

    .line 515
    :cond_0
    iget v4, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarYear:I

    invoke-static {v4}, Lcom/htc/util/calendar/holidays/LunarUtils;->lunarLeapMonth(I)I

    move-result v4

    if-lez v4, :cond_5

    .line 517
    iget v4, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarMonth:I

    iget v5, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarYear:I

    invoke-static {v5}, Lcom/htc/util/calendar/holidays/LunarUtils;->lunarLeapMonth(I)I

    move-result v5

    if-ne v4, v5, :cond_4

    .line 518
    iput-boolean v7, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarLeapMonth:Z

    .line 523
    :goto_2
    iget v4, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarMonth:I

    iget v5, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarYear:I

    invoke-static {v5}, Lcom/htc/util/calendar/holidays/LunarUtils;->lunarLeapMonth(I)I

    move-result v5

    if-lt v4, v5, :cond_1

    .line 524
    iget v4, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarMonth:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarMonth:I

    .line 530
    :cond_1
    :goto_3
    long-to-int v4, v2

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarDate:I

    .line 531
    return-void

    .line 500
    .end local v0           #iMonth:I
    :cond_2
    sget-object v4, Lcom/htc/util/calendar/holidays/LunarUtils;->mCnBaseDateOffsets:[I

    aget v4, v4, v1

    int-to-long v4, v4

    sub-long/2addr v2, v4

    .line 501
    add-int/lit16 v4, v1, 0x76c

    iput v4, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarYear:I

    goto :goto_0

    .line 512
    .restart local v0       #iMonth:I
    :cond_3
    iget-object v4, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarDaysInMonth:[I

    aget v4, v4, v0

    int-to-long v4, v4

    sub-long/2addr v2, v4

    .line 507
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 520
    :cond_4
    iput-boolean v6, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarLeapMonth:Z

    goto :goto_2

    .line 527
    :cond_5
    iput-boolean v6, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarLeapMonth:Z

    goto :goto_3
.end method


# virtual methods
.method public getChinaCalendar()Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    .line 930
    iget-object v8, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mHolidays:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->clear()V

    .line 931
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarSpecialDay:Z

    .line 933
    const-string v3, ""

    .line 934
    .local v3, lunarDay:Ljava/lang/String;
    const-string v5, ""

    .line 935
    .local v5, solarHoliday:Ljava/lang/String;
    const-string v6, ""

    .line 936
    .local v6, solarTerm:Ljava/lang/String;
    const-string v4, ""

    .line 937
    .local v4, lunarHoliday:Ljava/lang/String;
    const-string v7, ""

    .line 939
    .local v7, specialHoliday:Ljava/lang/String;
    iget v8, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarMonth:I

    const/16 v9, 0xb

    if-ne v8, v9, :cond_1

    iget v8, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarDate:I

    invoke-direct {p0}, Lcom/htc/util/calendar/holidays/LunarUtils;->getDaysInCurrentLunarMonth()I

    move-result v9

    if-ne v8, v9, :cond_1

    .line 940
    iput-boolean v12, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarSpecialDay:Z

    .line 941
    const-string v4, "\u9664\u5915"

    .line 942
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/htc/util/calendar/holidays/LunarUtils;->mCnMonths:[Ljava/lang/String;

    iget v10, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarMonth:I

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/htc/util/calendar/holidays/LunarUtils;->mCnDays:[Ljava/lang/String;

    iget v10, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarDate:I

    add-int/lit8 v10, v10, -0x1

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 966
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/16 v8, 0x18

    if-ge v0, v8, :cond_8

    .line 967
    iget-wide v8, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mCurrentDateOffset:J

    iget-object v10, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mSolarTermsThisYear:[J

    aget-wide v10, v10, v0

    cmp-long v8, v8, v10

    if-nez v8, :cond_7

    .line 968
    iput-boolean v12, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarSpecialDay:Z

    .line 969
    sget-object v8, Lcom/htc/util/calendar/holidays/LunarUtils;->mSolarTerms:[Ljava/lang/String;

    aget-object v6, v8, v0

    .line 966
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 945
    .end local v0           #i:I
    :cond_1
    iget-boolean v8, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarLeapMonth:Z

    if-nez v8, :cond_5

    .line 946
    iget v8, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarMonth:I

    const/16 v9, 0x9

    if-ge v8, v9, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarMonth:I

    add-int/lit8 v9, v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 948
    .local v2, lmon:Ljava/lang/String;
    :goto_2
    iget v8, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarDate:I

    const/16 v9, 0xa

    if-ge v8, v9, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarDate:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 950
    .local v1, lday:Ljava/lang/String;
    :goto_3
    sget-object v8, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarHolidays:Ljava/util/Map;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 951
    iput-boolean v12, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarSpecialDay:Z

    .line 952
    sget-object v8, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarHolidays:Ljava/util/Map;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #lunarHoliday:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 953
    .restart local v4       #lunarHoliday:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/htc/util/calendar/holidays/LunarUtils;->mCnMonths:[Ljava/lang/String;

    iget v10, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarMonth:I

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/htc/util/calendar/holidays/LunarUtils;->mCnDays:[Ljava/lang/String;

    iget v10, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarDate:I

    add-int/lit8 v10, v10, -0x1

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 946
    .end local v1           #lday:Ljava/lang/String;
    .end local v2           #lmon:Ljava/lang/String;
    :cond_2
    iget v8, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarMonth:I

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 948
    .restart local v2       #lmon:Ljava/lang/String;
    :cond_3
    iget v8, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarDate:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 955
    .restart local v1       #lday:Ljava/lang/String;
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/htc/util/calendar/holidays/LunarUtils;->mCnMonths:[Ljava/lang/String;

    iget v10, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarMonth:I

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/htc/util/calendar/holidays/LunarUtils;->mCnDays:[Ljava/lang/String;

    iget v10, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarDate:I

    add-int/lit8 v10, v10, -0x1

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 959
    .end local v1           #lday:Ljava/lang/String;
    .end local v2           #lmon:Ljava/lang/String;
    :cond_5
    iget-boolean v8, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarLeapMonth:Z

    if-eqz v8, :cond_6

    .line 960
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/htc/util/calendar/holidays/LunarUtils;->getLeapTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/htc/util/calendar/holidays/LunarUtils;->mCnMonths:[Ljava/lang/String;

    iget v10, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarMonth:I

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/htc/util/calendar/holidays/LunarUtils;->mCnDays:[Ljava/lang/String;

    iget v10, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarDate:I

    add-int/lit8 v10, v10, -0x1

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 962
    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/htc/util/calendar/holidays/LunarUtils;->mCnMonths:[Ljava/lang/String;

    iget v10, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarMonth:I

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/htc/util/calendar/holidays/LunarUtils;->mCnDays:[Ljava/lang/String;

    iget v10, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarDate:I

    add-int/lit8 v10, v10, -0x1

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 971
    .restart local v0       #i:I
    :cond_7
    iget-wide v8, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mCurrentDateOffset:J

    iget-object v10, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mSolarTermsThisYear:[J

    aget-wide v10, v10, v0

    cmp-long v8, v8, v10

    if-gez v8, :cond_0

    .line 976
    :cond_8
    invoke-virtual {p0}, Lcom/htc/util/calendar/holidays/LunarUtils;->getSolarHoliday()Ljava/lang/String;

    move-result-object v5

    .line 979
    invoke-virtual {p0}, Lcom/htc/util/calendar/holidays/LunarUtils;->getSpecialHoliday()Ljava/lang/String;

    move-result-object v7

    .line 981
    iget-object v8, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mHolidays:Ljava/util/Map;

    const-string v9, "SolarHoliday"

    invoke-interface {v8, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    iget-object v8, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mHolidays:Ljava/util/Map;

    const-string v9, "SolarTerm"

    invoke-interface {v8, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 983
    iget-object v8, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mHolidays:Ljava/util/Map;

    const-string v9, "LunarDay"

    invoke-interface {v8, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 984
    iget-object v8, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mHolidays:Ljava/util/Map;

    const-string v9, "LunarHoliday"

    invoke-interface {v8, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    iget-object v8, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mHolidays:Ljava/util/Map;

    const-string v9, "SpecialHoliday"

    invoke-interface {v8, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 988
    iget-object v8, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mHolidays:Ljava/util/Map;

    return-object v8
.end method

.method protected getLunarDate()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 664
    iget-boolean v3, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarLeapMonth:Z

    if-nez v3, :cond_2

    .line 665
    iget v3, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarMonth:I

    const/16 v4, 0x9

    if-ge v3, v4, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarMonth:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 667
    .local v2, lmon:Ljava/lang/String;
    :goto_0
    iget v3, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarDate:I

    const/16 v4, 0xa

    if-ge v3, v4, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarDate:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 669
    .local v1, lday:Ljava/lang/String;
    :goto_1
    sget-object v3, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarHolidays:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 670
    iput-boolean v7, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarSpecialDay:Z

    .line 671
    sget-object v3, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarHolidays:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 701
    .end local v1           #lday:Ljava/lang/String;
    .end local v2           #lmon:Ljava/lang/String;
    :goto_2
    return-object v3

    .line 665
    :cond_0
    iget v3, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarMonth:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 667
    .restart local v2       #lmon:Ljava/lang/String;
    :cond_1
    iget v3, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarDate:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 676
    .end local v2           #lmon:Ljava/lang/String;
    :cond_2
    iget v3, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarMonth:I

    const/16 v4, 0xb

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarDate:I

    invoke-direct {p0}, Lcom/htc/util/calendar/holidays/LunarUtils;->getDaysInCurrentLunarMonth()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 677
    iput-boolean v7, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarSpecialDay:Z

    .line 678
    const-string v3, "\u9664\u5915"

    goto :goto_2

    .line 682
    :cond_3
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    const/16 v3, 0x18

    if-ge v0, v3, :cond_5

    .line 683
    iget-wide v3, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mCurrentDateOffset:J

    iget-object v5, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mSolarTermsThisYear:[J

    aget-wide v5, v5, v0

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    .line 684
    iput-boolean v7, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarSpecialDay:Z

    .line 685
    sget-object v3, Lcom/htc/util/calendar/holidays/LunarUtils;->mSolarTerms:[Ljava/lang/String;

    aget-object v3, v3, v0

    goto :goto_2

    .line 687
    :cond_4
    iget-wide v3, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mCurrentDateOffset:J

    iget-object v5, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mSolarTermsThisYear:[J

    aget-wide v5, v5, v0

    cmp-long v3, v3, v5

    if-gez v3, :cond_6

    .line 692
    :cond_5
    iget v3, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarDate:I

    if-ne v3, v7, :cond_8

    .line 693
    iput-boolean v7, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarSpecialDay:Z

    .line 694
    iget-boolean v3, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarLeapMonth:Z

    if-eqz v3, :cond_7

    .line 695
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/htc/util/calendar/holidays/LunarUtils;->getLeapTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/htc/util/calendar/holidays/LunarUtils;->mCnMonths:[Ljava/lang/String;

    iget v5, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarMonth:I

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 682
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 697
    :cond_7
    sget-object v3, Lcom/htc/util/calendar/holidays/LunarUtils;->mCnMonths:[Ljava/lang/String;

    iget v4, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarMonth:I

    aget-object v3, v3, v4

    goto :goto_2

    .line 700
    :cond_8
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarSpecialDay:Z

    .line 701
    sget-object v3, Lcom/htc/util/calendar/holidays/LunarUtils;->mCnDays:[Ljava/lang/String;

    iget v4, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mLunarDate:I

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    goto :goto_2
.end method

.method protected getSolarHoliday()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x2

    .line 724
    invoke-static {}, Lcom/htc/util/calendar/holidays/HolidayUtils;->isChinaSku()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ""

    .line 749
    :goto_0
    return-object v3

    .line 726
    :cond_0
    iget-object v3, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v3, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    const/16 v4, 0x9

    if-ge v3, v4, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v4, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 729
    .local v2, lmon:Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v3, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    const/16 v4, 0xa

    if-ge v3, v4, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v4, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 738
    .local v1, lday:Ljava/lang/String;
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 744
    .local v0, aOtherFormat:Ljava/lang/String;
    sget-object v3, Lcom/htc/util/calendar/holidays/LunarUtils;->mSolarHolidays:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 745
    sget-object v3, Lcom/htc/util/calendar/holidays/LunarUtils;->mSolarHolidays:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto/16 :goto_0

    .line 726
    .end local v0           #aOtherFormat:Ljava/lang/String;
    .end local v1           #lday:Ljava/lang/String;
    .end local v2           #lmon:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v3, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 729
    .restart local v2       #lmon:Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v3, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 746
    .restart local v0       #aOtherFormat:Ljava/lang/String;
    .restart local v1       #lday:Ljava/lang/String;
    :cond_3
    sget-object v3, Lcom/htc/util/calendar/holidays/LunarUtils;->mSolarHolidays:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 747
    sget-object v3, Lcom/htc/util/calendar/holidays/LunarUtils;->mSolarHolidays:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto/16 :goto_0

    .line 749
    :cond_4
    const-string v3, ""

    goto/16 :goto_0
.end method

.method public getSpecialHoliday()Ljava/lang/String;
    .locals 7

    .prologue
    .line 1031
    invoke-static {}, Lcom/htc/util/calendar/holidays/HolidayUtils;->isChinaSku()Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, ""

    .line 1045
    :goto_0
    return-object v5

    .line 1033
    :cond_0
    iget-object v5, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    if-eqz v5, :cond_2

    .line 1034
    iget-object v5, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 1035
    .local v4, year:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 1036
    .local v2, month:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1038
    .local v0, date:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1039
    .local v3, strdate:Ljava/lang/String;
    const-string v1, ""

    .line 1040
    .local v1, holiday:Ljava/lang/String;
    sget-object v5, Lcom/htc/util/calendar/holidays/LunarUtils;->mSpecailHoliday:Ljava/util/Map;

    if-eqz v5, :cond_1

    sget-object v5, Lcom/htc/util/calendar/holidays/LunarUtils;->mSpecailHoliday:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1041
    sget-object v5, Lcom/htc/util/calendar/holidays/LunarUtils;->mSpecailHoliday:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_0

    .line 1043
    :cond_1
    const-string v5, ""

    goto :goto_0

    .line 1045
    .end local v0           #date:Ljava/lang/String;
    .end local v1           #holiday:Ljava/lang/String;
    .end local v2           #month:Ljava/lang/String;
    .end local v3           #strdate:Ljava/lang/String;
    .end local v4           #year:Ljava/lang/String;
    :cond_2
    const-string v5, ""

    goto :goto_0
.end method

.method protected set(III)V
    .locals 7
    .parameter "year"
    .parameter "month"
    .parameter "date"

    .prologue
    const/4 v4, 0x0

    .line 307
    iget-object v0, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    .line 309
    invoke-direct {p0}, Lcom/htc/util/calendar/holidays/LunarUtils;->solarToLunar()V

    .line 311
    sget-object v0, Lcom/htc/util/calendar/holidays/LunarUtils;->mYear:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-direct {p0, v0}, Lcom/htc/util/calendar/holidays/LunarUtils;->cacularSpecialDay(Ljava/util/GregorianCalendar;)V

    .line 314
    sget-object v0, Lcom/htc/util/calendar/holidays/LunarUtils;->mYear:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/htc/util/calendar/holidays/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
