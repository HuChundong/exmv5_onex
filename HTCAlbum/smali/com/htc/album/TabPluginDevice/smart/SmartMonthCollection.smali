.class public Lcom/htc/album/TabPluginDevice/smart/SmartMonthCollection;
.super Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
.source "SmartMonthCollection.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/album/TabPluginDevice/smart/SmartMonthCollection;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcom/htc/album/TabPluginDevice/smart/SmartMonthCollection$1;

    invoke-direct {v0}, Lcom/htc/album/TabPluginDevice/smart/SmartMonthCollection$1;-><init>()V

    sput-object v0, Lcom/htc/album/TabPluginDevice/smart/SmartMonthCollection;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 28
    const-string v0, "com.htc.HTCAlbum.SMART_TIME_MONTH"

    invoke-direct {p0, p1, v0}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;-><init>()V

    .line 84
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/smart/SmartMonthCollection;->readFromParcel(Landroid/os/Parcel;)V

    .line 85
    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 35
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    .line 40
    :goto_0
    return-object v0

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mTime:J

    invoke-static {v0, v1, v2}, Lcom/htc/opensense2/album/util/DateTimeManager;->getMonthString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    .line 40
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->readFromParcel(Landroid/os/Parcel;)V

    .line 92
    return-void
.end method

.method public setRange(JJLjava/lang/String;DD)V
    .locals 6
    .parameter "timeStart"
    .parameter "timeEnd"
    .parameter "eventId"
    .parameter "lat"
    .parameter "lng"

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 47
    invoke-super/range {p0 .. p9}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->setRange(JJLjava/lang/String;DD)V

    .line 49
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 50
    .local v0, calendar:Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 51
    invoke-virtual {v0, v5, v4}, Ljava/util/Calendar;->set(II)V

    .line 52
    const/16 v2, 0xb

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 53
    const/16 v2, 0xc

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 54
    const/16 v2, 0xd

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 55
    const/16 v2, 0xe

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 57
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mTimeMin:J

    .line 59
    sget-object v2, Lcom/htc/album/TabPluginDevice/smart/SmartMonthCollection;->MONTH_DAYS:[I

    iget v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mMonth:I

    aget v1, v2, v3

    .line 60
    .local v1, daysOfMonth:I
    iget v2, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mMonth:I

    if-ne v2, v4, :cond_0

    iget v2, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mYear:I

    rem-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_0

    .line 61
    add-int/lit8 v1, v1, 0x1

    .line 62
    :cond_0
    invoke-virtual {v0, v5, v1}, Ljava/util/Calendar;->add(II)V

    .line 64
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mTimeMax:J

    .line 65
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .parameter "out"
    .parameter "arg1"

    .prologue
    .line 98
    invoke-super {p0, p1, p2}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->writeToParcel(Landroid/os/Parcel;I)V

    .line 99
    return-void
.end method
