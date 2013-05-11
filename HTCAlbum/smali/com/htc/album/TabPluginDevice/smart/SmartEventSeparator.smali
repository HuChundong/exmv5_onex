.class public Lcom/htc/album/TabPluginDevice/smart/SmartEventSeparator;
.super Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
.source "SmartEventSeparator.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 19
    const-string v0, "com.htc.HTCAlbum.SMART_SEPARATOR"

    invoke-direct {p0, p1, v0}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 20
    return-void
.end method


# virtual methods
.method public getDisplayImageSourceType()I
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x6

    return v0
.end method

.method public getIdentifier()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIdentifier()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartEventSeparator;->getIdentifier()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public isSeparable()Z
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public setRange(JJLjava/lang/String;DD)V
    .locals 3
    .parameter "timeStart"
    .parameter "timeEnd"
    .parameter "eventId"
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 45
    iput-wide p1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mTime:J

    .line 46
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mTime:J

    invoke-static {v0, v1, v2}, Lcom/htc/opensense2/album/util/DateTimeManager;->getEventsMonthString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mDateDisplayName:Ljava/lang/String;

    .line 47
    return-void
.end method
