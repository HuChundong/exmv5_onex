.class public Lcom/htc/util/calendar/vcalendar/VCalendarUtils;
.super Ljava/lang/Object;
.source "VCalendarUtils.java"

# interfaces
.implements Lcom/htc/util/calendar/vcalendar/HashItem;


# static fields
.field public static final REMINDERS_PROJECTION:[Ljava/lang/String; = null

.field public static final REMINDERS_WHERE:Ljava/lang/String; = "event_id=%d AND (method=1 OR method=0)"

.field private static final RULE_SEPARATOR:Ljava/lang/String; = "\n"

.field private static final TAG:Ljava/lang/String; = "VCalendarUtils"

.field private static final VBEGIN:Ljava/lang/String; = "BEGIN:VCALENDAR"

.field private static final VEND:Ljava/lang/String; = "END:VCALENDAR"

.field private static final default_charset:Ljava/lang/String; = "UTF-8"

.field static final weekDayAry:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final weekDays:[Ljava/lang/String;


# instance fields
.field private final DEBUG:Z

.field public final WKST:Ljava/lang/String;

.field private _id:Ljava/lang/String;

.field public alarm:J

.field public categories:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public dtEnd:Landroid/text/format/Time;

.field public dtStart:Landroid/text/format/Time;

.field public duration:Ljava/lang/String;

.field public exDate:Ljava/lang/String;

.field public exRule:Ljava/lang/String;

.field public hasAlarm:Z

.field public isAllDay:Z

.field public last_update_time:Ljava/lang/String;

.field public location:Ljava/lang/String;

.field private mMultiVCal_EventAlarm_ContentValue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private mMultiVCal_Event_ContentValue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private mMultiVCal_ToDoAlarm_ContentValue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private mMultiVCal_ToDo_ContentValue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field public priority:Ljava/lang/String;

.field public rDate:Ljava/lang/String;

.field public rRule:Ljava/lang/String;

.field public status:Ljava/lang/String;

.field public strAlarm:Ljava/lang/String;

.field public strDTEnd:Ljava/lang/String;

.field public strDTStart:Ljava/lang/String;

.field public summary:Ljava/lang/String;

.field public timezone:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public uid:Ljava/lang/String;

.field private vCalendar:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 209
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "minutes"

    aput-object v1, v0, v4

    const-string v1, "method"

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->REMINDERS_PROJECTION:[Ljava/lang/String;

    .line 232
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->weekDayAry:Ljava/util/HashMap;

    .line 234
    sget-object v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->weekDayAry:Ljava/util/HashMap;

    const-string v1, "SU"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->weekDayAry:Ljava/util/HashMap;

    const-string v1, "MO"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->weekDayAry:Ljava/util/HashMap;

    const-string v1, "TU"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->weekDayAry:Ljava/util/HashMap;

    const-string v1, "WE"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->weekDayAry:Ljava/util/HashMap;

    const-string v1, "TH"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->weekDayAry:Ljava/util/HashMap;

    const-string v1, "FR"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->weekDayAry:Ljava/util/HashMap;

    const-string v1, "SA"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "SU"

    aput-object v1, v0, v3

    const-string v1, "MO"

    aput-object v1, v0, v4

    const-string v1, "TU"

    aput-object v1, v0, v5

    const-string v1, "WE"

    aput-object v1, v0, v6

    const-string v1, "TH"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "FR"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "SA"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->weekDays:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 251
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 188
    const-string v0, "SU"

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->WKST:Ljava/lang/String;

    .line 219
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    iput-boolean v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->DEBUG:Z

    .line 245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_Event_ContentValue:Ljava/util/ArrayList;

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_ToDo_ContentValue:Ljava/util/ArrayList;

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_EventAlarm_ContentValue:Ljava/util/ArrayList;

    .line 248
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_ToDoAlarm_ContentValue:Ljava/util/ArrayList;

    .line 254
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .parameter "c"
    .parameter "uniEventUri"

    .prologue
    .line 266
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 188
    const-string v0, "SU"

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->WKST:Ljava/lang/String;

    .line 219
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    iput-boolean v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->DEBUG:Z

    .line 245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_Event_ContentValue:Ljava/util/ArrayList;

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_ToDo_ContentValue:Ljava/util/ArrayList;

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_EventAlarm_ContentValue:Ljava/util/ArrayList;

    .line 248
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_ToDoAlarm_ContentValue:Ljava/util/ArrayList;

    .line 268
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;Landroid/content/Context;)V
    .locals 1
    .parameter "eventCur"
    .parameter "c"

    .prologue
    .line 261
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 188
    const-string v0, "SU"

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->WKST:Ljava/lang/String;

    .line 219
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    iput-boolean v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->DEBUG:Z

    .line 245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_Event_ContentValue:Ljava/util/ArrayList;

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_ToDo_ContentValue:Ljava/util/ArrayList;

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_EventAlarm_ContentValue:Ljava/util/ArrayList;

    .line 248
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_ToDoAlarm_ContentValue:Ljava/util/ArrayList;

    .line 262
    invoke-direct {p0, p1, p2}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->init(Landroid/database/Cursor;Landroid/content/Context;)V

    .line 263
    return-void
.end method

.method private checkMonthDayWithOffset(ILandroid/text/format/Time;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "dayOffset"
    .parameter "dbStartTime"
    .parameter "monthDay"

    .prologue
    const/4 v6, 0x4

    .line 1803
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1804
    .local v1, nDay:I
    invoke-virtual {p2, v6}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v0

    .line 1805
    .local v0, MAX_DAY:I
    add-int v2, v1, p1

    .line 1807
    .local v2, tempDay:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nDay: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->debug(Ljava/lang/String;)V

    .line 1808
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MAX_DAY: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->debug(Ljava/lang/String;)V

    .line 1809
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tempDay: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->debug(Ljava/lang/String;)V

    .line 1810
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dbStartTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->debug(Ljava/lang/String;)V

    .line 1811
    sub-int v3, v2, v0

    if-lez v3, :cond_1

    .line 1813
    sub-int v3, v2, v0

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v1, v3, 0x1

    .line 1829
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">> nDay: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->debug(Ljava/lang/String;)V

    .line 1830
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1814
    :cond_1
    if-nez v2, :cond_3

    .line 1816
    iget v3, p2, Landroid/text/format/Time;->month:I

    if-nez v3, :cond_2

    .line 1817
    iget v3, p2, Landroid/text/format/Time;->monthDay:I

    const/16 v4, 0xb

    iget v5, p2, Landroid/text/format/Time;->year:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p2, Landroid/text/format/Time;->year:I

    invoke-virtual {p2, v3, v4, v5}, Landroid/text/format/Time;->set(III)V

    .line 1821
    :goto_1
    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 1822
    invoke-virtual {p2, v6}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v1

    goto :goto_0

    .line 1819
    :cond_2
    iget v3, p2, Landroid/text/format/Time;->monthDay:I

    iget v4, p2, Landroid/text/format/Time;->month:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p2, Landroid/text/format/Time;->month:I

    iget v5, p2, Landroid/text/format/Time;->year:I

    invoke-virtual {p2, v3, v4, v5}, Landroid/text/format/Time;->set(III)V

    goto :goto_1

    .line 1823
    :cond_3
    iget v3, p2, Landroid/text/format/Time;->monthDay:I

    add-int/2addr v3, p1

    if-eq v1, v3, :cond_0

    .line 1827
    move v1, v2

    goto :goto_0
.end method

.method private checkMonthWithOffset(ILandroid/text/format/Time;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "dayOffset"
    .parameter "dbStartTime"
    .parameter "month"
    .parameter "monthDay"

    .prologue
    .line 1834
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1835
    .local v2, nMonth:I
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1837
    .local v1, nDay:I
    const/4 v4, 0x4

    invoke-virtual {p2, v4}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v0

    .line 1838
    .local v0, MAX_DAY:I
    add-int v3, v1, p1

    .line 1840
    .local v3, tempDay:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nMonth, nDay: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->debug(Ljava/lang/String;)V

    .line 1841
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MAX_DAY: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->debug(Ljava/lang/String;)V

    .line 1842
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tempDay: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->debug(Ljava/lang/String;)V

    .line 1844
    sub-int v4, v3, v0

    if-lez v4, :cond_1

    .line 1846
    sub-int v4, v3, v0

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v1, v4, 0x1

    .line 1847
    add-int/lit8 v2, v2, 0x1

    .line 1849
    const/16 v4, 0xc

    if-le v2, v4, :cond_0

    .line 1850
    const/4 v2, 0x1

    .line 1860
    :cond_0
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ">> nMonth: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->debug(Ljava/lang/String;)V

    .line 1861
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1852
    :cond_1
    if-gtz v3, :cond_0

    .line 1854
    add-int/lit8 v2, v2, -0x1

    .line 1856
    if-gtz v2, :cond_0

    .line 1857
    const/16 v2, 0xc

    goto :goto_0
.end method

.method private checkTimeObj(Ljava/lang/String;)Z
    .locals 8
    .parameter "strTime"

    .prologue
    const/16 v7, 0x3b

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1865
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "check time obj - Date: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->debug(Ljava/lang/String;)V

    .line 1867
    const/4 v0, 0x0

    .line 1868
    .local v0, bHaveZ:Z
    const/4 v1, 0x1

    .line 1870
    .local v1, bInUTC:Z
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 1871
    .local v2, t:Landroid/text/format/Time;
    invoke-virtual {v2, p1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    move-result v1

    .line 1873
    const-string v5, "Z"

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 1875
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bHaveZ:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bInUTC:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->debug(Ljava/lang/String;)V

    .line 1876
    if-nez v1, :cond_0

    if-nez v0, :cond_a

    .line 1877
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "t year "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/text/format/Time;->year:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->debug(Ljava/lang/String;)V

    .line 1879
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "t month "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/text/format/Time;->month:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->debug(Ljava/lang/String;)V

    .line 1881
    iget v5, v2, Landroid/text/format/Time;->month:I

    if-ltz v5, :cond_1

    iget v5, v2, Landroid/text/format/Time;->month:I

    const/16 v6, 0xb

    if-le v5, v6, :cond_2

    .line 1882
    :cond_1
    const-string v4, "VCalendarUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "month out of range ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/text/format/Time;->month:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1917
    :goto_0
    return v3

    .line 1886
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "t monthDay "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->debug(Ljava/lang/String;)V

    .line 1888
    iget v5, v2, Landroid/text/format/Time;->monthDay:I

    if-lt v5, v4, :cond_3

    iget v5, v2, Landroid/text/format/Time;->monthDay:I

    const/16 v6, 0x1f

    if-le v5, v6, :cond_4

    .line 1889
    :cond_3
    const-string v4, "VCalendarUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "monthDay out of range ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1893
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "t hour "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/text/format/Time;->hour:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->debug(Ljava/lang/String;)V

    .line 1895
    iget v5, v2, Landroid/text/format/Time;->hour:I

    if-ltz v5, :cond_5

    iget v5, v2, Landroid/text/format/Time;->hour:I

    const/16 v6, 0x17

    if-le v5, v6, :cond_6

    .line 1896
    :cond_5
    const-string v4, "VCalendarUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hour out of range ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/text/format/Time;->hour:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1900
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "t minute "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/text/format/Time;->minute:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->debug(Ljava/lang/String;)V

    .line 1902
    iget v5, v2, Landroid/text/format/Time;->minute:I

    if-ltz v5, :cond_7

    iget v5, v2, Landroid/text/format/Time;->minute:I

    if-le v5, v7, :cond_8

    .line 1903
    :cond_7
    const-string v4, "VCalendarUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "minute out of range ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/text/format/Time;->minute:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1907
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "t second "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/text/format/Time;->second:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->debug(Ljava/lang/String;)V

    .line 1909
    iget v5, v2, Landroid/text/format/Time;->second:I

    if-ltz v5, :cond_9

    iget v5, v2, Landroid/text/format/Time;->second:I

    if-le v5, v7, :cond_b

    .line 1910
    :cond_9
    const-string v4, "VCalendarUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "second out of range ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/text/format/Time;->second:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1914
    :cond_a
    const-string v4, "VCalendarUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parse :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " error"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_b
    move v3, v4

    .line 1917
    goto/16 :goto_0
.end method

.method private checkTimeStringInAllDay(Ljava/lang/String;Landroid/text/format/Time;)V
    .locals 2
    .parameter "strDTStart"
    .parameter "eventTime"

    .prologue
    .line 1940
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x9

    if-gt v0, v1, :cond_0

    .line 1941
    const/4 v0, 0x0

    iput-boolean v0, p2, Landroid/text/format/Time;->allDay:Z

    .line 1943
    :cond_0
    return-void
.end method

.method private checkTimeUTC(Ljava/lang/String;)Z
    .locals 3
    .parameter "strTime"

    .prologue
    .line 2033
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check time UTC - Date: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->debug(Ljava/lang/String;)V

    .line 2034
    const/4 v0, 0x0

    .line 2035
    .local v0, bHaveZ:Z
    const-string v1, "Z"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 2036
    return v0
.end method

.method private checkWeekDayWithOffset(ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "dayOffset"
    .parameter "weekDay"

    .prologue
    .line 1784
    const/4 v1, 0x0

    .line 1786
    .local v1, nIdx:I
    :try_start_0
    sget-object v2, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->weekDayAry:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1790
    :goto_0
    const-string v2, "VCalendarUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dayOffset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " weekDay: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " nIdx: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1791
    add-int/2addr v1, p1

    .line 1793
    if-gez v1, :cond_1

    .line 1794
    const/4 v1, 0x6

    .line 1798
    :cond_0
    :goto_1
    const-string v2, "VCalendarUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nIdx: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1799
    sget-object v2, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->weekDays:[Ljava/lang/String;

    aget-object v2, v2, v1

    return-object v2

    .line 1787
    :catch_0
    move-exception v0

    .line 1788
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "VCalendarUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkWeekDayWithOffset : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1795
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v2, 0x6

    if-le v1, v2, :cond_0

    .line 1796
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 701
    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->uid:Ljava/lang/String;

    .line 702
    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    .line 703
    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    .line 704
    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTEnd:Ljava/lang/String;

    .line 705
    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtEnd:Landroid/text/format/Time;

    .line 706
    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strAlarm:Ljava/lang/String;

    .line 707
    iput-boolean v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->hasAlarm:Z

    .line 708
    iput-boolean v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isAllDay:Z

    .line 709
    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->duration:Ljava/lang/String;

    .line 710
    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->location:Ljava/lang/String;

    .line 711
    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->summary:Ljava/lang/String;

    .line 712
    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    .line 713
    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->rRule:Ljava/lang/String;

    .line 714
    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->rDate:Ljava/lang/String;

    .line 715
    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->exRule:Ljava/lang/String;

    .line 716
    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->exDate:Ljava/lang/String;

    .line 717
    return-void
.end method

.method private static convertLongToRFC2445DateTime(Landroid/text/format/Time;)Ljava/lang/String;
    .locals 1
    .parameter "time"

    .prologue
    .line 1616
    const-string v0, "%Y%m%dT%H%M00Z"

    invoke-virtual {p0, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private debug(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1921
    iget-boolean v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1922
    const-string v0, "VCalendarUtils"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1924
    :cond_0
    return-void
.end method

.method private static escapeCharacters(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "unescaped"

    .prologue
    .line 1976
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1977
    const-string v4, ""

    .line 2021
    :goto_0
    return-object v4

    .line 1980
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1981
    .local v3, tmpBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1982
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 1983
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1984
    .local v0, ch:C
    const v4, 0xff0d

    if-ne v0, v4, :cond_1

    .line 1985
    const/16 v0, 0x2d

    .line 1988
    :cond_1
    sparse-switch v0, :sswitch_data_0

    .line 2016
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1982
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1990
    :sswitch_0
    const/16 v4, 0x5c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1991
    const/16 v4, 0x3b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2012
    :sswitch_1
    const-string v4, "\\\\"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2021
    .end local v0           #ch:C
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1988
    nop

    :sswitch_data_0
    .sparse-switch
        0x3b -> :sswitch_0
        0x5c -> :sswitch_1
    .end sparse-switch
.end method

.method private static extractDates(Lcom/android/calendarcommon/ICalendar$Property;)Ljava/lang/String;
    .locals 3
    .parameter "recurrence"

    .prologue
    .line 407
    if-nez p0, :cond_0

    .line 408
    const/4 v1, 0x0

    .line 414
    :goto_0
    return-object v1

    .line 410
    :cond_0
    const-string v1, "TZID"

    invoke-virtual {p0, v1}, Lcom/android/calendarcommon/ICalendar$Property;->getFirstParameter(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Parameter;

    move-result-object v0

    .line 411
    .local v0, tzidParam:Lcom/android/calendarcommon/ICalendar$Parameter;
    if-eqz v0, :cond_1

    .line 412
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/android/calendarcommon/ICalendar$Parameter;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 414
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static extractDurationMinutes(Landroid/text/format/Time;)J
    .locals 4
    .parameter "t"

    .prologue
    .line 517
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private static extractDurationMinutes(Ljava/lang/String;)J
    .locals 10
    .parameter "t"

    .prologue
    const/4 v9, -0x1

    .line 466
    const/4 v4, 0x0

    .local v4, pos1:I
    const/4 v5, 0x0

    .line 467
    .local v5, pos2:I
    const/4 v3, 0x0

    .line 468
    .local v3, negative:Z
    const/4 v0, 0x0

    .local v0, day:I
    const/4 v1, 0x0

    .local v1, hour:I
    const/4 v2, 0x0

    .local v2, minute:I
    const/4 v6, 0x0

    .local v6, second:I
    const/4 v7, 0x0

    .line 471
    .local v7, week:I
    const/16 v8, 0x2d

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-eq v8, v9, :cond_0

    .line 472
    const/4 v3, 0x1

    .line 473
    :cond_0
    const/16 v8, 0x50

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 474
    if-ne v4, v9, :cond_2

    .line 513
    :cond_1
    :goto_0
    mul-int/lit8 v8, v1, 0x3c

    add-int/2addr v8, v2

    mul-int/lit8 v9, v0, 0x18

    mul-int/lit8 v9, v9, 0x3c

    add-int/2addr v8, v9

    int-to-long v8, v8

    return-wide v8

    .line 478
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 480
    const/16 v8, 0x44

    invoke-virtual {p0, v8, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 481
    if-eq v5, v9, :cond_3

    .line 482
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 485
    :cond_3
    const/16 v8, 0x54

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 486
    if-eq v5, v9, :cond_6

    .line 487
    add-int/lit8 v4, v5, 0x1

    .line 488
    const/16 v8, 0x48

    invoke-virtual {p0, v8, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 489
    if-eq v5, v9, :cond_4

    .line 490
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 491
    add-int/lit8 v4, v5, 0x1

    .line 493
    :cond_4
    const/16 v8, 0x4d

    invoke-virtual {p0, v8, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 494
    if-eq v5, v9, :cond_5

    .line 495
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 496
    add-int/lit8 v4, v5, 0x1

    .line 498
    :cond_5
    const/16 v8, 0x53

    invoke-virtual {p0, v8, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 499
    if-eq v5, v9, :cond_6

    .line 500
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 501
    add-int/lit8 v4, v5, 0x1

    .line 505
    :cond_6
    const/16 v8, 0x57

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 506
    if-eq v5, v9, :cond_1

    .line 507
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 508
    mul-int/lit8 v0, v7, 0x7

    goto :goto_0
.end method

.method private static extractString(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "component"
    .parameter "propertyName"

    .prologue
    .line 419
    invoke-static {p0, p1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->extractString_Impl(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 421
    .local v0, val:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 422
    const/4 v1, 0x0

    .line 430
    :goto_0
    return-object v1

    .line 424
    :cond_0
    const-string v1, "\r\n"

    const-string v2, "\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 426
    invoke-static {}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isSBM()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 427
    const-string v1, "\\\\"

    const-string v2, "\\"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 428
    const-string v1, "\\;"

    const-string v2, ";"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v1, v0

    .line 430
    goto :goto_0
.end method

.method private static extractString_Impl(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "component"
    .parameter "propertyName"

    .prologue
    const/4 v5, 0x0

    .line 435
    invoke-virtual {p0, p1}, Lcom/android/calendarcommon/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Property;

    move-result-object v3

    .line 436
    .local v3, property:Lcom/android/calendarcommon/ICalendar$Property;
    if-eqz v3, :cond_0

    .line 438
    const-string v6, "ENCODING"

    invoke-virtual {v3, v6}, Lcom/android/calendarcommon/ICalendar$Property;->getFirstParameter(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Parameter;

    move-result-object v2

    .line 439
    .local v2, enc:Lcom/android/calendarcommon/ICalendar$Parameter;
    const-string v6, "CHARSET"

    invoke-virtual {v3, v6}, Lcom/android/calendarcommon/ICalendar$Property;->getFirstParameter(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Parameter;

    move-result-object v0

    .line 442
    .local v0, charSet:Lcom/android/calendarcommon/ICalendar$Parameter;
    if-nez v2, :cond_1

    .line 443
    invoke-virtual {v3}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 462
    .end local v0           #charSet:Lcom/android/calendarcommon/ICalendar$Parameter;
    .end local v2           #enc:Lcom/android/calendarcommon/ICalendar$Parameter;
    :cond_0
    :goto_0
    return-object v5

    .line 445
    .restart local v0       #charSet:Lcom/android/calendarcommon/ICalendar$Parameter;
    .restart local v2       #enc:Lcom/android/calendarcommon/ICalendar$Parameter;
    :cond_1
    iget-object v6, v2, Lcom/android/calendarcommon/ICalendar$Parameter;->value:Ljava/lang/String;

    const-string v7, "QUOTED-PRINTABLE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 446
    new-instance v4, Lorg/apache/commons/codec/net/QuotedPrintableCodec;

    invoke-direct {v4}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;-><init>()V

    .line 448
    .local v4, qpdec:Lorg/apache/commons/codec/net/QuotedPrintableCodec;
    if-nez v0, :cond_2

    .line 449
    :try_start_0
    invoke-virtual {v3}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getDefaultCharSet()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 451
    :cond_2
    invoke-virtual {v3}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/android/calendarcommon/ICalendar$Parameter;->value:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 453
    :catch_0
    move-exception v1

    .line 454
    .local v1, e:Ljava/lang/Exception;
    goto :goto_0

    .line 457
    .end local v1           #e:Ljava/lang/Exception;
    .end local v4           #qpdec:Lorg/apache/commons/codec/net/QuotedPrintableCodec;
    :cond_3
    iget-object v6, v2, Lcom/android/calendarcommon/ICalendar$Parameter;->value:Ljava/lang/String;

    const-string v7, "BASE64"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 458
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v3}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v6}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method private static extractValue(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "component"
    .parameter "propertyName"

    .prologue
    .line 372
    invoke-virtual {p0, p1}, Lcom/android/calendarcommon/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Property;

    move-result-object v0

    .line 373
    .local v0, property:Lcom/android/calendarcommon/ICalendar$Property;
    if-eqz v0, :cond_0

    .line 374
    invoke-virtual {v0}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 376
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static flattenProperties(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "component"
    .parameter "name"

    .prologue
    .line 381
    invoke-virtual {p0, p1}, Lcom/android/calendarcommon/ICalendar$Component;->getProperties(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 382
    .local v2, properties:Ljava/util/List;,"Ljava/util/List<Lcom/android/calendarcommon/ICalendar$Property;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 383
    :cond_0
    const/4 v5, 0x0

    .line 403
    :goto_0
    return-object v5

    .line 386
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 387
    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/calendarcommon/ICalendar$Property;

    invoke-virtual {v5}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 390
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 392
    .local v4, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 393
    .local v0, first:Z
    invoke-virtual {p0, p1}, Lcom/android/calendarcommon/ICalendar$Component;->getProperties(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calendarcommon/ICalendar$Property;

    .line 394
    .local v3, property:Lcom/android/calendarcommon/ICalendar$Property;
    if-eqz v0, :cond_3

    .line 395
    const/4 v0, 0x0

    .line 401
    :goto_2
    invoke-virtual {v3}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 399
    :cond_3
    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 403
    .end local v3           #property:Lcom/android/calendarcommon/ICalendar$Property;
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static getDefaultCharSet()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1766
    invoke-static {}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isSBM()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1767
    const-string v0, "Shift_JIS"

    .line 1777
    .local v0, charSet:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1768
    .end local v0           #charSet:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isBig5()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1769
    const-string v0, "BIG5"

    .restart local v0       #charSet:Ljava/lang/String;
    goto :goto_0

    .line 1770
    .end local v0           #charSet:Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isGB2312()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1771
    const-string v0, "GB2312"

    .restart local v0       #charSet:Ljava/lang/String;
    goto :goto_0

    .line 1772
    .end local v0           #charSet:Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isISO8859_8()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1773
    const-string v0, "ISO-8859-8"

    .restart local v0       #charSet:Ljava/lang/String;
    goto :goto_0

    .line 1775
    .end local v0           #charSet:Ljava/lang/String;
    :cond_3
    const-string v0, "UTF-8"

    .restart local v0       #charSet:Ljava/lang/String;
    goto :goto_0
.end method

.method private getMonthDayOffset(Landroid/text/format/Time;Landroid/text/format/Time;)I
    .locals 3
    .parameter "t1"
    .parameter "t2"

    .prologue
    .line 1927
    const-string v0, "VCalendarUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "t1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1928
    const-string v0, "VCalendarUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "t2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1930
    iget v0, p1, Landroid/text/format/Time;->year:I

    iget v1, p2, Landroid/text/format/Time;->year:I

    if-le v0, v1, :cond_0

    .line 1931
    const/4 v0, 0x1

    .line 1935
    :goto_0
    return v0

    .line 1932
    :cond_0
    iget v0, p1, Landroid/text/format/Time;->year:I

    iget v1, p2, Landroid/text/format/Time;->year:I

    if-ge v0, v1, :cond_1

    .line 1933
    const/4 v0, -0x1

    goto :goto_0

    .line 1935
    :cond_1
    iget v0, p1, Landroid/text/format/Time;->yearDay:I

    iget v1, p2, Landroid/text/format/Time;->yearDay:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private getPriorityString(I)Ljava/lang/String;
    .locals 1
    .parameter "p"

    .prologue
    .line 737
    packed-switch p1, :pswitch_data_0

    .line 754
    const-string v0, "undefined priority"

    .line 756
    .local v0, result:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 742
    .end local v0           #result:Ljava/lang/String;
    :pswitch_0
    const-string v0, "HIGH"

    .line 743
    .restart local v0       #result:Ljava/lang/String;
    goto :goto_0

    .line 745
    .end local v0           #result:Ljava/lang/String;
    :pswitch_1
    const-string v0, "MEDIUM"

    .line 746
    .restart local v0       #result:Ljava/lang/String;
    goto :goto_0

    .line 751
    .end local v0           #result:Ljava/lang/String;
    :pswitch_2
    const-string v0, "LOW"

    .line 752
    .restart local v0       #result:Ljava/lang/String;
    goto :goto_0

    .line 737
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private getTimeByYearDay(Landroid/text/format/Time;I)Landroid/text/format/Time;
    .locals 10
    .parameter "t"
    .parameter "yearDay"

    .prologue
    const/4 v9, 0x0

    .line 1946
    iget v5, p1, Landroid/text/format/Time;->year:I

    .line 1947
    .local v5, year:I
    const-string v6, "VCalendarUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getTimeByYearDay inWhichYear:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " yearDay:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1948
    const/4 v3, 0x0

    .line 1949
    .local v3, inWhichMonth:I
    const/4 v2, 0x0

    .line 1950
    .local v2, inWhichDay:I
    const/4 v0, 0x0

    .line 1952
    .local v0, dayCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v6, 0xc

    if-ge v1, v6, :cond_0

    .line 1953
    move v3, v1

    .line 1954
    const/4 v6, 0x1

    invoke-virtual {p1, v6, v1, v5}, Landroid/text/format/Time;->set(III)V

    .line 1955
    invoke-virtual {p1, v9}, Landroid/text/format/Time;->normalize(Z)J

    .line 1956
    const/4 v6, 0x4

    invoke-virtual {p1, v6}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v4

    .line 1957
    .local v4, num:I
    add-int/2addr v0, v4

    .line 1958
    if-le v0, p2, :cond_1

    .line 1959
    sub-int v6, v0, v4

    sub-int v2, p2, v6

    .line 1969
    .end local v4           #num:I
    :cond_0
    :goto_1
    const-string v6, "VCalendarUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getTimeByYearDay inWhichMonth:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " inWhichDay:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1970
    invoke-virtual {p1, v2, v3, v5}, Landroid/text/format/Time;->set(III)V

    .line 1971
    invoke-virtual {p1, v9}, Landroid/text/format/Time;->normalize(Z)J

    .line 1972
    return-object p1

    .line 1961
    .restart local v4       #num:I
    :cond_1
    if-ne v0, p2, :cond_2

    .line 1962
    move v2, v4

    .line 1963
    goto :goto_1

    .line 1952
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private init(Landroid/database/Cursor;Landroid/content/Context;)V
    .locals 30
    .parameter "cur"
    .parameter "c"

    .prologue
    .line 1167
    const-wide/16 v11, 0x0

    .line 1170
    .local v11, alldayStart:J
    const-string v3, "_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1171
    .local v14, colID:I
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 1172
    .local v20, id:J
    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->_id:Ljava/lang/String;

    .line 1175
    const-string v3, "iCalGUID"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1176
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->uid:Ljava/lang/String;

    .line 1179
    const-string v3, "calendar_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1180
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    .line 1183
    .local v13, calID:Ljava/lang/String;
    const-string v3, "title"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1184
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->summary:Ljava/lang/String;

    .line 1185
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->summary:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1186
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->summary:Ljava/lang/String;

    const-string v5, "\r"

    const-string v7, "\r\n"

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "\n"

    const-string v7, "\r\n"

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->summary:Ljava/lang/String;

    .line 1187
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->summary:Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->qpEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->summary:Ljava/lang/String;

    .line 1191
    :cond_0
    const-string v3, "allDay"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1192
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_d

    const/4 v3, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isAllDay:Z

    .line 1195
    const-string v3, "dtstart"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1196
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 1197
    .local v24, start:J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v9

    .line 1198
    .local v9, __timezone:Ljava/util/TimeZone;
    new-instance v27, Landroid/text/format/Time;

    invoke-direct/range {v27 .. v27}, Landroid/text/format/Time;-><init>()V

    .line 1199
    .local v27, t:Landroid/text/format/Time;
    move-object/from16 v0, v27

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 1200
    const-string v3, "UTC"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 1201
    const/4 v15, 0x0

    .line 1202
    .local v15, daylightOffset:I
    new-instance v16, Ljava/util/Date;

    const/4 v3, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v7

    move-object/from16 v0, v16

    invoke-direct {v0, v7, v8}, Ljava/util/Date;-><init>(J)V

    .line 1203
    .local v16, dt:Ljava/util/Date;
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1204
    invoke-virtual {v9}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v15

    .line 1206
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isAllDay:Z

    if-eqz v3, :cond_3

    .line 1207
    const/4 v3, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v7

    invoke-virtual {v9}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v28, v0

    sub-long v7, v7, v28

    move-object/from16 v0, v27

    invoke-virtual {v0, v7, v8}, Landroid/text/format/Time;->set(J)V

    .line 1208
    if-eqz v15, :cond_2

    .line 1209
    const/4 v3, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v7

    int-to-long v0, v15

    move-wide/from16 v28, v0

    sub-long v7, v7, v28

    move-object/from16 v0, v27

    invoke-virtual {v0, v7, v8}, Landroid/text/format/Time;->set(J)V

    .line 1210
    :cond_2
    const/4 v3, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v11

    .line 1212
    :cond_3
    invoke-static/range {v27 .. v27}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->convertLongToRFC2445DateTime(Landroid/text/format/Time;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    .line 1224
    const-string v3, "dtend"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1225
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 1226
    .local v18, end:J
    const-wide/16 v7, 0x0

    cmp-long v3, v18, v7

    if-nez v3, :cond_4

    .line 1227
    const-string v3, "duration"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1228
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->duration:Ljava/lang/String;

    .line 1230
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->duration:Ljava/lang/String;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->duration:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    .line 1231
    .local v26, subDur:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isInteger(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1232
    invoke-static/range {v26 .. v26}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v7

    const-wide/16 v28, 0x3e8

    mul-long v7, v7, v28

    add-long v18, v24, v7

    .line 1237
    .end local v26           #subDur:Ljava/lang/String;
    :cond_4
    :goto_1
    move-object/from16 v0, v27

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 1238
    const-string v3, "UTC"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 1239
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isAllDay:Z

    if-eqz v3, :cond_5

    .line 1240
    const/4 v3, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v7

    invoke-virtual {v9}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v28, v0

    sub-long v7, v7, v28

    move-object/from16 v0, v27

    invoke-virtual {v0, v7, v8}, Landroid/text/format/Time;->set(J)V

    .line 1241
    if-eqz v15, :cond_5

    .line 1242
    const/4 v3, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v7

    int-to-long v0, v15

    move-wide/from16 v28, v0

    sub-long v7, v7, v28

    move-object/from16 v0, v27

    invoke-virtual {v0, v7, v8}, Landroid/text/format/Time;->set(J)V

    .line 1244
    :cond_5
    invoke-static/range {v27 .. v27}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->convertLongToRFC2445DateTime(Landroid/text/format/Time;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTEnd:Ljava/lang/String;

    .line 1261
    const-string v3, "hasAlarm"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1262
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_e

    const/4 v3, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->hasAlarm:Z

    .line 1263
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->hasAlarm:Z

    if-eqz v3, :cond_8

    .line 1264
    sget-object v4, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    .line 1265
    .local v4, uri:Landroid/net/Uri;
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "event_id=%d AND (method=1 OR method=0)"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->_id:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v7, v8

    invoke-static {v3, v5, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1266
    .local v6, where:Ljava/lang/String;
    const/16 v23, 0x0

    .line 1268
    .local v23, reminderCursor:Landroid/database/Cursor;
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->REMINDERS_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v23

    .line 1269
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1270
    const-string v3, "minutes"

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1271
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isAllDay:Z

    if-eqz v3, :cond_f

    .line 1272
    move-object/from16 v0, v23

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const v5, 0xea60

    mul-int/2addr v3, v5

    int-to-long v7, v3

    sub-long v7, v11, v7

    move-object/from16 v0, p0

    iput-wide v7, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->alarm:J

    .line 1275
    :goto_3
    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10}, Landroid/text/format/Time;-><init>()V

    .line 1276
    .local v10, alarmTime:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->alarm:J

    invoke-virtual {v10, v7, v8}, Landroid/text/format/Time;->set(J)V

    .line 1277
    const-string v3, "UTC"

    invoke-virtual {v10, v3}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 1278
    invoke-static {v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->convertLongToRFC2445DateTime(Landroid/text/format/Time;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strAlarm:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1281
    .end local v10           #alarmTime:Landroid/text/format/Time;
    :cond_6
    if-eqz v23, :cond_8

    .line 1282
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_7

    .line 1283
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 1285
    :cond_7
    const/16 v23, 0x0

    .line 1291
    .end local v4           #uri:Landroid/net/Uri;
    .end local v6           #where:Ljava/lang/String;
    .end local v23           #reminderCursor:Landroid/database/Cursor;
    :cond_8
    const-string v3, "description"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1292
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    .line 1293
    const-string v3, "VCalendarUtils"

    const-string v5, "isHTML:"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    if-eqz v3, :cond_a

    .line 1296
    const-string v3, "desc_mime_type"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1297
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_12

    const/16 v22, 0x1

    .line 1298
    .local v22, isHTML:Z
    :goto_4
    if-eqz v22, :cond_9

    .line 1299
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/util/mail/MailUtils;->convertHTMLtoPlainText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    .line 1301
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    const-string v5, "\r"

    const-string v7, "\r\n"

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "\n"

    const-string v7, "\r\n"

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    .line 1302
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->qpEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    .line 1306
    .end local v22           #isHTML:Z
    :cond_a
    const-string v3, "eventLocation"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1307
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->location:Ljava/lang/String;

    .line 1308
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->location:Ljava/lang/String;

    if-eqz v3, :cond_b

    .line 1309
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->location:Ljava/lang/String;

    const-string v5, "\r"

    const-string v7, "\r\n"

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "\n"

    const-string v7, "\r\n"

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->location:Ljava/lang/String;

    .line 1310
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->location:Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->qpEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->location:Ljava/lang/String;

    .line 1314
    :cond_b
    const-string v3, "eventTimezone"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1315
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->timezone:Ljava/lang/String;

    .line 1318
    const-string v3, "rrule"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1319
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->rRule:Ljava/lang/String;

    .line 1320
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->rRule:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->RRule_ICalToVCal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->rRule:Ljava/lang/String;

    .line 1323
    const-string v3, "rdate"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1324
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->rDate:Ljava/lang/String;

    .line 1327
    const-string v3, "exrule"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1328
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->exRule:Ljava/lang/String;

    .line 1331
    const-string v3, "exdate"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1332
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->exDate:Ljava/lang/String;

    .line 1335
    const-string v3, "last_update_time"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1336
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->last_update_time:Ljava/lang/String;

    .line 1337
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->last_update_time:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 1338
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->last_update_time:Ljava/lang/String;

    const-string v5, "T"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->last_update_time:Ljava/lang/String;

    const-string v5, "Z"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_c

    .line 1339
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->last_update_time:Ljava/lang/String;

    const-string v7, "-"

    const-string v8, ""

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v7, " "

    const-string v8, "T"

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v7, ":"

    const-string v8, ""

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "Z"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->last_update_time:Ljava/lang/String;

    .line 1342
    :cond_c
    return-void

    .line 1192
    .end local v9           #__timezone:Ljava/util/TimeZone;
    .end local v15           #daylightOffset:I
    .end local v16           #dt:Ljava/util/Date;
    .end local v18           #end:J
    .end local v24           #start:J
    .end local v27           #t:Landroid/text/format/Time;
    :cond_d
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1233
    .restart local v9       #__timezone:Ljava/util/TimeZone;
    .restart local v15       #daylightOffset:I
    .restart local v16       #dt:Ljava/util/Date;
    .restart local v18       #end:J
    .restart local v24       #start:J
    .restart local v27       #t:Landroid/text/format/Time;
    :catch_0
    move-exception v17

    .line 1234
    .local v17, e:Ljava/lang/Exception;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 1262
    .end local v17           #e:Ljava/lang/Exception;
    :cond_e
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 1274
    .restart local v4       #uri:Landroid/net/Uri;
    .restart local v6       #where:Ljava/lang/String;
    .restart local v23       #reminderCursor:Landroid/database/Cursor;
    :cond_f
    :try_start_2
    move-object/from16 v0, v23

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const v5, 0xea60

    mul-int/2addr v3, v5

    int-to-long v7, v3

    sub-long v7, v24, v7

    move-object/from16 v0, p0

    iput-wide v7, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->alarm:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3

    .line 1281
    :catchall_0
    move-exception v3

    if-eqz v23, :cond_11

    .line 1282
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_10

    .line 1283
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 1285
    :cond_10
    const/16 v23, 0x0

    :cond_11
    throw v3

    .line 1297
    .end local v4           #uri:Landroid/net/Uri;
    .end local v6           #where:Ljava/lang/String;
    .end local v23           #reminderCursor:Landroid/database/Cursor;
    :cond_12
    const/16 v22, 0x0

    goto/16 :goto_4
.end method

.method private init(Ljava/lang/String;)Z
    .locals 13
    .parameter "vCalRawData"

    .prologue
    const/4 v12, -0x1

    .line 317
    move-object v6, p1

    .line 318
    .local v6, rawData:Ljava/lang/String;
    const/4 v4, 0x0

    .line 319
    .local v4, nestCount:I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 321
    .local v9, vCalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    const-string v10, "BEGIN:VCALENDAR"

    invoke-virtual {v6, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 322
    .local v2, nBegin:I
    const-string v10, "END:VCALENDAR"

    invoke-virtual {v6, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 323
    .local v3, nEnd:I
    if-eq v12, v2, :cond_0

    if-ne v12, v3, :cond_1

    .line 337
    :cond_0
    const/4 v7, 0x0

    .line 338
    .local v7, results:Z
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 339
    .local v8, s:Ljava/lang/String;
    invoke-direct {p0, v8}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->initLocked(Ljava/lang/String;)Z

    move-result v5

    .line 340
    .local v5, oneResult:Z
    const-string v10, "VCalendarUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IMPORT-->"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 326
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v5           #oneResult:Z
    .end local v7           #results:Z
    .end local v8           #s:Ljava/lang/String;
    :cond_1
    const/4 v10, 0x0

    const-string v11, "END:VCALENDAR"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v11, v3

    invoke-virtual {v6, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, body:Ljava/lang/String;
    const-string v10, "END:VCALENDAR"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v3

    invoke-virtual {v6, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 333
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    add-int/lit8 v4, v4, 0x1

    .line 335
    goto :goto_0

    .line 343
    .end local v0           #body:Ljava/lang/String;
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v7       #results:Z
    :cond_2
    const/4 v10, 0x1

    return v10
.end method

.method private initLocked(Ljava/lang/String;)Z
    .locals 7
    .parameter "vCalRawData"

    .prologue
    const/4 v6, -0x1

    const/4 v4, 0x0

    .line 348
    const-string v5, "BEGIN:VCALENDAR"

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 349
    .local v2, nBegin:I
    const-string v5, "END:VCALENDAR"

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 350
    .local v3, nEnd:I
    if-eq v6, v2, :cond_0

    if-ne v6, v3, :cond_1

    .line 367
    :cond_0
    :goto_0
    return v4

    .line 353
    :cond_1
    const-string v5, "END:VCALENDAR"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {p1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->vCalendar:Ljava/lang/String;

    .line 358
    :try_start_0
    iget-object v5, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->vCalendar:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/calendarcommon/ICalendar;->parseCalendar(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Component;
    :try_end_0
    .catch Lcom/android/calendarcommon/ICalendar$FormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 363
    .local v0, cal:Lcom/android/calendarcommon/ICalendar$Component;
    invoke-virtual {v0}, Lcom/android/calendarcommon/ICalendar$Component;->getComponents()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 367
    invoke-direct {p0, v0}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->setEventValues(Lcom/android/calendarcommon/ICalendar$Component;)Z

    move-result v4

    goto :goto_0

    .line 359
    .end local v0           #cal:Lcom/android/calendarcommon/ICalendar$Component;
    :catch_0
    move-exception v1

    .line 360
    .local v1, fe:Lcom/android/calendarcommon/ICalendar$FormatException;
    goto :goto_0
.end method

.method public static isBig5()Z
    .locals 4

    .prologue
    .line 2040
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 2041
    .local v2, locale:Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 2042
    .local v1, language:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 2044
    .local v0, country:Ljava/lang/String;
    const-string v3, "zh"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "TW"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2045
    const/4 v3, 0x1

    .line 2047
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isGB2312()Z
    .locals 4

    .prologue
    .line 2052
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 2053
    .local v2, locale:Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 2054
    .local v1, language:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 2056
    .local v0, country:Ljava/lang/String;
    const-string v3, "zh"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "CN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2057
    const/4 v3, 0x1

    .line 2060
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isISO8859_8()Z
    .locals 3

    .prologue
    .line 2064
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 2065
    .local v1, locale:Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 2067
    .local v0, language:Ljava/lang/String;
    const-string v2, "iw"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2068
    const/4 v2, 0x1

    .line 2070
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isInteger(Ljava/lang/String;)Z
    .locals 3
    .parameter "s"

    .prologue
    .line 1154
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1155
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1157
    .local v0, ch:C
    const/16 v2, 0x30

    if-lt v0, v2, :cond_0

    const/16 v2, 0x39

    if-le v0, v2, :cond_1

    .line 1158
    :cond_0
    const/4 v2, 0x0

    .line 1162
    .end local v0           #ch:C
    :goto_1
    return v2

    .line 1154
    .restart local v0       #ch:C
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1162
    .end local v0           #ch:C
    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private isNullContentValues(Landroid/content/ContentValues;)Z
    .locals 3
    .parameter "cv"

    .prologue
    const/4 v1, 0x1

    .line 301
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 302
    .local v0, nullCv:Landroid/content/ContentValues;
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 304
    if-nez p1, :cond_1

    .line 310
    :cond_0
    :goto_0
    return v1

    .line 306
    :cond_1
    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 310
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSBM()Z
    .locals 2

    .prologue
    .line 2029
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xd1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static qpEncoded(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "str"

    .prologue
    .line 1743
    const/4 v2, 0x0

    .line 1745
    .local v2, result:Ljava/lang/String;
    invoke-static {}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isSBM()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1746
    invoke-static {p0}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1750
    :cond_0
    new-instance v1, Lorg/apache/commons/codec/net/QuotedPrintableCodec;

    invoke-static {}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getDefaultCharSet()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;-><init>(Ljava/lang/String;)V

    .line 1752
    .local v1, qpcodec:Lorg/apache/commons/codec/net/QuotedPrintableCodec;
    :try_start_0
    invoke-virtual {v1, p0}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->encode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/commons/codec/EncoderException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1757
    :goto_0
    return-object v2

    .line 1753
    :catch_0
    move-exception v0

    .line 1754
    .local v0, e:Lorg/apache/commons/codec/EncoderException;
    invoke-virtual {v0}, Lorg/apache/commons/codec/EncoderException;->printStackTrace()V

    goto :goto_0
.end method

.method private setDtStart(Ljava/lang/String;)Z
    .locals 3
    .parameter "val"

    .prologue
    .line 521
    iput-object p1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    .line 522
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    .line 524
    iget-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkTimeObj(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    iget-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 531
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 527
    :cond_0
    const-string v0, "VCalendarUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "strDTStart: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setEventValues(Lcom/android/calendarcommon/ICalendar$Component;)Z
    .locals 15
    .parameter "cal"

    .prologue
    .line 537
    const/4 v5, 0x0

    .line 539
    .local v5, isEvent:Z
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/calendarcommon/ICalendar$Component;->getComponents()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_14

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendarcommon/ICalendar$Component;

    .line 540
    .local v1, component:Lcom/android/calendarcommon/ICalendar$Component;
    invoke-direct {p0}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->clear()V

    .line 541
    const-string v10, "VEVENT"

    invoke-virtual {v1}, Lcom/android/calendarcommon/ICalendar$Component;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "VTODO"

    invoke-virtual {v1}, Lcom/android/calendarcommon/ICalendar$Component;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 543
    :cond_1
    const-string v10, "VEVENT"

    invoke-virtual {v1}, Lcom/android/calendarcommon/ICalendar$Component;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 545
    const-string v10, "UID"

    invoke-static {v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->extractString(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->uid:Ljava/lang/String;

    .line 546
    const-string v10, "DTSTART"

    invoke-static {v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->extractValue(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 548
    .local v8, val:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 550
    invoke-direct {p0, v8}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->setDtStart(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 563
    :cond_2
    const-string v10, "DTEND"

    invoke-static {v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->extractValue(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 565
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 566
    iput-object v8, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTEnd:Ljava/lang/String;

    .line 567
    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10}, Landroid/text/format/Time;-><init>()V

    iput-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtEnd:Landroid/text/format/Time;

    .line 569
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTEnd:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkTimeObj(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 570
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtEnd:Landroid/text/format/Time;

    iget-object v11, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTEnd:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 585
    :cond_3
    :goto_1
    const-string v10, "AALARM"

    invoke-static {v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->extractValue(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 586
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_c

    .line 587
    const-string v10, ";"

    const-string v11, ""

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 588
    iput-object v8, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strAlarm:Ljava/lang/String;

    .line 589
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 591
    .local v0, alarmTime:Landroid/text/format/Time;
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strAlarm:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkTimeObj(Ljava/lang/String;)Z

    move-result v9

    .line 592
    .local v9, validAlarmTime:Z
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "validAlarmTime:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->debug(Ljava/lang/String;)V

    .line 593
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strAlarm:Ljava/lang/String;

    invoke-virtual {v0, v10}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 595
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v10

    const/4 v12, 0x0

    invoke-virtual {v0, v12}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v12

    sub-long/2addr v10, v12

    const-wide/32 v12, 0xea60

    div-long/2addr v10, v12

    iput-wide v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->alarm:J

    .line 597
    iget-wide v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->alarm:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-ltz v10, :cond_b

    if-eqz v9, :cond_b

    .line 598
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->hasAlarm:Z

    .line 605
    .end local v0           #alarmTime:Landroid/text/format/Time;
    .end local v9           #validAlarmTime:Z
    :goto_2
    const-string v10, "VCalendarUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "hasAlarm is :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->hasAlarm:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtEnd:Landroid/text/format/Time;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v10

    iget-object v12, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v12

    sub-long/2addr v10, v12

    const-wide/32 v12, 0x5265c00

    cmp-long v10, v10, v12

    if-nez v10, :cond_d

    .line 608
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isAllDay:Z

    .line 622
    :goto_3
    iget-boolean v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isAllDay:Z

    if-eqz v10, :cond_11

    .line 624
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    iget v10, v10, Landroid/text/format/Time;->hour:I

    const/16 v11, 0xb

    if-le v10, v11, :cond_10

    .line 625
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    iget-object v11, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v11

    iget-object v13, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    iget v13, v13, Landroid/text/format/Time;->hour:I

    rsub-int/lit8 v13, v13, 0x18

    mul-int/lit8 v13, v13, 0x3c

    mul-int/lit8 v13, v13, 0x3c

    mul-int/lit16 v13, v13, 0x3e8

    int-to-long v13, v13

    add-long/2addr v11, v13

    invoke-virtual {v10, v11, v12}, Landroid/text/format/Time;->set(J)V

    .line 626
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtEnd:Landroid/text/format/Time;

    iget-object v11, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtEnd:Landroid/text/format/Time;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v11

    iget-object v13, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtEnd:Landroid/text/format/Time;

    iget v13, v13, Landroid/text/format/Time;->hour:I

    rsub-int/lit8 v13, v13, 0x18

    mul-int/lit8 v13, v13, 0x3c

    mul-int/lit8 v13, v13, 0x3c

    mul-int/lit16 v13, v13, 0x3e8

    int-to-long v13, v13

    add-long/2addr v11, v13

    invoke-virtual {v10, v11, v12}, Landroid/text/format/Time;->set(J)V

    .line 631
    :goto_4
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    const-string v11, "UTC"

    iput-object v11, v10, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 632
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtEnd:Landroid/text/format/Time;

    const-string v11, "UTC"

    iput-object v11, v10, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 633
    const-string v10, "UTC"

    iput-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->timezone:Ljava/lang/String;

    .line 638
    :goto_5
    const-string v10, "DURATION"

    invoke-static {v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->extractValue(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 639
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_12

    .line 640
    iput-object v8, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->duration:Ljava/lang/String;

    .line 648
    :goto_6
    const-string v10, "LOCATION"

    invoke-static {v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->extractString(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->location:Ljava/lang/String;

    .line 649
    const-string v10, "SUMMARY"

    invoke-static {v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->extractString(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->summary:Ljava/lang/String;

    .line 650
    const-string v10, "DESCRIPTION"

    invoke-static {v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->extractString(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    .line 652
    const-string v10, "CATEGORIES"

    invoke-static {v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->extractValue(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 653
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 654
    iput-object v8, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->categories:Ljava/lang/String;

    .line 656
    :cond_4
    const-string v10, "CLASS"

    invoke-static {v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->extractValue(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 657
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 658
    iput-object v8, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->type:Ljava/lang/String;

    .line 660
    :cond_5
    const-string v10, "STATUS"

    invoke-static {v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->extractValue(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 661
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 662
    iput-object v8, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->status:Ljava/lang/String;

    .line 663
    :cond_6
    const-string v10, "PRIORITY"

    invoke-static {v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->extractValue(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 664
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 665
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getPriorityString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->priority:Ljava/lang/String;

    .line 667
    :cond_7
    const-string v10, "RRULE"

    invoke-static {v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->flattenProperties(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->rRule:Ljava/lang/String;

    .line 668
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->rRule:Ljava/lang/String;

    invoke-virtual {p0, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->RRule_VCalToICal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->rRule:Ljava/lang/String;

    .line 670
    const-string v10, "RDATE"

    invoke-virtual {v1, v10}, Lcom/android/calendarcommon/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Property;

    move-result-object v10

    invoke-static {v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->extractDates(Lcom/android/calendarcommon/ICalendar$Property;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->rDate:Ljava/lang/String;

    .line 671
    const-string v10, "EXRULE"

    invoke-static {v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->flattenProperties(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->exRule:Ljava/lang/String;

    .line 672
    const-string v10, "EXDATE"

    invoke-virtual {v1, v10}, Lcom/android/calendarcommon/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Property;

    move-result-object v10

    invoke-static {v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->extractDates(Lcom/android/calendarcommon/ICalendar$Property;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->exDate:Ljava/lang/String;

    .line 676
    invoke-virtual {p0}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getEventCV()Landroid/content/ContentValues;

    move-result-object v2

    .line 678
    .local v2, cv:Landroid/content/ContentValues;
    invoke-direct {p0, v2}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isNullContentValues(Landroid/content/ContentValues;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 679
    if-eqz v5, :cond_13

    .line 680
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_Event_ContentValue:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 681
    invoke-virtual {p0}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getAlarmCV()Landroid/content/ContentValues;

    move-result-object v2

    .line 682
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_EventAlarm_ContentValue:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 694
    .end local v1           #component:Lcom/android/calendarcommon/ICalendar$Component;
    .end local v2           #cv:Landroid/content/ContentValues;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v8           #val:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 695
    .local v3, e:Ljava/lang/Exception;
    const-string v10, "VCalendarUtils"

    const-string v11, "Error when set event values."

    invoke-static {v10, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 696
    const/4 v10, 0x0

    .line 698
    .end local v3           #e:Ljava/lang/Exception;
    :goto_7
    return v10

    .line 554
    .restart local v1       #component:Lcom/android/calendarcommon/ICalendar$Component;
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v8       #val:Ljava/lang/String;
    :cond_8
    if-nez v5, :cond_2

    .line 555
    :try_start_1
    const-string v10, "DUE"

    invoke-static {v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->extractValue(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 556
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 558
    invoke-direct {p0, v8}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->setDtStart(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    goto/16 :goto_0

    .line 572
    :cond_9
    const-string v10, "VCalendarUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "strDTEnd: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTEnd:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " error"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 579
    :cond_a
    if-nez v5, :cond_3

    .line 580
    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10}, Landroid/text/format/Time;-><init>()V

    iput-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtEnd:Landroid/text/format/Time;

    .line 581
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtEnd:Landroid/text/format/Time;

    iget-object v11, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Landroid/text/format/Time;->set(J)V

    goto/16 :goto_1

    .line 600
    .restart local v0       #alarmTime:Landroid/text/format/Time;
    .restart local v9       #validAlarmTime:Z
    :cond_b
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->hasAlarm:Z

    goto/16 :goto_2

    .line 603
    .end local v0           #alarmTime:Landroid/text/format/Time;
    .end local v9           #validAlarmTime:Z
    :cond_c
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->hasAlarm:Z

    goto/16 :goto_2

    .line 609
    :cond_d
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtEnd:Landroid/text/format/Time;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v10

    iget-object v12, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-nez v10, :cond_e

    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    iget v10, v10, Landroid/text/format/Time;->hour:I

    if-nez v10, :cond_e

    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    iget v10, v10, Landroid/text/format/Time;->minute:I

    if-nez v10, :cond_e

    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    iget v10, v10, Landroid/text/format/Time;->second:I

    if-nez v10, :cond_e

    invoke-static {}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isSBM()Z

    move-result v10

    if-nez v10, :cond_e

    .line 614
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isAllDay:Z

    goto/16 :goto_3

    .line 615
    :cond_e
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtEnd:Landroid/text/format/Time;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v10

    iget-object v12, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-nez v10, :cond_f

    invoke-static {}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isSBM()Z

    move-result v10

    if-nez v10, :cond_f

    if-eqz v5, :cond_f

    .line 617
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isAllDay:Z

    goto/16 :goto_3

    .line 619
    :cond_f
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isAllDay:Z

    goto/16 :goto_3

    .line 628
    :cond_10
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    iget-object v11, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v11

    iget-object v13, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    iget v13, v13, Landroid/text/format/Time;->hour:I

    mul-int/lit8 v13, v13, 0x3c

    mul-int/lit8 v13, v13, 0x3c

    mul-int/lit16 v13, v13, 0x3e8

    int-to-long v13, v13

    sub-long/2addr v11, v13

    invoke-virtual {v10, v11, v12}, Landroid/text/format/Time;->set(J)V

    .line 629
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtEnd:Landroid/text/format/Time;

    iget-object v11, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtEnd:Landroid/text/format/Time;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v11

    iget-object v13, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtEnd:Landroid/text/format/Time;

    iget v13, v13, Landroid/text/format/Time;->hour:I

    mul-int/lit8 v13, v13, 0x3c

    mul-int/lit8 v13, v13, 0x3c

    mul-int/lit16 v13, v13, 0x3e8

    int-to-long v13, v13

    sub-long/2addr v11, v13

    invoke-virtual {v10, v11, v12}, Landroid/text/format/Time;->set(J)V

    goto/16 :goto_4

    .line 635
    :cond_11
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->timezone:Ljava/lang/String;

    goto/16 :goto_5

    .line 642
    :cond_12
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtEnd:Landroid/text/format/Time;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v10

    iget-object v12, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v12

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x3e8

    div-long v6, v10, v12

    .line 644
    .local v6, mDur:J
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "P"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "S"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->duration:Ljava/lang/String;

    goto/16 :goto_6

    .line 684
    .end local v6           #mDur:J
    .restart local v2       #cv:Landroid/content/ContentValues;
    :cond_13
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_ToDo_ContentValue:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 685
    invoke-virtual {p0}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getAlarmCV()Landroid/content/ContentValues;

    move-result-object v2

    .line 686
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_ToDoAlarm_ContentValue:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 698
    .end local v1           #component:Lcom/android/calendarcommon/ICalendar$Component;
    .end local v2           #cv:Landroid/content/ContentValues;
    .end local v8           #val:Ljava/lang/String;
    :cond_14
    const/4 v10, 0x1

    goto/16 :goto_7
.end method


# virtual methods
.method MatchMonth(Ljava/lang/String;)Z
    .locals 5
    .parameter "month"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1068
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v3, v1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const/16 v4, 0xc

    if-gt v3, v4, :cond_0

    .line 1073
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 1071
    goto :goto_0

    .line 1072
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    move v1, v2

    .line 1073
    goto :goto_0
.end method

.method MatchMonthDay(Ljava/lang/String;)Z
    .locals 5
    .parameter "monthday"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1057
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v3, v1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const/16 v4, 0x1f

    if-gt v3, v4, :cond_0

    .line 1062
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 1060
    goto :goto_0

    .line 1061
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    move v1, v2

    .line 1062
    goto :goto_0
.end method

.method MatchWeekDay(Ljava/lang/String;)Z
    .locals 2
    .parameter "weekday"

    .prologue
    const/4 v0, 0x1

    .line 1037
    const-string v1, "MO"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1052
    :cond_0
    :goto_0
    return v0

    .line 1039
    :cond_1
    const-string v1, "TU"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1041
    const-string v1, "WE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1043
    const-string v1, "TH"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1045
    const-string v1, "FR"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1047
    const-string v1, "SA"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1049
    const-string v1, "SU"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1052
    const/4 v0, 0x0

    goto :goto_0
.end method

.method MatchYearDay(Ljava/lang/String;)Z
    .locals 5
    .parameter "yearDay"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1079
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v3, v1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const/16 v4, 0x16e

    if-gt v3, v4, :cond_0

    .line 1084
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 1082
    goto :goto_0

    .line 1083
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    move v1, v2

    .line 1084
    goto :goto_0
.end method

.method RRule_ICalToVCal(Ljava/lang/String;)Ljava/lang/String;
    .locals 36
    .parameter "rrule"

    .prologue
    .line 1345
    if-nez p1, :cond_0

    .line 1346
    const/16 v26, 0x0

    .line 1612
    :goto_0
    return-object v26

    .line 1348
    :cond_0
    const-string v33, "VCalendarUtils"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "RRule_ICalToVCal: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    new-instance v25, Ljava/lang/StringBuffer;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuffer;-><init>()V

    .line 1350
    .local v25, result:Ljava/lang/StringBuffer;
    const/16 v33, 0x0

    move/from16 v0, v33

    new-array v5, v0, [Ljava/lang/String;

    .line 1351
    .local v5, array:[Ljava/lang/String;
    const/16 v31, 0x0

    .line 1352
    .local v31, tempstr:Ljava/lang/String;
    const/16 v33, 0x0

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v30, v0

    .line 1353
    .local v30, temparr:[Ljava/lang/String;
    const/16 v17, 0x0

    .line 1354
    .local v17, freq:Ljava/lang/String;
    const/16 v20, 0x0

    .line 1355
    .local v20, interval:Ljava/lang/String;
    const/16 v32, 0x0

    .line 1356
    .local v32, until:Ljava/lang/String;
    const/4 v13, 0x0

    .line 1357
    .local v13, count:Ljava/lang/String;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1358
    .local v8, byday:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1359
    .local v10, bymonthday:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1360
    .local v9, bymonth:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1362
    .local v11, bysetpos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v33, "FREQ"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    if-gez v33, :cond_1

    .line 1363
    const/16 v26, 0x0

    goto :goto_0

    .line 1365
    :cond_1
    const-string v33, ";"

    const/16 v34, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 1367
    const/4 v7, 0x0

    .line 1369
    .local v7, bYDMode:Z
    const/16 v18, 0x0

    .local v18, i:I
    :goto_1
    array-length v0, v5

    move/from16 v33, v0

    move/from16 v0, v18

    move/from16 v1, v33

    if-ge v0, v1, :cond_1a

    .line 1371
    aget-object v33, v5, v18

    const-string v34, "FREQ"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    if-ltz v33, :cond_8

    .line 1372
    aget-object v33, v5, v18

    aget-object v34, v5, v18

    const-string v35, "="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v34

    add-int/lit8 v34, v34, 0x1

    aget-object v35, v5, v18

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v35

    invoke-virtual/range {v33 .. v35}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 1375
    const-string v33, "YEARLY"

    move-object/from16 v0, v17

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_3

    const-string v33, "BYMONTH"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v33

    if-eqz v33, :cond_3

    const-string v33, "BYMONTHDAY"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v33

    if-eqz v33, :cond_3

    .line 1377
    const-string v17, "YD"

    .line 1378
    const/4 v7, 0x1

    .line 1369
    :cond_2
    :goto_2
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 1380
    :cond_3
    const-string v33, "YEARLY"

    move-object/from16 v0, v17

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_4

    .line 1381
    const-string v17, "YM"

    goto :goto_2

    .line 1383
    :cond_4
    const-string v33, "MONTHLY"

    move-object/from16 v0, v17

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_6

    .line 1384
    const-string v33, "BYDAY"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    if-ltz v33, :cond_5

    .line 1385
    const-string v17, "MP"

    goto :goto_2

    .line 1387
    :cond_5
    const-string v33, "BYMONTHDAY"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    if-ltz v33, :cond_2

    .line 1388
    const-string v17, "MD"

    goto :goto_2

    .line 1391
    :cond_6
    const-string v33, "WEEKLY"

    move-object/from16 v0, v17

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_7

    .line 1392
    const-string v17, "W"

    goto :goto_2

    .line 1394
    :cond_7
    const-string v33, "DAILY"

    move-object/from16 v0, v17

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_2

    .line 1395
    const-string v17, "D"

    goto :goto_2

    .line 1398
    :cond_8
    aget-object v33, v5, v18

    const-string v34, "INTERVAL"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    if-ltz v33, :cond_9

    .line 1399
    aget-object v33, v5, v18

    aget-object v34, v5, v18

    const-string v35, "="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v34

    add-int/lit8 v34, v34, 0x1

    aget-object v35, v5, v18

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v35

    invoke-virtual/range {v33 .. v35}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    goto :goto_2

    .line 1401
    :cond_9
    aget-object v33, v5, v18

    const-string v34, "UNTIL"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    if-ltz v33, :cond_a

    .line 1402
    aget-object v33, v5, v18

    aget-object v34, v5, v18

    const-string v35, "="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v34

    add-int/lit8 v34, v34, 0x1

    aget-object v35, v5, v18

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v35

    invoke-virtual/range {v33 .. v35}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v32

    goto/16 :goto_2

    .line 1404
    :cond_a
    aget-object v33, v5, v18

    const-string v34, "COUNT"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    if-ltz v33, :cond_b

    .line 1405
    aget-object v33, v5, v18

    aget-object v34, v5, v18

    const-string v35, "="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v34

    add-int/lit8 v34, v34, 0x1

    aget-object v35, v5, v18

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v35

    invoke-virtual/range {v33 .. v35}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_2

    .line 1407
    :cond_b
    aget-object v33, v5, v18

    const-string v34, "BYDAY"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    if-ltz v33, :cond_11

    .line 1408
    aget-object v33, v5, v18

    aget-object v34, v5, v18

    const-string v35, "="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v34

    add-int/lit8 v34, v34, 0x1

    aget-object v35, v5, v18

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v35

    invoke-virtual/range {v33 .. v35}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    .line 1411
    new-instance v15, Landroid/text/format/Time;

    const-string v33, "UTC"

    move-object/from16 v0, v33

    invoke-direct {v15, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1412
    .local v15, eventTimeDB:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 1413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1, v15}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkTimeStringInAllDay(Ljava/lang/String;Landroid/text/format/Time;)V

    .line 1414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->timezone:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 1415
    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->normalize(Z)J

    .line 1418
    new-instance v16, Landroid/text/format/Time;

    const-string v33, "UTC"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1419
    .local v16, eventTimeUTC:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 1420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkTimeStringInAllDay(Ljava/lang/String;Landroid/text/format/Time;)V

    .line 1421
    const/16 v33, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 1422
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v15}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getMonthDayOffset(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result v14

    .line 1423
    .local v14, dayOffset:I
    const-string v33, "VCalendarUtils"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "dayOffset: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    const/4 v12, 0x0

    .line 1426
    .local v12, ch:C
    const-string v27, ""

    .line 1427
    .local v27, setpostemp:Ljava/lang/String;
    const/16 v21, 0x0

    .local v21, j:I
    :goto_3
    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v33

    move/from16 v0, v21

    move/from16 v1, v33

    if-ge v0, v1, :cond_e

    .line 1428
    move-object/from16 v0, v31

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 1429
    const-string v33, "VCalendarUtils"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "  ch:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    const/16 v33, 0x30

    move/from16 v0, v33

    if-lt v12, v0, :cond_c

    const/16 v33, 0x39

    move/from16 v0, v33

    if-le v12, v0, :cond_d

    :cond_c
    const/16 v33, 0x2d

    move/from16 v0, v33

    if-ne v12, v0, :cond_e

    .line 1432
    :cond_d
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 1427
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    .line 1437
    :cond_e
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v33

    if-lez v33, :cond_10

    .line 1438
    const-string v33, "VCalendarUtils"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "BYDAY setpostemp: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1440
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v33

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1452
    :cond_f
    const/16 v31, 0x0

    .line 1453
    const/16 v30, 0x0

    .line 1455
    goto/16 :goto_2

    .line 1443
    :cond_10
    const-string v33, "VCalendarUtils"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "BYDAY setpostemp len<0  "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    const-string v33, ","

    const/16 v34, -0x1

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v30

    .line 1445
    const-string v4, ""

    .line 1446
    .local v4, alreadyFixOffset:Ljava/lang/String;
    const/16 v21, 0x0

    :goto_4
    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v33, v0

    move/from16 v0, v21

    move/from16 v1, v33

    if-ge v0, v1, :cond_f

    .line 1447
    aget-object v33, v30, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v14, v1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkWeekDayWithOffset(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1449
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1446
    add-int/lit8 v21, v21, 0x1

    goto :goto_4

    .line 1455
    .end local v4           #alreadyFixOffset:Ljava/lang/String;
    .end local v12           #ch:C
    .end local v14           #dayOffset:I
    .end local v15           #eventTimeDB:Landroid/text/format/Time;
    .end local v16           #eventTimeUTC:Landroid/text/format/Time;
    .end local v21           #j:I
    .end local v27           #setpostemp:Ljava/lang/String;
    :cond_11
    aget-object v33, v5, v18

    const-string v34, "BYMONTHDAY"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    if-ltz v33, :cond_13

    .line 1456
    aget-object v33, v5, v18

    aget-object v34, v5, v18

    const-string v35, "="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v34

    add-int/lit8 v34, v34, 0x1

    aget-object v35, v5, v18

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v35

    invoke-virtual/range {v33 .. v35}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    .line 1459
    new-instance v15, Landroid/text/format/Time;

    const-string v33, "UTC"

    move-object/from16 v0, v33

    invoke-direct {v15, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1460
    .restart local v15       #eventTimeDB:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 1461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1, v15}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkTimeStringInAllDay(Ljava/lang/String;Landroid/text/format/Time;)V

    .line 1462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->timezone:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 1463
    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->normalize(Z)J

    .line 1466
    new-instance v16, Landroid/text/format/Time;

    const-string v33, "UTC"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1467
    .restart local v16       #eventTimeUTC:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 1468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkTimeStringInAllDay(Ljava/lang/String;Landroid/text/format/Time;)V

    .line 1469
    const/16 v33, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 1471
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v15}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getMonthDayOffset(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result v14

    .line 1472
    .restart local v14       #dayOffset:I
    const-string v33, "VCalendarUtils"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "dayOffset: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    const-string v33, ","

    const/16 v34, -0x1

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v30

    .line 1475
    const-string v3, ""

    .line 1476
    .local v3, alreadyFixMonthDay:Ljava/lang/String;
    const/16 v21, 0x0

    .restart local v21       #j:I
    :goto_5
    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v33, v0

    move/from16 v0, v21

    move/from16 v1, v33

    if-ge v0, v1, :cond_12

    .line 1477
    aget-object v33, v30, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v14, v15, v1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkMonthDayWithOffset(ILandroid/text/format/Time;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1479
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1476
    add-int/lit8 v21, v21, 0x1

    goto :goto_5

    .line 1481
    :cond_12
    const/16 v31, 0x0

    .line 1482
    const/16 v30, 0x0

    .line 1484
    goto/16 :goto_2

    .end local v3           #alreadyFixMonthDay:Ljava/lang/String;
    .end local v14           #dayOffset:I
    .end local v15           #eventTimeDB:Landroid/text/format/Time;
    .end local v16           #eventTimeUTC:Landroid/text/format/Time;
    .end local v21           #j:I
    :cond_13
    aget-object v33, v5, v18

    const-string v34, "BYMONTH"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    if-ltz v33, :cond_18

    .line 1487
    new-instance v15, Landroid/text/format/Time;

    const-string v33, "UTC"

    move-object/from16 v0, v33

    invoke-direct {v15, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1488
    .restart local v15       #eventTimeDB:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 1489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1, v15}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkTimeStringInAllDay(Ljava/lang/String;Landroid/text/format/Time;)V

    .line 1490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->timezone:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 1491
    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->normalize(Z)J

    .line 1494
    new-instance v16, Landroid/text/format/Time;

    const-string v33, "UTC"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1495
    .restart local v16       #eventTimeUTC:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 1496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkTimeStringInAllDay(Ljava/lang/String;Landroid/text/format/Time;)V

    .line 1497
    const/16 v33, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 1498
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v15}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getMonthDayOffset(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result v14

    .line 1499
    .restart local v14       #dayOffset:I
    const-string v33, "VCalendarUtils"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "dayOffset: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    const/4 v6, 0x0

    .line 1502
    .local v6, bFindByMonthDay:Z
    const/16 v28, 0x0

    .line 1503
    .local v28, tempByMonthDay:Ljava/lang/String;
    const/16 v33, 0x0

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v29, v0

    .line 1504
    .local v29, tempByMonthDayAry:[Ljava/lang/String;
    const/16 v19, 0x0

    .local v19, idx:I
    :goto_6
    array-length v0, v5

    move/from16 v33, v0

    move/from16 v0, v19

    move/from16 v1, v33

    if-ge v0, v1, :cond_14

    .line 1505
    aget-object v33, v5, v19

    const-string v34, "BYMONTHDAY"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    if-ltz v33, :cond_15

    .line 1506
    aget-object v33, v5, v19

    aget-object v34, v5, v19

    const-string v35, "="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v34

    add-int/lit8 v34, v34, 0x1

    aget-object v35, v5, v19

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v35

    invoke-virtual/range {v33 .. v35}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    .line 1507
    const-string v33, ","

    const/16 v34, -0x1

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v29

    .line 1508
    const/4 v6, 0x1

    .line 1513
    :cond_14
    aget-object v33, v5, v18

    aget-object v34, v5, v18

    const-string v35, "="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v34

    add-int/lit8 v34, v34, 0x1

    aget-object v35, v5, v18

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v35

    invoke-virtual/range {v33 .. v35}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    .line 1514
    const-string v33, ","

    const/16 v34, -0x1

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v30

    .line 1515
    const-string v4, ""

    .line 1516
    .restart local v4       #alreadyFixOffset:Ljava/lang/String;
    const/16 v21, 0x0

    .restart local v21       #j:I
    :goto_7
    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v33, v0

    move/from16 v0, v21

    move/from16 v1, v33

    if-ge v0, v1, :cond_17

    .line 1517
    if-eqz v6, :cond_16

    .line 1518
    aget-object v33, v30, v21

    aget-object v34, v29, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-direct {v0, v14, v15, v1, v2}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkMonthWithOffset(ILandroid/text/format/Time;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1519
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1516
    :goto_8
    add-int/lit8 v21, v21, 0x1

    goto :goto_7

    .line 1504
    .end local v4           #alreadyFixOffset:Ljava/lang/String;
    .end local v21           #j:I
    :cond_15
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_6

    .line 1521
    .restart local v4       #alreadyFixOffset:Ljava/lang/String;
    .restart local v21       #j:I
    :cond_16
    aget-object v33, v30, v21

    move-object/from16 v0, v33

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 1524
    :cond_17
    const/16 v31, 0x0

    .line 1525
    const/16 v30, 0x0

    .line 1527
    goto/16 :goto_2

    .end local v4           #alreadyFixOffset:Ljava/lang/String;
    .end local v6           #bFindByMonthDay:Z
    .end local v14           #dayOffset:I
    .end local v15           #eventTimeDB:Landroid/text/format/Time;
    .end local v16           #eventTimeUTC:Landroid/text/format/Time;
    .end local v19           #idx:I
    .end local v21           #j:I
    .end local v28           #tempByMonthDay:Ljava/lang/String;
    .end local v29           #tempByMonthDayAry:[Ljava/lang/String;
    :cond_18
    aget-object v33, v5, v18

    const-string v34, "BYSETPOS"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    if-ltz v33, :cond_2

    .line 1528
    aget-object v33, v5, v18

    aget-object v34, v5, v18

    const-string v35, "="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v34

    add-int/lit8 v34, v34, 0x1

    aget-object v35, v5, v18

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v35

    invoke-virtual/range {v33 .. v35}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    .line 1529
    const-string v33, ","

    const/16 v34, -0x1

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v30

    .line 1530
    const/16 v21, 0x0

    .restart local v21       #j:I
    :goto_9
    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v33, v0

    move/from16 v0, v21

    move/from16 v1, v33

    if-ge v0, v1, :cond_19

    .line 1531
    aget-object v33, v30, v21

    move-object/from16 v0, v33

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1530
    add-int/lit8 v21, v21, 0x1

    goto :goto_9

    .line 1532
    :cond_19
    const/16 v31, 0x0

    .line 1533
    const/16 v30, 0x0

    goto/16 :goto_2

    .line 1538
    .end local v21           #j:I
    :cond_1a
    if-nez v20, :cond_1b

    .line 1539
    const-string v20, "1"

    .line 1541
    :cond_1b
    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    const-string v34, " "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1543
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v33

    if-nez v33, :cond_1e

    .line 1544
    const/16 v21, 0x0

    .restart local v21       #j:I
    :goto_a
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v33

    move/from16 v0, v21

    move/from16 v1, v33

    if-ge v0, v1, :cond_1d

    .line 1546
    :try_start_0
    move/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Integer;->intValue()I

    move-result v33

    if-ltz v33, :cond_1c

    .line 1547
    move/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    const-string v34, "+"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    const-string v34, " "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1544
    :goto_b
    add-int/lit8 v21, v21, 0x1

    goto :goto_a

    .line 1549
    :cond_1c
    move/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    const/16 v34, 0x1

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    const-string v34, "-"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    const-string v34, " "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_b

    .line 1550
    :catch_0
    move-exception v33

    goto :goto_b

    .line 1554
    :cond_1d
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 1556
    .end local v21           #j:I
    :cond_1e
    const-string v33, "VCalendarUtils"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "bYDMode: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    if-eqz v7, :cond_23

    .line 1559
    const/16 v22, 0x1

    .line 1560
    .local v22, month:I
    const/16 v23, 0x1

    .line 1562
    .local v23, monthDay:I
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v33

    if-nez v33, :cond_1f

    .line 1563
    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 1564
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 1567
    :cond_1f
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v33

    if-nez v33, :cond_20

    .line 1568
    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 1569
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 1571
    :cond_20
    add-int/lit8 v22, v22, -0x1

    .line 1573
    const-string v33, "VCalendarUtils"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "strDTStart: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    new-instance v24, Landroid/text/format/Time;

    const-string v33, "UTC"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1576
    .local v24, origTime:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 1577
    move/from16 v0, v22

    move-object/from16 v1, v24

    iput v0, v1, Landroid/text/format/Time;->month:I

    .line 1578
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 1579
    move/from16 v0, v23

    move-object/from16 v1, v24

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    .line 1580
    const/16 v33, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 1582
    const-string v33, "VCalendarUtils"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "origTime: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    move-object/from16 v0, v24

    iget v0, v0, Landroid/text/format/Time;->yearDay:I

    move/from16 v33, v0

    add-int/lit8 v33, v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, v24

    iput v0, v1, Landroid/text/format/Time;->yearDay:I

    move-object/from16 v0, v25

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v33

    const-string v34, " "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1604
    .end local v22           #month:I
    .end local v23           #monthDay:I
    .end local v24           #origTime:Landroid/text/format/Time;
    :cond_21
    :goto_c
    if-eqz v32, :cond_29

    if-nez v13, :cond_29

    .line 1605
    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1610
    :cond_22
    :goto_d
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v26

    .line 1611
    .local v26, sOut:Ljava/lang/String;
    const-string v33, "VCalendarUtils"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "result: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1585
    .end local v26           #sOut:Ljava/lang/String;
    :cond_23
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v33

    if-nez v33, :cond_25

    .line 1586
    const/16 v21, 0x0

    .restart local v21       #j:I
    :goto_e
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v33

    move/from16 v0, v21

    move/from16 v1, v33

    if-ge v0, v1, :cond_24

    .line 1587
    move/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    const-string v34, " "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1586
    add-int/lit8 v21, v21, 0x1

    goto :goto_e

    .line 1588
    :cond_24
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 1591
    .end local v21           #j:I
    :cond_25
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v33

    if-nez v33, :cond_27

    .line 1592
    const/16 v21, 0x0

    .restart local v21       #j:I
    :goto_f
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v33

    move/from16 v0, v21

    move/from16 v1, v33

    if-ge v0, v1, :cond_26

    .line 1593
    move/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    const-string v34, " "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1592
    add-int/lit8 v21, v21, 0x1

    goto :goto_f

    .line 1594
    :cond_26
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1597
    .end local v21           #j:I
    :cond_27
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v33

    if-nez v33, :cond_21

    .line 1598
    const/16 v21, 0x0

    .restart local v21       #j:I
    :goto_10
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v33

    move/from16 v0, v21

    move/from16 v1, v33

    if-ge v0, v1, :cond_28

    .line 1599
    move/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    const-string v34, " "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1598
    add-int/lit8 v21, v21, 0x1

    goto :goto_10

    .line 1600
    :cond_28
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_c

    .line 1606
    .end local v21           #j:I
    :cond_29
    if-nez v32, :cond_2a

    if-eqz v13, :cond_2a

    .line 1607
    const-string v33, "#"

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_d

    .line 1608
    :cond_2a
    if-nez v32, :cond_22

    if-nez v13, :cond_22

    .line 1609
    const-string v33, "#0"

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_d
.end method

.method RRule_VCalToICal(Ljava/lang/String;)Ljava/lang/String;
    .locals 28
    .parameter "rrule"

    .prologue
    .line 762
    if-nez p1, :cond_1

    .line 763
    const/16 p1, 0x0

    .line 1033
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 765
    .restart local p1
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v24

    const-string v25, "FREQ="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-gez v24, :cond_0

    .line 770
    const-string v24, "VCalendarUtils"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "RRule_VCalToICal: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v5, v0, [Ljava/lang/String;

    .line 773
    .local v5, array:[Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuffer;

    const-string v24, "FREQ="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 774
    .local v17, result:Ljava/lang/StringBuffer;
    const/4 v12, 0x0

    .line 775
    .local v12, interval:Ljava/lang/String;
    const/16 v21, 0x0

    .line 776
    .local v21, until:Ljava/lang/String;
    const/4 v7, 0x0

    .line 778
    .local v7, count:Ljava/lang/String;
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 779
    .local v22, weekday:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 780
    .local v15, monthday:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 781
    .local v14, month:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 783
    .local v18, setpos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v24, " "

    const/16 v25, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 785
    const/16 v24, 0x0

    aget-object v24, v5, v24

    const-string v25, "YM"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_9

    .line 786
    const/16 v24, 0x0

    aget-object v24, v5, v24

    const/16 v25, 0x2

    const/16 v26, 0x0

    aget-object v26, v5, v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 787
    const-string v24, "YEARLY;"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "INTERVAL="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 788
    const-string v24, "WKST="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "SU"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 790
    const/4 v11, 0x1

    .local v11, i:I
    :goto_1
    array-length v0, v5

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v11, v0, :cond_5

    .line 791
    aget-object v24, v5, v11

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->MatchMonth(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 792
    aget-object v24, v5, v11

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 794
    :cond_2
    aget-object v24, v5, v11

    const-string v25, "#"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_3

    .line 795
    aget-object v24, v5, v11

    const/16 v25, 0x1

    aget-object v26, v5, v11

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 796
    const-string v24, "0"

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_3

    .line 797
    const-string v24, "COUNT="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 800
    :cond_3
    aget-object v24, v5, v11

    const-string v25, "T"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_4

    aget-object v24, v5, v11

    const-string v25, "Z"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_4

    .line 801
    aget-object v21, v5, v11

    .line 802
    const-string v24, "UNTIL="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 790
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 806
    :cond_5
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-lez v24, :cond_7

    .line 807
    const-string v24, "BYMONTH="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 808
    const/4 v11, 0x0

    :goto_2
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v11, v0, :cond_6

    .line 809
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 808
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 811
    :cond_6
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->length()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    const/16 v25, 0x3b

    move-object/from16 v0, v17

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 812
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 1029
    .end local v11           #i:I
    :cond_7
    :goto_3
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->length()I

    move-result v24

    if-lez v24, :cond_8

    .line 1030
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->length()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 1032
    :cond_8
    const-string v24, "VCalendarUtils"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "result: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 815
    :cond_9
    const/16 v24, 0x0

    aget-object v24, v5, v24

    const-string v25, "YD"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_10

    .line 816
    const/16 v24, 0x0

    aget-object v24, v5, v24

    const/16 v25, 0x2

    const/16 v26, 0x0

    aget-object v26, v5, v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 817
    const-string v24, "YEARLY;"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "INTERVAL="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 818
    const-string v24, "WKST="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "SU"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 820
    const/4 v11, 0x1

    .restart local v11       #i:I
    :goto_4
    array-length v0, v5

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v11, v0, :cond_d

    .line 822
    aget-object v24, v5, v11

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->MatchYearDay(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_a

    .line 823
    aget-object v24, v5, v11

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 826
    :cond_a
    aget-object v24, v5, v11

    const-string v25, "#"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_b

    .line 827
    aget-object v24, v5, v11

    const/16 v25, 0x1

    aget-object v26, v5, v11

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 828
    const-string v24, "0"

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_b

    .line 829
    const-string v24, "COUNT="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 832
    :cond_b
    aget-object v24, v5, v11

    const-string v25, "T"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_c

    aget-object v24, v5, v11

    const-string v25, "Z"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_c

    .line 833
    aget-object v21, v5, v11

    .line 834
    const-string v24, "UNTIL="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 820
    :cond_c
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 838
    :cond_d
    new-instance v19, Landroid/text/format/Time;

    invoke-direct/range {v19 .. v19}, Landroid/text/format/Time;-><init>()V

    .line 839
    .local v19, t:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 840
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 841
    const/16 v24, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 842
    const-string v24, "VCalendarUtils"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "eventStar Time: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    const-string v24, "VCalendarUtils"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "YD event.yearDay:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v19

    iget v0, v0, Landroid/text/format/Time;->yearDay:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    new-instance v20, Landroid/text/format/Time;

    const-string v24, "UTC"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 846
    .local v20, tUTC:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 847
    const/16 v24, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 848
    const-string v24, "VCalendarUtils"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "tUTC: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    move-object/from16 v0, v19

    iget v0, v0, Landroid/text/format/Time;->yearDay:I

    move/from16 v24, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/text/format/Time;->yearDay:I

    move/from16 v25, v0

    sub-int v8, v24, v25

    .line 850
    .local v8, dayOffset:I
    const/16 v24, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v13

    .line 852
    .local v13, maxYearDay:I
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-lez v24, :cond_7

    .line 853
    const/4 v11, 0x0

    :goto_5
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v11, v0, :cond_7

    .line 854
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 855
    .local v23, ydYearDay:Ljava/lang/String;
    const-string v24, "VCalendarUtils"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "ydYearDay:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " maxYearDay:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " dayOffset: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 857
    .local v16, nYearDay:I
    invoke-static {}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isSBM()Z

    move-result v24

    if-eqz v24, :cond_e

    .line 859
    move-object/from16 v0, v19

    iget v0, v0, Landroid/text/format/Time;->yearDay:I

    move/from16 v24, v0

    add-int/lit8 v16, v24, 0x1

    .line 862
    :cond_e
    add-int/lit8 v24, v16, -0x1

    move/from16 v0, v24

    if-le v0, v13, :cond_f

    .line 864
    const-string p1, ""

    goto/16 :goto_0

    .line 867
    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getTimeByYearDay(Landroid/text/format/Time;I)Landroid/text/format/Time;

    move-result-object v6

    .line 868
    .local v6, correctTime:Landroid/text/format/Time;
    const-string v24, "VCalendarUtils"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "correctly yearDay:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    iget v0, v6, Landroid/text/format/Time;->yearDay:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " correctTime:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    const-string v24, "BYMONTH="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 871
    iget v0, v6, Landroid/text/format/Time;->month:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    iput v0, v6, Landroid/text/format/Time;->month:I

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 872
    const-string v24, ";"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 873
    const-string v24, "BYMONTHDAY="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 874
    iget v0, v6, Landroid/text/format/Time;->monthDay:I

    move/from16 v24, v0

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 875
    const-string v24, ";"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 853
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_5

    .line 880
    .end local v6           #correctTime:Landroid/text/format/Time;
    .end local v8           #dayOffset:I
    .end local v11           #i:I
    .end local v13           #maxYearDay:I
    .end local v16           #nYearDay:I
    .end local v19           #t:Landroid/text/format/Time;
    .end local v20           #tUTC:Landroid/text/format/Time;
    .end local v23           #ydYearDay:Ljava/lang/String;
    :cond_10
    const/16 v24, 0x0

    aget-object v24, v5, v24

    const-string v25, "MP"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-gez v24, :cond_11

    const/16 v24, 0x0

    aget-object v24, v5, v24

    const-string v25, "MD"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_1e

    .line 881
    :cond_11
    const/16 v24, 0x0

    aget-object v24, v5, v24

    const/16 v25, 0x2

    const/16 v26, 0x0

    aget-object v26, v5, v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 882
    const-string v24, "MONTHLY;"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "INTERVAL="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 883
    const-string v24, "WKST="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "SU"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 886
    new-instance v9, Landroid/text/format/Time;

    const-string v24, "UTC"

    move-object/from16 v0, v24

    invoke-direct {v9, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 887
    .local v9, eventTimeLocal:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 888
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v9}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkTimeStringInAllDay(Ljava/lang/String;Landroid/text/format/Time;)V

    .line 889
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkTimeUTC(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_12

    .line 890
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 892
    :cond_12
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/text/format/Time;->normalize(Z)J

    .line 895
    new-instance v10, Landroid/text/format/Time;

    const-string v24, "UTC"

    move-object/from16 v0, v24

    invoke-direct {v10, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 896
    .local v10, eventTimeUTC:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkTimeStringInAllDay(Ljava/lang/String;Landroid/text/format/Time;)V

    .line 898
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/text/format/Time;->normalize(Z)J

    .line 899
    iget v0, v9, Landroid/text/format/Time;->yearDay:I

    move/from16 v24, v0

    iget v0, v10, Landroid/text/format/Time;->yearDay:I

    move/from16 v25, v0

    sub-int v8, v24, v25

    .line 900
    .restart local v8       #dayOffset:I
    const-string v24, "VCalendarUtils"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "dayOffset: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    const/4 v11, 0x1

    .restart local v11       #i:I
    :goto_6
    array-length v0, v5

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v11, v0, :cond_19

    .line 903
    aget-object v24, v5, v11

    const-string v25, "+"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_14

    .line 904
    aget-object v24, v5, v11

    const/16 v25, 0x0

    aget-object v26, v5, v11

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    add-int/lit8 v26, v26, -0x1

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 902
    :cond_13
    :goto_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 906
    :cond_14
    aget-object v24, v5, v11

    const-string v25, "-"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_15

    .line 907
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "-"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    aget-object v25, v5, v11

    const/16 v26, 0x0

    aget-object v27, v5, v11

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v27

    add-int/lit8 v27, v27, -0x1

    invoke-virtual/range {v25 .. v27}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 909
    :cond_15
    aget-object v24, v5, v11

    const-string v25, "T"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_16

    aget-object v24, v5, v11

    const-string v25, "Z"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_16

    .line 910
    aget-object v21, v5, v11

    .line 911
    const-string v24, "UNTIL="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_7

    .line 913
    :cond_16
    aget-object v24, v5, v11

    const-string v25, "#"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_17

    .line 914
    aget-object v24, v5, v11

    const/16 v25, 0x1

    aget-object v26, v5, v11

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 915
    const-string v24, "0"

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_13

    .line 916
    const-string v24, "COUNT="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_7

    .line 918
    :cond_17
    aget-object v24, v5, v11

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->MatchWeekDay(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_18

    .line 919
    aget-object v24, v5, v11

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 921
    :cond_18
    aget-object v24, v5, v11

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->MatchMonthDay(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_13

    .line 922
    aget-object v24, v5, v11

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 935
    :cond_19
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-lez v24, :cond_1c

    .line 936
    const-string v24, "BYDAY="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 937
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-lez v24, :cond_1a

    .line 938
    const/16 v24, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 940
    :cond_1a
    const/4 v11, 0x0

    :goto_8
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v11, v0, :cond_1b

    .line 941
    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 940
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    .line 943
    :cond_1b
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->length()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    const/16 v25, 0x3b

    move-object/from16 v0, v17

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 944
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->clear()V

    .line 947
    :cond_1c
    const-string v4, ""

    .line 948
    .local v4, alreadyFixMonthDayOffset:Ljava/lang/String;
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-lez v24, :cond_7

    .line 949
    const-string v24, "BYMONTHDAY="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 950
    const/4 v11, 0x0

    :goto_9
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v11, v0, :cond_1d

    .line 951
    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v8, v10, v1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkMonthDayWithOffset(ILandroid/text/format/Time;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 953
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 950
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    .line 956
    :cond_1d
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->length()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    const/16 v25, 0x3b

    move-object/from16 v0, v17

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 957
    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_3

    .line 960
    .end local v4           #alreadyFixMonthDayOffset:Ljava/lang/String;
    .end local v8           #dayOffset:I
    .end local v9           #eventTimeLocal:Landroid/text/format/Time;
    .end local v10           #eventTimeUTC:Landroid/text/format/Time;
    .end local v11           #i:I
    :cond_1e
    const/16 v24, 0x0

    aget-object v24, v5, v24

    const-string v25, "W"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_25

    .line 961
    const/16 v24, 0x0

    aget-object v24, v5, v24

    const/16 v25, 0x1

    const/16 v26, 0x0

    aget-object v26, v5, v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 962
    const-string v24, "WEEKLY;"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "INTERVAL="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 963
    const-string v24, "WKST="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "SU"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 966
    new-instance v9, Landroid/text/format/Time;

    const-string v24, "UTC"

    move-object/from16 v0, v24

    invoke-direct {v9, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 967
    .restart local v9       #eventTimeLocal:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 968
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v9}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkTimeStringInAllDay(Ljava/lang/String;Landroid/text/format/Time;)V

    .line 969
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkTimeUTC(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_1f

    .line 970
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 972
    :cond_1f
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/text/format/Time;->normalize(Z)J

    .line 975
    new-instance v10, Landroid/text/format/Time;

    const-string v24, "UTC"

    move-object/from16 v0, v24

    invoke-direct {v10, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 976
    .restart local v10       #eventTimeUTC:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 977
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkTimeStringInAllDay(Ljava/lang/String;Landroid/text/format/Time;)V

    .line 978
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/text/format/Time;->normalize(Z)J

    .line 979
    iget v0, v9, Landroid/text/format/Time;->yearDay:I

    move/from16 v24, v0

    iget v0, v10, Landroid/text/format/Time;->yearDay:I

    move/from16 v25, v0

    sub-int v8, v24, v25

    .line 980
    .restart local v8       #dayOffset:I
    const-string v24, "VCalendarUtils"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "dayOffset: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    const-string v3, ""

    .line 983
    .local v3, alreadyFixDayOffset:Ljava/lang/String;
    const/4 v11, 0x1

    .restart local v11       #i:I
    :goto_a
    array-length v0, v5

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v11, v0, :cond_23

    .line 984
    aget-object v24, v5, v11

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->MatchWeekDay(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_20

    .line 985
    aget-object v24, v5, v11

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v8, v1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkWeekDayWithOffset(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 986
    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 989
    :cond_20
    aget-object v24, v5, v11

    const-string v25, "#"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_21

    .line 990
    aget-object v24, v5, v11

    const/16 v25, 0x1

    aget-object v26, v5, v11

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 991
    const-string v24, "0"

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_21

    .line 992
    const-string v24, "COUNT="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 995
    :cond_21
    aget-object v24, v5, v11

    const-string v25, "T"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_22

    aget-object v24, v5, v11

    const-string v25, "Z"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_22

    .line 996
    aget-object v21, v5, v11

    .line 997
    const-string v24, "UNTIL="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 983
    :cond_22
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_a

    .line 1001
    :cond_23
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-lez v24, :cond_7

    .line 1002
    const-string v24, "BYDAY="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1003
    const/4 v11, 0x0

    :goto_b
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v11, v0, :cond_24

    .line 1004
    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1003
    add-int/lit8 v11, v11, 0x1

    goto :goto_b

    .line 1006
    :cond_24
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->length()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    const/16 v25, 0x3b

    move-object/from16 v0, v17

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 1007
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_3

    .line 1010
    .end local v3           #alreadyFixDayOffset:Ljava/lang/String;
    .end local v8           #dayOffset:I
    .end local v9           #eventTimeLocal:Landroid/text/format/Time;
    .end local v10           #eventTimeUTC:Landroid/text/format/Time;
    .end local v11           #i:I
    :cond_25
    const/16 v24, 0x0

    aget-object v24, v5, v24

    const-string v25, "D"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_7

    .line 1011
    const/16 v24, 0x0

    aget-object v24, v5, v24

    const/16 v25, 0x1

    const/16 v26, 0x0

    aget-object v26, v5, v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 1012
    const-string v24, "DAILY;"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "INTERVAL="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1013
    const-string v24, "WKST="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "SU"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1015
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_c
    array-length v0, v5

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v11, v0, :cond_7

    .line 1016
    aget-object v24, v5, v11

    const-string v25, "#"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_26

    .line 1017
    aget-object v24, v5, v11

    const/16 v25, 0x1

    aget-object v26, v5, v11

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1018
    const-string v24, "0"

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_26

    .line 1019
    const-string v24, "COUNT="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1022
    :cond_26
    aget-object v24, v5, v11

    const-string v25, "T"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_27

    aget-object v24, v5, v11

    const-string v25, "Z"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_27

    .line 1023
    aget-object v21, v5, v11

    .line 1024
    const-string v24, "UNTIL="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1015
    :cond_27
    add-int/lit8 v11, v11, 0x1

    goto :goto_c
.end method

.method public getAlarmCV()Landroid/content/ContentValues;
    .locals 2

    .prologue
    .line 1724
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getAlarmCV(J)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getAlarmCV(J)Landroid/content/ContentValues;
    .locals 4
    .parameter "eventId"

    .prologue
    .line 1728
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1729
    .local v0, cv:Landroid/content/ContentValues;
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_0

    .line 1730
    const-string v1, "event_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1732
    :cond_0
    const-string v1, "method"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1733
    const-string v1, "minutes"

    iget-wide v2, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->alarm:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1735
    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1097
    new-instance v0, Lcom/htc/util/calendar/vcalendar/CalendarStruct;

    invoke-direct {v0}, Lcom/htc/util/calendar/vcalendar/CalendarStruct;-><init>()V

    .line 1099
    .local v0, calStruct:Lcom/htc/util/calendar/vcalendar/CalendarStruct;
    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->timezone:Ljava/lang/String;

    iput-object v4, v0, Lcom/htc/util/calendar/vcalendar/CalendarStruct;->timezone:Ljava/lang/String;

    .line 1101
    new-instance v3, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;

    invoke-direct {v3}, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;-><init>()V

    .line 1103
    .local v3, evtStruct:Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;
    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->uid:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->uid:Ljava/lang/String;

    .line 1104
    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->summary:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->title:Ljava/lang/String;

    .line 1105
    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->description:Ljava/lang/String;

    .line 1106
    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->dtstart:Ljava/lang/String;

    .line 1107
    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTEnd:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->dtend:Ljava/lang/String;

    .line 1108
    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->duration:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->duration:Ljava/lang/String;

    .line 1109
    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->location:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->event_location:Ljava/lang/String;

    .line 1110
    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->rRule:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->rrule:Ljava/lang/String;

    .line 1111
    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->rDate:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->rdate:Ljava/lang/String;

    .line 1112
    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->exRule:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->exrule:Ljava/lang/String;

    .line 1113
    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->exDate:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->exdate:Ljava/lang/String;

    .line 1114
    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->status:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->status:Ljava/lang/String;

    .line 1115
    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strAlarm:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->alarm:Ljava/lang/String;

    .line 1116
    iget-boolean v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isAllDay:Z

    iput-boolean v4, v3, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->isAllday:Z

    .line 1117
    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->last_update_time:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->last_update_time:Ljava/lang/String;

    .line 1119
    invoke-virtual {v0, v3}, Lcom/htc/util/calendar/vcalendar/CalendarStruct;->addEventList(Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;)V

    .line 1122
    :try_start_0
    new-instance v1, Lcom/htc/util/calendar/vcalendar/VCalComposer;

    invoke-direct {v1}, Lcom/htc/util/calendar/vcalendar/VCalComposer;-><init>()V

    .line 1124
    .local v1, composer:Lcom/htc/util/calendar/vcalendar/VCalComposer;
    const/4 v4, 0x1

    invoke-virtual {v1, v0, v4}, Lcom/htc/util/calendar/vcalendar/VCalComposer;->createVCal(Lcom/htc/util/calendar/vcalendar/CalendarStruct;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1128
    .end local v1           #composer:Lcom/htc/util/calendar/vcalendar/VCalComposer;
    :goto_0
    return-object v4

    .line 1127
    :catch_0
    move-exception v2

    .line 1128
    .local v2, e:Ljava/lang/Exception;
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public getEventCV()Landroid/content/ContentValues;
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1635
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1641
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "iCalGUID"

    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1644
    const-string v1, "title"

    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->summary:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1646
    const-string v1, "dtstart"

    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    invoke-virtual {v4, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1647
    iget-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtEnd:Landroid/text/format/Time;

    if-eqz v1, :cond_0

    .line 1648
    const-string v1, "dtend"

    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtEnd:Landroid/text/format/Time;

    invoke-virtual {v4, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1651
    :cond_0
    iget-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->duration:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1652
    const-string v1, "duration"

    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->duration:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1655
    :cond_1
    const-string v1, "eventLocation"

    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->location:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1657
    iget-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 1658
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    .line 1660
    :cond_2
    iget-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->categories:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 1661
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\ncategories: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->categories:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    .line 1663
    :cond_3
    iget-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->priority:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 1664
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\npriority: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->priority:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    .line 1666
    :cond_4
    iget-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->status:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 1667
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\nstatus: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->status:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    .line 1669
    :cond_5
    iget-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    const-string v4, ""

    if-ne v1, v4, :cond_6

    .line 1670
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    .line 1672
    :cond_6
    const-string v1, "description"

    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1674
    const-string v4, "allDay"

    iget-boolean v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isAllDay:Z

    if-ne v1, v2, :cond_c

    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1676
    iget-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->timezone:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 1677
    const-string v1, "eventTimezone"

    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->timezone:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1680
    :cond_7
    iget-boolean v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->hasAlarm:Z

    if-eqz v1, :cond_d

    .line 1681
    const-string v1, "hasAlarm"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1686
    :goto_1
    iget-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->rRule:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 1687
    const-string v1, "rrule"

    iget-object v2, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->rRule:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1689
    :cond_8
    iget-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->rDate:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 1690
    const-string v1, "rdate"

    iget-object v2, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->rDate:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1692
    :cond_9
    iget-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->exRule:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 1693
    const-string v1, "exrule"

    iget-object v2, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->exRule:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1695
    :cond_a
    iget-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->exDate:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 1696
    iget-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->exDate:Ljava/lang/String;

    const-string v2, ";"

    const-string v3, ","

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->exDate:Ljava/lang/String;

    .line 1697
    const-string v1, "exdate"

    iget-object v2, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->exDate:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1700
    :cond_b
    return-object v0

    :cond_c
    move v1, v3

    .line 1674
    goto :goto_0

    .line 1683
    :cond_d
    const-string v1, "hasAlarm"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1
.end method

.method public getHash()J
    .locals 3

    .prologue
    .line 1141
    invoke-virtual {p0}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getContent()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->vCalendar:Ljava/lang/String;

    .line 1143
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 1145
    .local v0, crc:Ljava/util/zip/CRC32;
    iget-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->vCalendar:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1146
    iget-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->vCalendar:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update([B)V

    .line 1149
    :cond_0
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    return-wide v1
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->_id:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMultiEventAlarmsCV()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1708
    iget-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_EventAlarm_ContentValue:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMultiEventsCV()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1624
    iget-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_Event_ContentValue:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMultiToDoAlarmsCV()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1716
    iget-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_ToDoAlarm_ContentValue:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMultiToDoCV()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1631
    iget-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_ToDo_ContentValue:Ljava/util/ArrayList;

    return-object v0
.end method

.method public gethasAlarm()Z
    .locals 1

    .prologue
    .line 297
    iget-boolean v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->hasAlarm:Z

    return v0
.end method

.method public parseVCalendar(Ljava/lang/String;)Z
    .locals 1
    .parameter "vcalendar"

    .prologue
    .line 257
    invoke-direct {p0, p1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->init(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 278
    iput-object p1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->_id:Ljava/lang/String;

    .line 279
    return-void
.end method
