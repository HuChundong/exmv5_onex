.class public Lcom/htc/album/TabPluginDevice/smart/SmartDayCollection;
.super Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
.source "SmartDayCollection.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/album/TabPluginDevice/smart/SmartDayCollection;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/htc/album/TabPluginDevice/smart/SmartDayCollection$1;

    invoke-direct {v0}, Lcom/htc/album/TabPluginDevice/smart/SmartDayCollection$1;-><init>()V

    sput-object v0, Lcom/htc/album/TabPluginDevice/smart/SmartDayCollection;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 28
    const-string v0, "com.htc.HTCAlbum.SMART_TIME_DAY"

    invoke-direct {p0, p1, v0}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;-><init>()V

    .line 76
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/smart/SmartDayCollection;->readFromParcel(Landroid/os/Parcel;)V

    .line 77
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

    .line 39
    :goto_0
    return-object v0

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mTime:J

    invoke-static {v0, v1, v2}, Lcom/htc/opensense2/album/util/DateTimeManager;->getDateString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    .line 39
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->readFromParcel(Landroid/os/Parcel;)V

    .line 84
    return-void
.end method

.method public setRange(JJLjava/lang/String;DD)V
    .locals 5
    .parameter "timeStart"
    .parameter "timeEnd"
    .parameter "eventId"
    .parameter "lat"
    .parameter "lng"

    .prologue
    const/4 v2, 0x0

    .line 46
    invoke-super/range {p0 .. p9}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->setRange(JJLjava/lang/String;DD)V

    .line 48
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 49
    .local v0, calendar:Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 50
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 51
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 52
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 53
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 55
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mTimeMin:J

    .line 56
    iget-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mTimeMin:J

    const-wide/32 v3, 0x5265c00

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mTimeMax:J

    .line 57
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .parameter "out"
    .parameter "arg1"

    .prologue
    .line 90
    invoke-super {p0, p1, p2}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->writeToParcel(Landroid/os/Parcel;I)V

    .line 91
    return-void
.end method
