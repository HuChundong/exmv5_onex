.class Lcom/htc/util/calendar/holidays/ChinaHoliday;
.super Lcom/htc/util/calendar/holidays/HolidayManager;
.source "HolidayManager.java"


# static fields
.field private static lunar:Lcom/htc/util/calendar/holidays/LunarUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/util/calendar/holidays/ChinaHoliday;->lunar:Lcom/htc/util/calendar/holidays/LunarUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/htc/util/calendar/holidays/HolidayManager;-><init>()V

    .line 69
    sget-object v0, Lcom/htc/util/calendar/holidays/ChinaHoliday;->mResources:Landroid/content/res/Resources;

    invoke-static {v0}, Lcom/htc/util/calendar/holidays/LunarUtils;->getInstance(Landroid/content/res/Resources;)Lcom/htc/util/calendar/holidays/LunarUtils;

    move-result-object v0

    sput-object v0, Lcom/htc/util/calendar/holidays/ChinaHoliday;->lunar:Lcom/htc/util/calendar/holidays/LunarUtils;

    .line 70
    return-void
.end method


# virtual methods
.method public getCalendar(III)Ljava/util/Map;
    .locals 2
    .parameter "year"
    .parameter "month"
    .parameter "date"
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

    .prologue
    .line 89
    sget-object v1, Lcom/htc/util/calendar/holidays/ChinaHoliday;->lunar:Lcom/htc/util/calendar/holidays/LunarUtils;

    invoke-virtual {v1, p1, p2, p3}, Lcom/htc/util/calendar/holidays/LunarUtils;->set(III)V

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 91
    .local v0, chinaCalendar:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v1, Lcom/htc/util/calendar/holidays/ChinaHoliday;->lunar:Lcom/htc/util/calendar/holidays/LunarUtils;

    invoke-virtual {v1}, Lcom/htc/util/calendar/holidays/LunarUtils;->getChinaCalendar()Ljava/util/Map;

    move-result-object v0

    .line 92
    return-object v0
.end method

.method public getHoliday(III)Ljava/lang/String;
    .locals 3
    .parameter "year"
    .parameter "month"
    .parameter "date"

    .prologue
    .line 74
    sget-object v2, Lcom/htc/util/calendar/holidays/ChinaHoliday;->lunar:Lcom/htc/util/calendar/holidays/LunarUtils;

    invoke-virtual {v2, p1, p2, p3}, Lcom/htc/util/calendar/holidays/LunarUtils;->set(III)V

    .line 75
    sget-object v2, Lcom/htc/util/calendar/holidays/ChinaHoliday;->lunar:Lcom/htc/util/calendar/holidays/LunarUtils;

    invoke-virtual {v2}, Lcom/htc/util/calendar/holidays/LunarUtils;->getSolarHoliday()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, solarHolidays:Ljava/lang/String;
    sget-object v2, Lcom/htc/util/calendar/holidays/ChinaHoliday;->lunar:Lcom/htc/util/calendar/holidays/LunarUtils;

    invoke-virtual {v2}, Lcom/htc/util/calendar/holidays/LunarUtils;->getSpecialHoliday()Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, specailHolidays:Ljava/lang/String;
    invoke-static {}, Lcom/htc/util/calendar/holidays/HolidayUtils;->isChinaSku()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ""

    if-eq v0, v2, :cond_0

    .line 83
    .end local v0           #solarHolidays:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 80
    .restart local v0       #solarHolidays:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/htc/util/calendar/holidays/HolidayUtils;->isChinaSku()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, ""

    if-eq v1, v2, :cond_1

    move-object v0, v1

    .line 81
    goto :goto_0

    .line 83
    :cond_1
    sget-object v2, Lcom/htc/util/calendar/holidays/ChinaHoliday;->lunar:Lcom/htc/util/calendar/holidays/LunarUtils;

    invoke-virtual {v2}, Lcom/htc/util/calendar/holidays/LunarUtils;->getLunarDate()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
