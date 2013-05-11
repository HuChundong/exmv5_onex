.class public abstract Lcom/htc/util/calendar/holidays/HolidayManager;
.super Ljava/lang/Object;
.source "HolidayManager.java"


# static fields
.field private static holidaymanager:Lcom/htc/util/calendar/holidays/HolidayManager;

.field protected static mResources:Landroid/content/res/Resources;


# instance fields
.field protected mResource:Landroid/content/res/Resources;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/htc/util/calendar/holidays/HolidayManager;
    .locals 2
    .parameter "context"

    .prologue
    .line 46
    const-class v1, Lcom/htc/util/calendar/holidays/HolidayManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/htc/util/calendar/holidays/HolidayManager;->holidaymanager:Lcom/htc/util/calendar/holidays/HolidayManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/util/calendar/holidays/HolidayManager;->holidaymanager:Lcom/htc/util/calendar/holidays/HolidayManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :goto_0
    monitor-exit v1

    return-object v0

    .line 48
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/htc/util/calendar/holidays/HolidayManager;->mResources:Landroid/content/res/Resources;

    .line 51
    invoke-static {p0}, Lcom/htc/util/calendar/holidays/HolidayUtils;->isChinaHoildayEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    new-instance v0, Lcom/htc/util/calendar/holidays/ChinaHoliday;

    invoke-direct {v0}, Lcom/htc/util/calendar/holidays/ChinaHoliday;-><init>()V

    sput-object v0, Lcom/htc/util/calendar/holidays/HolidayManager;->holidaymanager:Lcom/htc/util/calendar/holidays/HolidayManager;

    .line 56
    :cond_1
    :goto_1
    sget-object v0, Lcom/htc/util/calendar/holidays/HolidayManager;->holidaymanager:Lcom/htc/util/calendar/holidays/HolidayManager;

    goto :goto_0

    .line 53
    :cond_2
    invoke-static {}, Lcom/htc/util/calendar/holidays/HolidayUtils;->isJapanHoildayEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    new-instance v0, Lcom/htc/util/calendar/holidays/JapanHoliday;

    invoke-direct {v0}, Lcom/htc/util/calendar/holidays/JapanHoliday;-><init>()V

    sput-object v0, Lcom/htc/util/calendar/holidays/HolidayManager;->holidaymanager:Lcom/htc/util/calendar/holidays/HolidayManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public abstract getCalendar(III)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHoliday(III)Ljava/lang/String;
.end method

.method public getHolidays(III)Ljava/lang/String;
    .locals 1
    .parameter "year"
    .parameter "month"
    .parameter "date"

    .prologue
    .line 41
    const-string v0, ""

    return-object v0
.end method
