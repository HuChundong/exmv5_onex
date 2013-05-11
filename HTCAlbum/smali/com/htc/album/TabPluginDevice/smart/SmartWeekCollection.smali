.class public Lcom/htc/album/TabPluginDevice/smart/SmartWeekCollection;
.super Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
.source "SmartWeekCollection.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/album/TabPluginDevice/smart/SmartWeekCollection;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/htc/album/TabPluginDevice/smart/SmartWeekCollection$1;

    invoke-direct {v0}, Lcom/htc/album/TabPluginDevice/smart/SmartWeekCollection$1;-><init>()V

    sput-object v0, Lcom/htc/album/TabPluginDevice/smart/SmartWeekCollection;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 28
    const-string v0, "com.htc.HTCAlbum.SMART_TIME_WEEK"

    invoke-direct {p0, p1, v0}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;-><init>()V

    .line 92
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/smart/SmartWeekCollection;->readFromParcel(Landroid/os/Parcel;)V

    .line 93
    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 8

    .prologue
    .line 35
    iget-object v4, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 36
    iget-object v4, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    .line 50
    :goto_0
    return-object v4

    .line 38
    :cond_0
    iget-wide v4, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mStartTime:J

    iget-wide v6, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mEndTime:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 39
    .local v0, diff:J
    const-wide/32 v4, 0x5265c00

    cmp-long v4, v0, v4

    if-gtz v4, :cond_1

    .line 41
    iget-object v4, p0, Lcom/htc/album/modules/collection/Collection;->mContext:Landroid/content/Context;

    iget-wide v5, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mTime:J

    invoke-static {v4, v5, v6}, Lcom/htc/opensense2/album/util/DateTimeManager;->getDateString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    .line 50
    :goto_1
    iget-object v4, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    goto :goto_0

    .line 45
    :cond_1
    iget-object v4, p0, Lcom/htc/album/modules/collection/Collection;->mContext:Landroid/content/Context;

    iget-wide v5, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mStartTime:J

    invoke-static {v4, v5, v6}, Lcom/htc/opensense2/album/util/DateTimeManager;->getDateString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    .line 46
    .local v3, start:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/album/modules/collection/Collection;->mContext:Landroid/content/Context;

    iget-wide v5, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mEndTime:J

    invoke-static {v4, v5, v6}, Lcom/htc/opensense2/album/util/DateTimeManager;->getDateString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    .line 47
    .local v2, end:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    goto :goto_1
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->readFromParcel(Landroid/os/Parcel;)V

    .line 100
    return-void
.end method

.method public setRange(JJLjava/lang/String;DD)V
    .locals 7
    .parameter "timeStart"
    .parameter "timeEnd"
    .parameter "eventId"
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 57
    invoke-super/range {p0 .. p9}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->setRange(JJLjava/lang/String;DD)V

    .line 59
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 60
    .local v0, calendar:Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 61
    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 62
    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 63
    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 64
    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 66
    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v2

    .line 67
    .local v2, firstDayWeek:I
    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 69
    .local v1, dayOfWeek:I
    const/4 v3, 0x6

    sub-int v4, v2, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 71
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mTimeMin:J

    .line 72
    iget-wide v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mTimeMin:J

    const-wide/32 v5, 0x240c8400

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mTimeMax:J

    .line 73
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .parameter "out"
    .parameter "arg1"

    .prologue
    .line 106
    invoke-super {p0, p1, p2}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->writeToParcel(Landroid/os/Parcel;I)V

    .line 107
    return-void
.end method
