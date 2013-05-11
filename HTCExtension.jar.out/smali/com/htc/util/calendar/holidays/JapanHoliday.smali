.class Lcom/htc/util/calendar/holidays/JapanHoliday;
.super Lcom/htc/util/calendar/holidays/HolidayManager;
.source "HolidayManager.java"


# instance fields
.field private Utils:Lcom/htc/util/calendar/holidays/JapanHolidayUtils;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/htc/util/calendar/holidays/HolidayManager;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/util/calendar/holidays/JapanHoliday;->Utils:Lcom/htc/util/calendar/holidays/JapanHolidayUtils;

    .line 103
    sget-object v0, Lcom/htc/util/calendar/holidays/JapanHoliday;->mResources:Landroid/content/res/Resources;

    invoke-static {v0}, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->getInstance(Landroid/content/res/Resources;)Lcom/htc/util/calendar/holidays/JapanHolidayUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/calendar/holidays/JapanHoliday;->Utils:Lcom/htc/util/calendar/holidays/JapanHolidayUtils;

    .line 104
    return-void
.end method


# virtual methods
.method public getCalendar(III)Ljava/util/Map;
    .locals 1
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
    .line 115
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHoliday(III)Ljava/lang/String;
    .locals 1
    .parameter "year"
    .parameter "month"
    .parameter "date"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/htc/util/calendar/holidays/JapanHoliday;->Utils:Lcom/htc/util/calendar/holidays/JapanHolidayUtils;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->set(III)V

    .line 110
    iget-object v0, p0, Lcom/htc/util/calendar/holidays/JapanHoliday;->Utils:Lcom/htc/util/calendar/holidays/JapanHolidayUtils;

    invoke-virtual {v0}, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->getHolidays()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
