.class public Lcom/htc/util/calendar/holidays/JapanHolidayUtils;
.super Ljava/lang/Object;
.source "JapanHolidayUtils.java"


# static fields
.field private static final INDEX_ADULT_DAY:I = 0x0

.field private static final INDEX_AGED_DAY:I = 0x2

.field private static final INDEX_AUTUMAL:I = 0x5

.field private static final INDEX_MARINE_DAY:I = 0x1

.field private static final INDEX_SPORT_DAY:I = 0x3

.field private static final INDEX_STR_COMPENSATORY:I = 0x6

.field private static final INDEX_VERNAL:I = 0x4

.field private static JapanHolidays:[Ljava/lang/String; = null

.field private static JapanHolidays_date:[Ljava/lang/String; = null

.field private static final STR_ADULT_DAY:Ljava/lang/String; = "AdultDay"

.field private static final STR_AGED_DAY:Ljava/lang/String; = "AgedDay"

.field private static final STR_AUTUMAL_DAY:Ljava/lang/String; = "AutumnalDay"

.field private static final STR_COMPENSATORY:Ljava/lang/String; = "Compensatory"

.field private static final STR_MARINE_DAY:Ljava/lang/String; = "MarineDay"

.field private static final STR_SPORT_DAY:Ljava/lang/String; = "SportsDay"

.field private static final STR_VERNAL_DAY:Ljava/lang/String; = "VernalDay"

.field private static final TAG:Ljava/lang/String; = "JapanHolidayUtils"

.field private static mCompensatoryHoliday:Ljava/util/Map;
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

.field private static mCurrentDate:Ljava/util/GregorianCalendar;

.field private static mJapanHolidays:Ljava/util/Map;
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

.field private static singleHolidayUtils:Lcom/htc/util/calendar/holidays/JapanHolidayUtils;


# instance fields
.field private isAdultDay:Z

.field private isAgedDay:Z

.field private isAutumnalEquinox:Z

.field private isCompensatory:Z

.field private isCompensatoryDay:Z

.field private isMarineDay:Z

.field private isSpecialHoloiday:Z

.field private isSportsDay:Z

.field private isVernalEquinox:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mJapanHolidays:Ljava/util/Map;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mSpecailHoliday:Ljava/util/Map;

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mYear:Ljava/util/Map;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mCompensatoryHoliday:Ljava/util/Map;

    .line 100
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->singleHolidayUtils:Lcom/htc/util/calendar/holidays/JapanHolidayUtils;

    return-void
.end method

.method private constructor <init>(Landroid/content/res/Resources;)V
    .locals 5
    .parameter "rec"

    .prologue
    const/4 v4, 0x0

    .line 111
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-boolean v4, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isVernalEquinox:Z

    .line 25
    iput-boolean v4, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isAutumnalEquinox:Z

    .line 26
    iput-boolean v4, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isCompensatoryDay:Z

    .line 27
    iput-boolean v4, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isAgedDay:Z

    .line 28
    iput-boolean v4, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isMarineDay:Z

    .line 29
    iput-boolean v4, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isAdultDay:Z

    .line 30
    iput-boolean v4, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isSportsDay:Z

    .line 31
    iput-boolean v4, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isSpecialHoloiday:Z

    .line 32
    iput-boolean v4, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isCompensatory:Z

    .line 115
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    sput-object v2, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    .line 116
    sget-object v2, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    const/16 v3, 0xa

    invoke-virtual {v2, v3, v4}, Ljava/util/GregorianCalendar;->set(II)V

    .line 117
    sget-object v2, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    const/16 v3, 0xc

    invoke-virtual {v2, v3, v4}, Ljava/util/GregorianCalendar;->set(II)V

    .line 118
    sget-object v2, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    const/16 v3, 0xd

    invoke-virtual {v2, v3, v4}, Ljava/util/GregorianCalendar;->set(II)V

    .line 119
    const v2, 0x408002b

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->JapanHolidays:[Ljava/lang/String;

    .line 120
    const v2, 0x408002a

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->JapanHolidays_date:[Ljava/lang/String;

    .line 122
    sget-object v2, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->JapanHolidays:[Ljava/lang/String;

    array-length v1, v2

    .line 123
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 124
    sget-object v2, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mJapanHolidays:Ljava/util/Map;

    sget-object v3, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->JapanHolidays_date:[Ljava/lang/String;

    aget-object v3, v3, v0

    sget-object v4, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->JapanHolidays:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    :cond_0
    return-void
.end method

.method private calculateSpecialDay(Ljava/util/GregorianCalendar;)V
    .locals 12
    .parameter "cal"

    .prologue
    const/16 v11, 0xe

    const/4 v7, 0x7

    const-wide v9, 0x3fcf003686a4ca4fL

    const/4 v8, 0x1

    .line 333
    invoke-virtual {p1, v8}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 334
    .local v3, stryear:Ljava/lang/String;
    sget-object v4, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mYear:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 336
    const-string v2, ""

    .line 337
    .local v2, holiday:Ljava/lang/String;
    invoke-virtual {p1, v8}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v7}, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->getMondaybyMonth(III)Ljava/lang/String;

    move-result-object v2

    .line 338
    sget-object v4, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mSpecailHoliday:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "AdultDay"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    invoke-virtual {p1, v8}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    const/4 v5, 0x6

    invoke-static {v4, v5, v11}, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->getMondaybyMonth(III)Ljava/lang/String;

    move-result-object v2

    .line 341
    sget-object v4, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mSpecailHoliday:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "MarineDay"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    invoke-virtual {p1, v8}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    const/16 v5, 0x8

    invoke-static {v4, v5, v11}, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->getMondaybyMonth(III)Ljava/lang/String;

    move-result-object v2

    .line 344
    sget-object v4, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mSpecailHoliday:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "AgedDay"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    invoke-virtual {p1, v8}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    const/16 v5, 0x9

    invoke-static {v4, v5, v7}, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->getMondaybyMonth(III)Ljava/lang/String;

    move-result-object v2

    .line 347
    sget-object v4, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mSpecailHoliday:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "SportsDay"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    const-wide v4, 0x4034d7d566cf41f2L

    invoke-virtual {p1, v8}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v6

    add-int/lit16 v6, v6, -0x7bc

    int-to-double v6, v6

    mul-double/2addr v6, v9

    add-double/2addr v4, v6

    invoke-virtual {p1, v8}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v6

    add-int/lit16 v6, v6, -0x7bc

    div-int/lit8 v6, v6, 0x4

    int-to-double v6, v6

    sub-double/2addr v4, v6

    double-to-int v1, v4

    .line 350
    .local v1, VernalDay:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v8}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "3"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 351
    sget-object v4, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mSpecailHoliday:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "VernalDay"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    const-wide v4, 0x40373fb15b573eabL

    invoke-virtual {p1, v8}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v6

    add-int/lit16 v6, v6, -0x7bc

    int-to-double v6, v6

    mul-double/2addr v6, v9

    add-double/2addr v4, v6

    invoke-virtual {p1, v8}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v6

    add-int/lit16 v6, v6, -0x7bc

    div-int/lit8 v6, v6, 0x4

    int-to-double v6, v6

    sub-double/2addr v4, v6

    double-to-int v0, v4

    .line 354
    .local v0, AutumnalDay:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v8}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "9"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 355
    sget-object v4, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mSpecailHoliday:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "AutumnalDay"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    .end local v0           #AutumnalDay:I
    .end local v1           #VernalDay:I
    .end local v2           #holiday:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private checkCompensatory()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x5

    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 362
    sget-object v5, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v5, v11}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    .line 363
    .local v2, month:I
    sget-object v5, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v5, v10}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    .line 364
    .local v3, date:I
    sget-object v5, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v5, v9}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    .line 365
    .local v1, year:I
    sget-object v5, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    const/4 v6, 0x7

    invoke-virtual {v5, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    if-ne v5, v9, :cond_1

    sget-object v5, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-direct {p0, v5}, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isHoliday(Ljava/util/GregorianCalendar;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 367
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 368
    .local v0, cal:Ljava/util/GregorianCalendar;
    const/16 v5, 0xa

    invoke-virtual {v0, v5, v4}, Ljava/util/GregorianCalendar;->set(II)V

    .line 369
    const/16 v5, 0xc

    invoke-virtual {v0, v5, v4}, Ljava/util/GregorianCalendar;->set(II)V

    move v5, v4

    move v6, v4

    .line 370
    invoke-virtual/range {v0 .. v6}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    .line 372
    const/4 v8, 0x1

    .local v8, i:I
    :goto_0
    const/4 v4, 0x6

    if-ge v8, v4, :cond_1

    .line 374
    invoke-virtual {v0, v10, v9}, Ljava/util/GregorianCalendar;->add(II)V

    .line 376
    invoke-direct {p0, v0}, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isHoliday(Ljava/util/GregorianCalendar;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 372
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 381
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0, v11}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0, v10}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 383
    .local v7, com:Ljava/lang/String;
    sget-object v4, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mCompensatoryHoliday:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Compensatory"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    .end local v0           #cal:Ljava/util/GregorianCalendar;
    .end local v7           #com:Ljava/lang/String;
    .end local v8           #i:I
    :cond_1
    return-void
.end method

.method private checkSpecialHoliday(III)V
    .locals 15
    .parameter "year"
    .parameter "month"
    .parameter "date"

    .prologue
    .line 246
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isSpecialHoloiday:Z

    .line 248
    add-int/lit8 v7, p2, 0x1

    .line 250
    .local v7, monthOffset:I
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 251
    .local v9, strdate:Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 252
    .local v10, strmonth:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 254
    .local v11, stryear:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x2d

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 258
    .local v8, strDay:Ljava/lang/String;
    sget-object v12, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->getSpecialDate(Ljava/util/GregorianCalendar;I)Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, AdultDay:Ljava/lang/String;
    sget-object v12, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->getSpecialDate(Ljava/util/GregorianCalendar;I)Ljava/lang/String;

    move-result-object v4

    .line 260
    .local v4, MarineDay:Ljava/lang/String;
    sget-object v12, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    const/4 v13, 0x2

    invoke-static {v12, v13}, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->getSpecialDate(Ljava/util/GregorianCalendar;I)Ljava/lang/String;

    move-result-object v1

    .line 261
    .local v1, AgedDay:Ljava/lang/String;
    sget-object v12, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    const/4 v13, 0x3

    invoke-static {v12, v13}, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->getSpecialDate(Ljava/util/GregorianCalendar;I)Ljava/lang/String;

    move-result-object v5

    .line 262
    .local v5, SportDay:Ljava/lang/String;
    sget-object v12, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    const/4 v13, 0x4

    invoke-static {v12, v13}, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->getSpecialDate(Ljava/util/GregorianCalendar;I)Ljava/lang/String;

    move-result-object v6

    .line 263
    .local v6, VernalDay:Ljava/lang/String;
    sget-object v12, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    const/4 v13, 0x5

    invoke-static {v12, v13}, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->getSpecialDate(Ljava/util/GregorianCalendar;I)Ljava/lang/String;

    move-result-object v2

    .line 265
    .local v2, AutumnalDay:Ljava/lang/String;
    sget-object v12, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mCompensatoryHoliday:Ljava/util/Map;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "Compensatory"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 267
    .local v3, CompensatoryDay:Ljava/lang/String;
    const-string v12, "JapanHolidayUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Special holiday AdultDay is :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " & MarineDay is :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " & AgedDay is :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " & SportDay is :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " & VernalDay is :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " & AutumnalDay is :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " & CompensatoryDay is :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " & strDay is :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 279
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isAdultDay:Z

    .line 280
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isSpecialHoloiday:Z

    .line 283
    :cond_0
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 284
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isMarineDay:Z

    .line 285
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isSpecialHoloiday:Z

    .line 288
    :cond_1
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 289
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isAgedDay:Z

    .line 290
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isSpecialHoloiday:Z

    .line 294
    :cond_2
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 295
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isSportsDay:Z

    .line 296
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isSpecialHoloiday:Z

    .line 304
    :cond_3
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 305
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isCompensatoryDay:Z

    .line 306
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isCompensatory:Z

    .line 311
    :cond_4
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 312
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isSportsDay:Z

    .line 313
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isSpecialHoloiday:Z

    .line 318
    :cond_5
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 319
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isVernalEquinox:Z

    .line 320
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isSpecialHoloiday:Z

    .line 324
    :cond_6
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 325
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isAutumnalEquinox:Z

    .line 326
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isSpecialHoloiday:Z

    .line 328
    :cond_7
    return-void
.end method

.method private static getAdultDay(Ljava/util/GregorianCalendar;)Ljava/lang/String;
    .locals 3
    .parameter "cal"

    .prologue
    .line 528
    sget-object v0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->getMondaybyMonth(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getAgedDay(Ljava/util/GregorianCalendar;)Ljava/lang/String;
    .locals 3
    .parameter "cal"

    .prologue
    .line 541
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    const/16 v1, 0x8

    const/16 v2, 0xe

    invoke-static {v0, v1, v2}, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->getMondaybyMonth(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/res/Resources;)Lcom/htc/util/calendar/holidays/JapanHolidayUtils;
    .locals 1
    .parameter "res"

    .prologue
    .line 103
    sget-object v0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->singleHolidayUtils:Lcom/htc/util/calendar/holidays/JapanHolidayUtils;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;

    invoke-direct {v0, p0}, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;-><init>(Landroid/content/res/Resources;)V

    sput-object v0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->singleHolidayUtils:Lcom/htc/util/calendar/holidays/JapanHolidayUtils;

    .line 106
    :cond_0
    sget-object v0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->singleHolidayUtils:Lcom/htc/util/calendar/holidays/JapanHolidayUtils;

    return-object v0
.end method

.method private static getMarineDay(Ljava/util/GregorianCalendar;)Ljava/lang/String;
    .locals 3
    .parameter "cal"

    .prologue
    .line 534
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    const/4 v1, 0x6

    const/16 v2, 0xe

    invoke-static {v0, v1, v2}, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->getMondaybyMonth(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getMondaybyMonth(III)Ljava/lang/String;
    .locals 8
    .parameter "year"
    .parameter "month"
    .parameter "week_days"

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x1

    .line 493
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 494
    .local v0, cal:Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1, v6}, Ljava/util/Calendar;->set(III)V

    .line 496
    const/4 v5, 0x7

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 497
    .local v4, weekDay:I
    const/4 v1, 0x2

    .line 498
    .local v1, monDay:I
    const/4 v3, 0x1

    .line 500
    .local v3, sunDay:I
    const/4 v2, 0x0

    .line 503
    .local v2, sumOfDay:I
    if-ne v4, v1, :cond_0

    .line 504
    move v2, p2

    .line 517
    :goto_0
    invoke-virtual {v0, v7, v2}, Ljava/util/Calendar;->add(II)V

    .line 520
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 509
    :cond_0
    if-ne v4, v3, :cond_1

    .line 510
    rsub-int/lit8 v5, v4, 0x7

    add-int/2addr v5, v1

    add-int/2addr v5, p2

    add-int/lit8 v2, v5, -0x7

    goto :goto_0

    .line 513
    :cond_1
    rsub-int/lit8 v5, v4, 0x7

    add-int/2addr v5, v1

    add-int v2, v5, p2

    goto :goto_0
.end method

.method private static getSecondSunDayOfMay()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x1

    .line 649
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 650
    .local v0, cal:Ljava/util/Calendar;
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x4

    invoke-virtual {v0, v4, v5, v6}, Ljava/util/Calendar;->set(III)V

    .line 652
    const/4 v4, 0x7

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 653
    .local v3, weekDay:I
    const/4 v2, 0x1

    .line 654
    .local v2, sunDay:I
    const/4 v1, 0x0

    .line 655
    .local v1, sumDay:I
    if-ne v3, v2, :cond_0

    .line 656
    const/4 v1, 0x7

    .line 661
    :goto_0
    invoke-virtual {v0, v7, v1}, Ljava/util/Calendar;->add(II)V

    .line 662
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

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

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 659
    :cond_0
    rsub-int/lit8 v4, v3, 0x7

    add-int/2addr v4, v2

    add-int/lit8 v1, v4, 0x7

    goto :goto_0
.end method

.method private getSolarHoliday(Ljava/util/GregorianCalendar;)Ljava/lang/String;
    .locals 7
    .parameter "cal"

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x2

    .line 145
    invoke-virtual {p1, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    const/16 v4, 0x9

    if-ge v3, v4, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 148
    .local v2, lmon:Ljava/lang/String;
    :goto_0
    invoke-virtual {p1, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    const/16 v4, 0xa

    if-ge v3, v4, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, lday:Ljava/lang/String;
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {p1, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x7

    invoke-virtual {p1, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, aOtherFormat:Ljava/lang/String;
    sget-object v3, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mJapanHolidays:Ljava/util/Map;

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

    .line 164
    sget-object v3, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mJapanHolidays:Ljava/util/Map;

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

    .line 170
    :goto_2
    return-object v3

    .line 145
    .end local v0           #aOtherFormat:Ljava/lang/String;
    .end local v1           #lday:Ljava/lang/String;
    .end local v2           #lmon:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 148
    .restart local v2       #lmon:Ljava/lang/String;
    :cond_1
    invoke-virtual {p1, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 166
    .restart local v0       #aOtherFormat:Ljava/lang/String;
    .restart local v1       #lday:Ljava/lang/String;
    :cond_2
    sget-object v3, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mJapanHolidays:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 168
    sget-object v3, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mJapanHolidays:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_2

    .line 170
    :cond_3
    const-string v3, ""

    goto :goto_2
.end method

.method private static getSpecialDate(Ljava/util/GregorianCalendar;I)Ljava/lang/String;
    .locals 14
    .parameter "cal"
    .parameter "index"

    .prologue
    const/16 v10, 0xe

    const/4 v9, 0x7

    const-wide v12, 0x3fcf003686a4ca4fL

    const/4 v11, 0x1

    .line 553
    invoke-virtual {p0, v11}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 554
    .local v6, year:Ljava/lang/String;
    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 555
    .local v4, month:Ljava/lang/String;
    const/4 v7, 0x5

    invoke-virtual {p0, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 557
    .local v2, date:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x2d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 559
    .local v5, strdate:Ljava/lang/String;
    const-string v3, ""

    .line 562
    .local v3, holiday:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 644
    const-string v7, ""

    :goto_0
    return-object v7

    .line 566
    :pswitch_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "AdultDay"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 568
    sget-object v7, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mSpecailHoliday:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 569
    sget-object v7, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mSpecailHoliday:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    goto :goto_0

    .line 572
    :cond_0
    sget-object v7, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v7, v11}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v7

    const/4 v8, 0x0

    invoke-static {v7, v8, v9}, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->getMondaybyMonth(III)Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    .line 574
    goto :goto_0

    .line 578
    :pswitch_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "MarineDay"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 580
    sget-object v7, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mSpecailHoliday:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 581
    sget-object v7, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mSpecailHoliday:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #holiday:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .restart local v3       #holiday:Ljava/lang/String;
    :goto_1
    move-object v7, v3

    .line 587
    goto :goto_0

    .line 583
    :cond_1
    invoke-virtual {p0, v11}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v7

    const/4 v8, 0x6

    invoke-static {v7, v8, v10}, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->getMondaybyMonth(III)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 590
    :pswitch_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "AgedDay"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 591
    sget-object v7, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mSpecailHoliday:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 592
    sget-object v7, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mSpecailHoliday:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #holiday:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .restart local v3       #holiday:Ljava/lang/String;
    :goto_2
    move-object v7, v3

    .line 597
    goto/16 :goto_0

    .line 594
    :cond_2
    invoke-virtual {p0, v11}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v7

    const/16 v8, 0x8

    invoke-static {v7, v8, v10}, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->getMondaybyMonth(III)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 600
    :pswitch_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "SportsDay"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 601
    sget-object v7, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mSpecailHoliday:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 602
    sget-object v7, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mSpecailHoliday:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #holiday:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .restart local v3       #holiday:Ljava/lang/String;
    :goto_3
    move-object v7, v3

    .line 607
    goto/16 :goto_0

    .line 604
    :cond_3
    invoke-virtual {p0, v11}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v7

    const/16 v8, 0x9

    invoke-static {v7, v8, v9}, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->getMondaybyMonth(III)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 610
    :pswitch_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "VernalDay"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 611
    sget-object v7, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mSpecailHoliday:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 612
    sget-object v7, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mSpecailHoliday:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #holiday:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .restart local v3       #holiday:Ljava/lang/String;
    :goto_4
    move-object v7, v3

    .line 620
    goto/16 :goto_0

    .line 614
    :cond_4
    const-wide v7, 0x4034d7d566cf41f2L

    invoke-virtual {p0, v11}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v9

    add-int/lit16 v9, v9, -0x7bc

    int-to-double v9, v9

    mul-double/2addr v9, v12

    add-double/2addr v7, v9

    invoke-virtual {p0, v11}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v9

    add-int/lit16 v9, v9, -0x7bc

    div-int/lit8 v9, v9, 0x4

    int-to-double v9, v9

    sub-double/2addr v7, v9

    double-to-int v1, v7

    .line 618
    .local v1, VernalDay:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "3"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 623
    .end local v1           #VernalDay:I
    :pswitch_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "AutumnalDay"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 624
    sget-object v7, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mSpecailHoliday:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 625
    sget-object v7, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mSpecailHoliday:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #holiday:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .restart local v3       #holiday:Ljava/lang/String;
    :goto_5
    move-object v7, v3

    .line 633
    goto/16 :goto_0

    .line 627
    :cond_5
    const-wide v7, 0x40373fb15b573eabL

    invoke-virtual {p0, v11}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v9

    add-int/lit16 v9, v9, -0x7bc

    int-to-double v9, v9

    mul-double/2addr v9, v12

    add-double/2addr v7, v9

    invoke-virtual {p0, v11}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v9

    add-int/lit16 v9, v9, -0x7bc

    div-int/lit8 v9, v9, 0x4

    int-to-double v9, v9

    sub-double/2addr v7, v9

    double-to-int v0, v7

    .line 630
    .local v0, AutumnalDay:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "9"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    .line 636
    .end local v0           #AutumnalDay:I
    :pswitch_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Compensatory"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 637
    sget-object v7, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mSpecailHoliday:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 638
    sget-object v7, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mSpecailHoliday:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #holiday:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .restart local v3       #holiday:Ljava/lang/String;
    :cond_6
    move-object v7, v3

    .line 641
    goto/16 :goto_0

    .line 562
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private getSpecialHoliday()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 189
    const-string v0, ""

    .line 191
    .local v0, specialholiday:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isAutumnalEquinox:Z

    if-eqz v1, :cond_0

    .line 192
    const-string v0, "\u79cb\u5206\u306e\u65e5"

    .line 193
    iput-boolean v2, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isAutumnalEquinox:Z

    .line 197
    :cond_0
    iget-boolean v1, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isVernalEquinox:Z

    if-eqz v1, :cond_1

    .line 198
    const-string v0, "\u6625\u5206\u306e\u65e5"

    .line 199
    iput-boolean v2, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isVernalEquinox:Z

    .line 203
    :cond_1
    iget-boolean v1, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isCompensatoryDay:Z

    if-eqz v1, :cond_2

    .line 204
    const-string v0, "\u632f\u66ff\u4f11\u65e5"

    .line 205
    iput-boolean v2, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isCompensatoryDay:Z

    .line 206
    iput-boolean v2, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isCompensatory:Z

    .line 209
    :cond_2
    iget-boolean v1, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isMarineDay:Z

    if-eqz v1, :cond_3

    .line 210
    const-string v0, "\u6d77\u306e\u65e5"

    .line 211
    iput-boolean v2, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isMarineDay:Z

    .line 215
    :cond_3
    iget-boolean v1, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isAgedDay:Z

    if-eqz v1, :cond_4

    .line 217
    const-string v0, "\u656c\u8001\u306e\u65e5"

    .line 218
    iput-boolean v2, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isAgedDay:Z

    .line 222
    :cond_4
    iget-boolean v1, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isAdultDay:Z

    if-eqz v1, :cond_5

    .line 224
    const-string v0, "\u6210\u4eba\u306e\u65e5"

    .line 225
    iput-boolean v2, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isAdultDay:Z

    .line 229
    :cond_5
    iget-boolean v1, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isSportsDay:Z

    if-eqz v1, :cond_6

    .line 231
    const-string v0, "\u4f53\u80b2\u306e\u65e5"

    .line 232
    iput-boolean v2, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isSportsDay:Z

    .line 235
    :cond_6
    return-object v0
.end method

.method private static getSportsDay(Ljava/util/GregorianCalendar;)Ljava/lang/String;
    .locals 3
    .parameter "cal"

    .prologue
    .line 547
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    const/16 v1, 0x9

    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->getMondaybyMonth(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isCompensatoryHoliday()Z
    .locals 13

    .prologue
    .line 395
    sget-object v5, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    add-int/lit8 v2, v5, 0x1

    .line 396
    .local v2, month:I
    sget-object v5, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    .line 397
    .local v3, date:I
    sget-object v5, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    .line 402
    .local v1, year:I
    sget-object v5, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    const/4 v6, 0x7

    invoke-virtual {v5, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    .line 405
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 407
    .local v0, calThuesday:Ljava/util/GregorianCalendar;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    .line 408
    const/4 v5, 0x5

    const/4 v6, -0x1

    invoke-virtual {v0, v5, v6}, Ljava/util/GregorianCalendar;->add(II)V

    .line 410
    new-instance v4, Ljava/util/GregorianCalendar;

    invoke-direct {v4}, Ljava/util/GregorianCalendar;-><init>()V

    .line 411
    .local v4, calThursday:Ljava/util/GregorianCalendar;
    const/16 v5, 0xa

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/util/GregorianCalendar;->set(II)V

    .line 412
    const/16 v5, 0xc

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/util/GregorianCalendar;->set(II)V

    .line 413
    const/16 v5, 0xd

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/util/GregorianCalendar;->set(II)V

    .line 415
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual/range {v4 .. v10}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    .line 416
    const/4 v5, 0x5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Ljava/util/GregorianCalendar;->add(II)V

    .line 418
    invoke-direct {p0, v0}, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isHoliday(Ljava/util/GregorianCalendar;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-direct {p0, v4}, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isHoliday(Ljava/util/GregorianCalendar;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 420
    const/4 v5, 0x1

    .line 434
    .end local v0           #calThuesday:Ljava/util/GregorianCalendar;
    .end local v4           #calThursday:Ljava/util/GregorianCalendar;
    :goto_0
    return v5

    .line 425
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v6, v1, 0x2d

    add-int/2addr v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 427
    .local v12, strDay:Ljava/lang/String;
    sget-object v5, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mCompensatoryHoliday:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Compensatory"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 429
    .local v11, CompensatoryDay:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 430
    const/4 v5, 0x1

    goto :goto_0

    .line 434
    .end local v11           #CompensatoryDay:Ljava/lang/String;
    .end local v12           #strDay:Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private isHoliday(Ljava/util/GregorianCalendar;)Z
    .locals 12
    .parameter "cal"

    .prologue
    const/16 v11, 0x9

    const/4 v6, 0x1

    const/4 v10, 0x5

    const/4 v9, 0x2

    .line 445
    invoke-virtual {p1, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 446
    .local v5, year:Ljava/lang/String;
    invoke-virtual {p1, v9}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 447
    .local v1, month:Ljava/lang/String;
    invoke-virtual {p1, v10}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 449
    .local v0, date:Ljava/lang/String;
    invoke-virtual {p1, v9}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    if-ge v7, v11, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1, v9}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 453
    .local v4, tempmonth:Ljava/lang/String;
    :goto_0
    invoke-virtual {p1, v10}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v7

    if-ge v7, v11, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1, v10}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 458
    .local v3, tempdate:Ljava/lang/String;
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 481
    .local v2, temp:Ljava/lang/String;
    sget-object v7, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mSpecailHoliday:Ljava/util/Map;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 488
    :cond_0
    :goto_2
    return v6

    .line 449
    .end local v2           #temp:Ljava/lang/String;
    .end local v3           #tempdate:Ljava/lang/String;
    .end local v4           #tempmonth:Ljava/lang/String;
    :cond_1
    invoke-virtual {p1, v9}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 453
    .restart local v4       #tempmonth:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, v10}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 485
    .restart local v2       #temp:Ljava/lang/String;
    .restart local v3       #tempdate:Ljava/lang/String;
    :cond_3
    sget-object v7, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mJapanHolidays:Ljava/util/Map;

    invoke-interface {v7, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 488
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private isSunday(Ljava/util/GregorianCalendar;)Z
    .locals 2
    .parameter "cal"

    .prologue
    const/4 v0, 0x1

    .line 438
    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 440
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getHolidays()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isSpecialHoloiday:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isCompensatory:Z

    if-eqz v0, :cond_1

    .line 133
    :cond_0
    invoke-direct {p0}, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->getSpecialHoliday()Ljava/lang/String;

    move-result-object v0

    .line 136
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-direct {p0, v0}, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->getSolarHoliday(Ljava/util/GregorianCalendar;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected set(III)V
    .locals 8
    .parameter "year"
    .parameter "month"
    .parameter "date"

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 61
    sget-object v0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    .line 64
    sget-object v0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mYear:Ljava/util/Map;

    sget-object v1, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v1, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    const-string v0, "JapanHolidayUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cacularSpecialDay for year:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v2, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    sget-object v0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-direct {p0, v0}, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->calculateSpecialDay(Ljava/util/GregorianCalendar;)V

    .line 68
    sget-object v0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mYear:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :cond_0
    sget-object v0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v0, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    sget-object v1, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    sget-object v2, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->checkSpecialHoliday(III)V

    .line 75
    invoke-direct {p0}, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->checkCompensatory()V

    .line 98
    return-void
.end method
