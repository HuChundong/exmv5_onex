.class public Lcom/htc/album/TabPluginDevice/smart/SmartEventCollection;
.super Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;
.source "SmartEventCollection.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/album/TabPluginDevice/smart/SmartEventCollection;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROJECTION_CALENDAR_EVENT:[Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mEventID:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "eventLocation"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "eventTimezone"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "dtstart"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "dtend"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "duration"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/album/TabPluginDevice/smart/SmartEventCollection;->PROJECTION_CALENDAR_EVENT:[Ljava/lang/String;

    .line 95
    new-instance v0, Lcom/htc/album/TabPluginDevice/smart/SmartEventCollection$1;

    invoke-direct {v0}, Lcom/htc/album/TabPluginDevice/smart/SmartEventCollection$1;-><init>()V

    sput-object v0, Lcom/htc/album/TabPluginDevice/smart/SmartEventCollection;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;-><init>()V

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartEventCollection;->mEventID:I

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;-><init>(Landroid/content/Context;)V

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartEventCollection;->mEventID:I

    .line 49
    const-string v0, "com.htc.HTCAlbum.SMART_EVENT"

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    .line 50
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;-><init>()V

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartEventCollection;->mEventID:I

    .line 111
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/smart/SmartEventCollection;->readFromParcel(Landroid/os/Parcel;)V

    .line 112
    return-void
.end method


# virtual methods
.method public clone(Lcom/htc/album/modules/collection/Collection;)V
    .locals 1
    .parameter "collection"

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->clone(Lcom/htc/album/modules/collection/Collection;)V

    .line 91
    check-cast p1, Lcom/htc/album/TabPluginDevice/smart/SmartEventCollection;

    .end local p1
    iget-object v0, p1, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLocation:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLocation:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 62
    :cond_0
    const-string v0, "Untitled event"

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    .line 64
    :cond_1
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEventID()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartEventCollection;->mEventID:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 118
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->readFromParcel(Landroid/os/Parcel;)V

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLocation:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setEvent(ILjava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "eventID"
    .parameter "title"
    .parameter "timeStart"
    .parameter "timeEnd"
    .parameter "timeZone"
    .parameter "location"

    .prologue
    .line 69
    iput p1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartEventCollection;->mEventID:I

    .line 70
    iput-object p2, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calendar_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    .line 72
    invoke-static {p7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 73
    .local v0, calendar:Ljava/util/Calendar;
    invoke-virtual {v0, p3, p4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 74
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mTime:J

    .line 75
    iget-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mTime:J

    iput-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mStartTime:J

    .line 76
    iget-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mTime:J

    iput-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mTimeMin:J

    .line 78
    invoke-virtual {v0, p5, p6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 79
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mEndTime:J

    .line 80
    iget-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mEndTime:J

    iput-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mTimeMax:J

    .line 82
    iput-object p8, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLocation:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "arg1"

    .prologue
    .line 127
    invoke-super {p0, p1, p2}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->writeToParcel(Landroid/os/Parcel;I)V

    .line 129
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLocation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    return-void
.end method
