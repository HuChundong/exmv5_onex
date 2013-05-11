.class Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;
.super Lcom/htc/htcdlnainterface/IDLNAPluginNotify$Stub;
.source "HtcDLNAMiddleLayerListener.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "HtcDLNAMiddleLayerListener "


# instance fields
.field private mControllerListener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;

.field private mDiscoverRendererListener:Lcom/htc/medialinkhd/HtcDLNARendererDiscoverListener;

.field private mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

.field private mRendererList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRendererListener:Lcom/htc/medialinkhd/HtcDLNARendererStatusListener;

.field private mServerListener:Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;


# direct methods
.method public constructor <init>(Lcom/htc/medialinkhd/HtcDLNAServiceManager;)V
    .locals 2
    .parameter "manager"

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Lcom/htc/htcdlnainterface/IDLNAPluginNotify$Stub;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    .line 28
    iput-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mDiscoverRendererListener:Lcom/htc/medialinkhd/HtcDLNARendererDiscoverListener;

    .line 29
    iput-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererListener:Lcom/htc/medialinkhd/HtcDLNARendererStatusListener;

    .line 30
    iput-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mServerListener:Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;

    .line 31
    iput-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;

    .line 33
    iput-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererList:Ljava/util/HashMap;

    .line 37
    iput-object p1, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererList:Ljava/util/HashMap;

    .line 39
    return-void
.end method

.method private printDLNAControlItemDataLog(Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;Lcom/htc/htcdlnainterface/DLNAControlItemData;)V
    .locals 4
    .parameter "info"
    .parameter "itemData"

    .prologue
    .line 511
    const-string v0, "HtcDLNAMiddleLayerListener "

    const-string v1, "[HtcDLNAMiddleLayerListener] [updateControlItemInfo], ------------------ updateControlItemInfo -------------------------"

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    const-string v0, "HtcDLNAMiddleLayerListener "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNAMiddleLayerListener] [updateControlItemInfo], Thread ID             = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    const-string v0, "HtcDLNAMiddleLayerListener "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNAMiddleLayerListener] [updateControlItemInfo], Current Duration      = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getDuration()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    const-string v0, "HtcDLNAMiddleLayerListener "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNAMiddleLayerListener] [updateControlItemInfo], Updated Duration      = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/htc/htcdlnainterface/DLNAControlItemData;->getDuration()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    const-string v0, "HtcDLNAMiddleLayerListener "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNAMiddleLayerListener] [updateControlItemInfo], Current ThumbNailPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getThumbnailPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    const-string v0, "HtcDLNAMiddleLayerListener "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNAMiddleLayerListener] [updateControlItemInfo], Updated ThumbNailPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/htc/htcdlnainterface/DLNAControlItemData;->getThumbnailPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    const-string v0, "HtcDLNAMiddleLayerListener "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNAMiddleLayerListener] [updateControlItemInfo], Current Title         = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    const-string v0, "HtcDLNAMiddleLayerListener "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNAMiddleLayerListener] [updateControlItemInfo], Updated Title         = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/htc/htcdlnainterface/DLNAControlItemData;->getContentTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    const-string v0, "HtcDLNAMiddleLayerListener "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNAMiddleLayerListener] [updateControlItemInfo], Current ContentID     = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getCurContentID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    const-string v0, "HtcDLNAMiddleLayerListener "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNAMiddleLayerListener] [updateControlItemInfo], Updated ContentID     = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/htc/htcdlnainterface/DLNAControlItemData;->getCurContentID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    const-string v0, "HtcDLNAMiddleLayerListener "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNAMiddleLayerListener] [updateControlItemInfo]  album art path        = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/htc/htcdlnainterface/DLNAControlItemData;->getDownloadStoreAlbumArtPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    const-string v0, "HtcDLNAMiddleLayerListener "

    const-string v1, "[HtcDLNAMiddleLayerListener] [updateControlItemInfo], -------------------------------------------------------------------"

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    return-void
.end method

.method private printDLNAControllerStatusLog(Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;Lcom/htc/htcdlnainterface/DLNAControllerStatus;)V
    .locals 4
    .parameter "info"
    .parameter "status"

    .prologue
    .line 442
    const-string v0, "HtcDLNAMiddleLayerListener "

    const-string v1, "[HtcDLNAMiddleLayerListener] [updateControllerStatus], ------------------ updateControllerStatus -------------------------"

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    const-string v0, "HtcDLNAMiddleLayerListener "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNAMiddleLayerListener] [updateControllerStatus], Thread ID             = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    const-string v0, "HtcDLNAMiddleLayerListener "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNAMiddleLayerListener] [updateControllerStatus], Current state         = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getPlayState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    const-string v0, "HtcDLNAMiddleLayerListener "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNAMiddleLayerListener] [updateControllerStatus], Updated state         = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/htc/htcdlnainterface/DLNAControllerStatus;->getPlayState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    const-string v0, "HtcDLNAMiddleLayerListener "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNAMiddleLayerListener] [updateControllerStatus], Current position      = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    const-string v0, "HtcDLNAMiddleLayerListener "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNAMiddleLayerListener] [updateControllerStatus], Updated position      = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/htc/htcdlnainterface/DLNAControllerStatus;->getPosition()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    const-string v0, "HtcDLNAMiddleLayerListener "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNAMiddleLayerListener] [updateControllerStatus], Current Duration      = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getDuration()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    const-string v0, "HtcDLNAMiddleLayerListener "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNAMiddleLayerListener] [updateControllerStatus], Updated Duration      = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/htc/htcdlnainterface/DLNAControllerStatus;->getDuration()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    const-string v0, "HtcDLNAMiddleLayerListener "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNAMiddleLayerListener] [updateControllerStatus], Current Title         = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    const-string v0, "HtcDLNAMiddleLayerListener "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNAMiddleLayerListener] [updateControllerStatus], Updated Title         = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/htc/htcdlnainterface/DLNAControllerStatus;->getContentTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    const-string v0, "HtcDLNAMiddleLayerListener "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNAMiddleLayerListener] [updateControllerStatus], Current ContentID     = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getCurContentID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const-string v0, "HtcDLNAMiddleLayerListener "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNAMiddleLayerListener] [updateControllerStatus], Updated ContentID     = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/htc/htcdlnainterface/DLNAControllerStatus;->getCurContentID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    const-string v0, "HtcDLNAMiddleLayerListener "

    const-string v1, "[HtcDLNAMiddleLayerListener] [updateControllerStatus], -------------------------------------------------------------------"

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    return-void
.end method


# virtual methods
.method public albumArtDownloadedNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "serverID"
    .parameter "contentID"
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 674
    monitor-enter p0

    .line 675
    :try_start_0
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;

    .line 676
    .local v0, listener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;
    if-eqz v0, :cond_0

    .line 678
    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;->onAlbumArtDownloaded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    :cond_0
    monitor-exit p0

    .line 681
    return-void

    .line 680
    .end local v0           #listener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public contentAddedNotify(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 7
    .parameter "serverID"
    .parameter "containerID"
    .parameter "startIndex"
    .parameter "lastIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 718
    monitor-enter p0

    .line 719
    :try_start_0
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mServerListener:Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;

    .line 720
    .local v0, listener:Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    .line 722
    invoke-virtual/range {v0 .. v6}, Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;->onContentAdded(Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 724
    :cond_0
    monitor-exit p0

    .line 725
    return-void

    .line 724
    .end local v0           #listener:Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public contentBrowsingDoneNotify(Ljava/lang/String;Ljava/lang/String;JJZ)V
    .locals 8
    .parameter "serverID"
    .parameter "containerID"
    .parameter "startIndex"
    .parameter "lastIndex"
    .parameter "isComplete"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 733
    monitor-enter p0

    .line 734
    :try_start_0
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mServerListener:Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;

    .line 735
    .local v0, listener:Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move v7, p7

    .line 737
    invoke-virtual/range {v0 .. v7}, Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;->onContentBrowsingDone(Ljava/lang/String;Ljava/lang/String;JJZ)V

    .line 739
    :cond_0
    monitor-exit p0

    .line 740
    return-void

    .line 739
    .end local v0           #listener:Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public contentBrowsingErrorNotify(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V
    .locals 7
    .parameter "serverID"
    .parameter "containerID"
    .parameter "startIndex"
    .parameter "errorID"
    .parameter "errorReason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 748
    monitor-enter p0

    .line 749
    :try_start_0
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mServerListener:Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;

    .line 750
    .local v0, listener:Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    move-object v6, p6

    .line 752
    invoke-virtual/range {v0 .. v6}, Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;->onContentBrowsingError(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V

    .line 754
    :cond_0
    monitor-exit p0

    .line 755
    return-void

    .line 754
    .end local v0           #listener:Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public contentThumbnailUpdateNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "serverID"
    .parameter "contentID"
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 703
    monitor-enter p0

    .line 704
    :try_start_0
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mServerListener:Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;

    .line 705
    .local v0, listener:Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;
    if-eqz v0, :cond_0

    .line 707
    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;->onContentThumbnailUpdated(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    :cond_0
    monitor-exit p0

    .line 710
    return-void

    .line 709
    .end local v0           #listener:Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public contentUpdatedNotify(Ljava/lang/String;J)V
    .locals 2
    .parameter "containerID"
    .parameter "startIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 762
    monitor-enter p0

    .line 763
    :try_start_0
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mServerListener:Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;

    .line 764
    .local v0, listener:Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;
    if-eqz v0, :cond_0

    .line 766
    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;->onContentUpdated(Ljava/lang/String;J)V

    .line 768
    :cond_0
    monitor-exit p0

    .line 769
    return-void

    .line 768
    .end local v0           #listener:Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public controllerErrorNotify(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .parameter "rendererID"
    .parameter "errorID"
    .parameter "errorReason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 557
    const-string v1, "HtcDLNAMiddleLayerListener "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HtcDLNAMiddleLayerListener][controllerErrorNotify] rendererID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", errorID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", errorReason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    monitor-enter p0

    .line 562
    :try_start_0
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;

    .line 563
    .local v0, listener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;
    if-eqz v0, :cond_0

    .line 565
    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;->onError(Ljava/lang/String;ILjava/lang/String;)V

    .line 567
    :cond_0
    monitor-exit p0

    .line 568
    return-void

    .line 567
    .end local v0           #listener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public controllerResponseNotify(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .parameter "rendererID"
    .parameter "resID"
    .parameter "resReason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 578
    const-string v1, "HtcDLNAMiddleLayerListener "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HtcDLNAMiddleLayerListener][controllerResponseNotify] rendererID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", resID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", resReason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    const/16 v1, -0x135

    if-ne p2, v1, :cond_0

    .line 586
    :cond_0
    monitor-enter p0

    .line 587
    :try_start_0
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;

    .line 588
    .local v0, listener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;
    if-eqz v0, :cond_1

    .line 590
    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;->onResponse(Ljava/lang/String;ILjava/lang/String;)V

    .line 592
    :cond_1
    monitor-exit p0

    .line 593
    return-void

    .line 592
    .end local v0           #listener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getContentItemDetailsNotify(Ljava/lang/String;Ljava/lang/String;Lcom/htc/htcdlnainterface/DLNAContentItemDetails;)V
    .locals 4
    .parameter "serverID"
    .parameter "contentID"
    .parameter "details"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 603
    const-string v1, "HtcDLNAMiddleLayerListener "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HtcDLNAMiddleLayerListener][getContentItemDetailsNotify] serverID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", contentID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", details = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    monitor-enter p0

    .line 606
    :try_start_0
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;

    .line 607
    .local v0, listener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;
    if-eqz v0, :cond_0

    .line 609
    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p3}, Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;->onItemDetailsUpdated(JLcom/htc/htcdlnainterface/DLNAContentItemDetails;)V

    .line 610
    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2, p3}, Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;->onItemDetailsUpdated(Ljava/lang/String;JLcom/htc/htcdlnainterface/DLNAContentItemDetails;)V

    .line 612
    :cond_0
    monitor-exit p0

    .line 613
    return-void

    .line 612
    .end local v0           #listener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDiscoverRendererListener()Lcom/htc/medialinkhd/HtcDLNARendererDiscoverListener;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mDiscoverRendererListener:Lcom/htc/medialinkhd/HtcDLNARendererDiscoverListener;

    return-object v0
.end method

.method public getHtcDLNAControllerStatusListener()Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;

    return-object v0
.end method

.method public getHtcDLNARendererStatusListener()Lcom/htc/medialinkhd/HtcDLNARendererStatusListener;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererListener:Lcom/htc/medialinkhd/HtcDLNARendererStatusListener;

    return-object v0
.end method

.method public getHtcDLNAServerStatusListener()Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mServerListener:Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;

    return-object v0
.end method

.method public imageDownloadedNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "serverID"
    .parameter "contentID"
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 777
    monitor-enter p0

    .line 778
    :try_start_0
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mServerListener:Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;

    .line 779
    .local v0, listener:Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;
    if-eqz v0, :cond_0

    .line 781
    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;->onImageDownloaded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    :cond_0
    monitor-exit p0

    .line 784
    return-void

    .line 783
    .end local v0           #listener:Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public mirrorRendererAddedNotify(Lcom/htc/htcdlnainterface/DLNARendererData;)V
    .locals 4
    .parameter "rendererData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 643
    const-string v1, "HtcDLNAMiddleLayerListener "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HtcDLNAMiddleLayerListener][mirrorRendererAddedNotify] rendererData = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", rendererId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNARendererData;->getRendererId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", rendererName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNARendererData;->getRendererName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    monitor-enter p0

    .line 647
    :try_start_0
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererListener:Lcom/htc/medialinkhd/HtcDLNARendererStatusListener;

    .line 648
    .local v0, listener:Lcom/htc/medialinkhd/HtcDLNARendererStatusListener;
    if-eqz v0, :cond_0

    .line 649
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNARendererData;->getRendererId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNARendererData;->getRendererName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/medialinkhd/HtcDLNARendererStatusListener;->onMirrorRendererConnected(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    :cond_0
    monitor-exit p0

    .line 651
    return-void

    .line 650
    .end local v0           #listener:Lcom/htc/medialinkhd/HtcDLNARendererStatusListener;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public playlistCreatedResultNotify(Ljava/lang/String;JJ)V
    .locals 5
    .parameter "rendererID"
    .parameter "totalCount"
    .parameter "currentIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 357
    const-string v2, "HtcDLNAMiddleLayerListener "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcDLNAMiddleLayerListener][playlistCreatedResultNotify] currentIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", totalCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getControllerInfo()Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    move-result-object v0

    .line 361
    .local v0, info:Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;
    invoke-virtual {v0, p4, p5}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setIndex(J)V

    .line 362
    invoke-virtual {v0, p2, p3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setTotal(J)V

    .line 363
    monitor-enter p0

    .line 364
    :try_start_0
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;

    .line 365
    .local v1, listener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;
    if-eqz v1, :cond_0

    .line 367
    invoke-virtual {v1, v0}, Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;->onControllerInfoupdated(Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;)V

    .line 369
    :cond_0
    monitor-exit p0

    .line 370
    return-void

    .line 369
    .end local v1           #listener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public rendererAddedNotify(Lcom/htc/htcdlnainterface/DLNARendererData;)V
    .locals 7
    .parameter "rendererData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 194
    const-string v2, "HtcDLNAMiddleLayerListener "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcDLNAMiddleLayerListener][rendererAddedNotify] rendererData = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", rendererID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNARendererData;->getRendererId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", rendererName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNARendererData;->getRendererName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererList:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNARendererData;->getRendererId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNARendererData;->getRendererName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getHtcDLNARendererDiscoverer()Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getHtcDLNARendererDiscoverer()Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;->checkIfMatchRenderer(Lcom/htc/htcdlnainterface/DLNARendererData;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 212
    const-string v2, "HtcDLNAMiddleLayerListener "

    const-string v3, "RendererDiscoverer find the same renderer as rendererAddedNotify() callback."

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :goto_0
    return-void

    .line 217
    :cond_0
    monitor-enter p0

    .line 218
    :try_start_0
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererListener:Lcom/htc/medialinkhd/HtcDLNARendererStatusListener;

    .line 219
    .local v1, listener:Lcom/htc/medialinkhd/HtcDLNARendererStatusListener;
    if-nez v1, :cond_1

    .line 221
    const-string v2, "HtcDLNAMiddleLayerListener "

    const-string v3, "no listener"

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    monitor-exit p0

    goto :goto_0

    .line 251
    .end local v1           #listener:Lcom/htc/medialinkhd/HtcDLNARendererStatusListener;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 226
    .restart local v1       #listener:Lcom/htc/medialinkhd/HtcDLNARendererStatusListener;
    :cond_1
    if-eqz p1, :cond_3

    :try_start_1
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNARendererData;->getRendererId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getRendererId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 227
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;

    .line 228
    .local v0, controllerListener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;
    if-eqz v0, :cond_2

    .line 230
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getControllerInfo()Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    move-result-object v2

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNARendererData;->getRendererName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setRendererName(Ljava/lang/String;)V

    .line 232
    :cond_2
    const-string v2, "HtcDLNAMiddleLayerListener "

    const-string v3, "This renderer is the one set by application, call HtcDLNARendererStatusListener.onConnected()"

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNARendererData;->getRendererId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNARendererData;->getRendererName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/medialinkhd/HtcDLNARendererStatusListener;->onConnected(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string v2, "HtcDLNAMiddleLayerListener "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Notify user state change to DMR\'s state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v4}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getControllerInfo()Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getPlayState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getControllerInfo()Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getPlayState()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->setState(IZZ)V

    .line 241
    .end local v0           #controllerListener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;
    :cond_3
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNARendererData;->getThumbIconType()I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_4

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNARendererData;->getThumbIconType()I

    move-result v2

    if-ne v2, v6, :cond_5

    .line 244
    :cond_4
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNARendererData;->getRendererId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNARendererData;->getRendererName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNARendererData;->getThumbIconType()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/medialinkhd/HtcDLNARendererStatusListener;->onHtcMediaLinkHdRendererAdded(Ljava/lang/String;Ljava/lang/String;I)V

    .line 247
    :cond_5
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNARendererData;->getRendererId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNARendererData;->getRendererName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNARendererData;->getThumbIconType()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/medialinkhd/HtcDLNARendererStatusListener;->onRendererAdded(Ljava/lang/String;Ljava/lang/String;I)V

    .line 250
    invoke-virtual {v1, p1}, Lcom/htc/medialinkhd/HtcDLNARendererStatusListener;->onRendererAdded(Lcom/htc/htcdlnainterface/DLNARendererData;)V

    .line 251
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public rendererListUpdateNotify([Lcom/htc/htcdlnainterface/DLNARendererData;)V
    .locals 10
    .parameter "rendererList"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 285
    const-string v6, "HtcDLNAMiddleLayerListener "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HtcDLNAMiddleLayerListener][rendererListUpdateNotify] rendererList = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    move-object v0, p1

    .local v0, arr$:[Lcom/htc/htcdlnainterface/DLNARendererData;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .line 289
    .local v5, renderer:Lcom/htc/htcdlnainterface/DLNARendererData;
    iget-object v6, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererList:Ljava/util/HashMap;

    invoke-virtual {v5}, Lcom/htc/htcdlnainterface/DLNARendererData;->getRendererId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/htc/htcdlnainterface/DLNARendererData;->getRendererName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    const-string v6, "HtcDLNAMiddleLayerListener "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HtcDLNAMiddleLayerListener][rendererListUpdateNotify] renderer found = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/htc/htcdlnainterface/DLNARendererData;->getRendererName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    monitor-enter p0

    .line 300
    :try_start_0
    iget-object v6, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v6}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getHtcDLNARendererDiscoverer()Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v6}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getHtcDLNARendererDiscoverer()Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;->checkIfMatchRenderer(Lcom/htc/htcdlnainterface/DLNARendererData;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 306
    const-string v6, "HtcDLNAMiddleLayerListener "

    const-string v7, "[HtcDLNAMiddleLayerListener][rendererListUpdateNotify] RendererDiscoverer found mirror renderer."

    invoke-static {v6, v7}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    monitor-exit p0

    .line 347
    .end local v5           #renderer:Lcom/htc/htcdlnainterface/DLNARendererData;
    :cond_0
    return-void

    .line 311
    .restart local v5       #renderer:Lcom/htc/htcdlnainterface/DLNARendererData;
    :cond_1
    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererListener:Lcom/htc/medialinkhd/HtcDLNARendererStatusListener;

    .line 312
    .local v4, listener:Lcom/htc/medialinkhd/HtcDLNARendererStatusListener;
    if-nez v4, :cond_2

    .line 314
    const-string v6, "HtcDLNAMiddleLayerListener "

    const-string v7, "no listener"

    invoke-static {v6, v7}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    monitor-exit p0

    .line 287
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 320
    :cond_2
    if-eqz v5, :cond_4

    iget-object v6, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Lcom/htc/htcdlnainterface/DLNARendererData;->getRendererId()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v7}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getRendererId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 321
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;

    .line 322
    .local v1, controllerListener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;
    if-eqz v1, :cond_3

    .line 324
    iget-object v6, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v6}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getControllerInfo()Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    move-result-object v6

    invoke-virtual {v5}, Lcom/htc/htcdlnainterface/DLNARendererData;->getRendererName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setRendererName(Ljava/lang/String;)V

    .line 328
    :cond_3
    const-string v6, "HtcDLNAMiddleLayerListener "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Dont Notify user state change to DMR\'s state : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v8}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getControllerInfo()Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getPlayState()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iget-object v6, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    iget-object v7, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v7}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getControllerInfo()Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getPlayState()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->setState(IZZ)V

    .line 331
    const-string v6, "HtcDLNAMiddleLayerListener "

    const-string v7, "This renderer is the one set by application, call HtcDLNARendererStatusListener.onConnected()"

    invoke-static {v6, v7}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-virtual {v5}, Lcom/htc/htcdlnainterface/DLNARendererData;->getRendererId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/htc/htcdlnainterface/DLNARendererData;->getRendererName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/htc/medialinkhd/HtcDLNARendererStatusListener;->onConnected(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    .end local v1           #controllerListener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;
    :cond_4
    invoke-virtual {v5}, Lcom/htc/htcdlnainterface/DLNARendererData;->getThumbIconType()I

    move-result v6

    const/4 v7, 0x6

    if-eq v6, v7, :cond_5

    invoke-virtual {v5}, Lcom/htc/htcdlnainterface/DLNARendererData;->getThumbIconType()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6

    .line 338
    :cond_5
    invoke-virtual {v5}, Lcom/htc/htcdlnainterface/DLNARendererData;->getRendererId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/htc/htcdlnainterface/DLNARendererData;->getRendererName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/htc/htcdlnainterface/DLNARendererData;->getThumbIconType()I

    move-result v8

    invoke-virtual {v4, v6, v7, v8}, Lcom/htc/medialinkhd/HtcDLNARendererStatusListener;->onHtcMediaLinkHdRendererAdded(Ljava/lang/String;Ljava/lang/String;I)V

    .line 341
    :cond_6
    invoke-virtual {v5}, Lcom/htc/htcdlnainterface/DLNARendererData;->getRendererId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/htc/htcdlnainterface/DLNARendererData;->getRendererName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/htc/htcdlnainterface/DLNARendererData;->getThumbIconType()I

    move-result v8

    invoke-virtual {v4, v6, v7, v8}, Lcom/htc/medialinkhd/HtcDLNARendererStatusListener;->onRendererAdded(Ljava/lang/String;Ljava/lang/String;I)V

    .line 344
    invoke-virtual {v4, v5}, Lcom/htc/medialinkhd/HtcDLNARendererStatusListener;->onRendererAdded(Lcom/htc/htcdlnainterface/DLNARendererData;)V

    .line 345
    monitor-exit p0

    goto/16 :goto_1

    .end local v4           #listener:Lcom/htc/medialinkhd/HtcDLNARendererStatusListener;
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method public rendererRemovedNotify(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .parameter "uniqueID"
    .parameter "errorID"
    .parameter "errorReason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 263
    const-string v1, "HtcDLNAMiddleLayerListener "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HtcDLNAMiddleLayerListener][rendererRemovedNotify] uniqueID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", errorID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", errorReason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    monitor-enter p0

    .line 268
    :try_start_0
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererListener:Lcom/htc/medialinkhd/HtcDLNARendererStatusListener;

    .line 269
    .local v0, listener:Lcom/htc/medialinkhd/HtcDLNARendererStatusListener;
    if-nez v0, :cond_0

    .line 271
    const-string v1, "HtcDLNAMiddleLayerListener "

    const-string v2, "no listener"

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    monitor-exit p0

    .line 276
    :goto_0
    return-void

    .line 274
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/medialinkhd/HtcDLNARendererStatusListener;->onRendererRemoved(Ljava/lang/String;ILjava/lang/String;)V

    .line 275
    monitor-exit p0

    goto :goto_0

    .end local v0           #listener:Lcom/htc/medialinkhd/HtcDLNARendererStatusListener;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public rendererThumbnailUpdateNotify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "uniqueID"
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 659
    monitor-enter p0

    .line 660
    :try_start_0
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererListener:Lcom/htc/medialinkhd/HtcDLNARendererStatusListener;

    .line 661
    .local v0, listener:Lcom/htc/medialinkhd/HtcDLNARendererStatusListener;
    if-eqz v0, :cond_0

    .line 662
    invoke-virtual {v0, p1, p2}, Lcom/htc/medialinkhd/HtcDLNARendererStatusListener;->onRendererThumbnailUpdated(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    :cond_0
    monitor-exit p0

    .line 665
    return-void

    .line 664
    .end local v0           #listener:Lcom/htc/medialinkhd/HtcDLNARendererStatusListener;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized reset()V
    .locals 2

    .prologue
    .line 794
    monitor-enter p0

    :try_start_0
    const-string v0, "HtcDLNAMiddleLayerListener "

    const-string v1, "[HtcDLNAMiddleLayerListener][Reset] in"

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    .line 796
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mDiscoverRendererListener:Lcom/htc/medialinkhd/HtcDLNARendererDiscoverListener;

    .line 797
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererListener:Lcom/htc/medialinkhd/HtcDLNARendererStatusListener;

    .line 798
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mServerListener:Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;

    .line 799
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;

    .line 800
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererList:Ljava/util/HashMap;

    .line 801
    const-string v0, "HtcDLNAMiddleLayerListener "

    const-string v1, "[HtcDLNAMiddleLayerListener][Reset] out"

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 802
    monitor-exit p0

    return-void

    .line 794
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public serverAddedNotify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "uniqueID"
    .parameter "serverName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 121
    const-string v1, "HtcDLNAMiddleLayerListener "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HtcDLNAMiddleLayerListener][serverAddedNotify] uniqueID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", serverNmaer = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    monitor-enter p0

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mServerListener:Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;

    .line 125
    .local v0, listener:Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;
    if-nez v0, :cond_0

    .line 127
    const-string v1, "HtcDLNAMiddleLayerListener "

    const-string v2, "no listener"

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    monitor-exit p0

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;->onServerAdded(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    monitor-exit p0

    goto :goto_0

    .end local v0           #listener:Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public serverListUpdateNotify([Lcom/htc/htcdlnainterface/DLNAServerData;)V
    .locals 8
    .parameter "serverList"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 163
    const-string v5, "HtcDLNAMiddleLayerListener "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HtcDLNAMiddleLayerListener][serverListUpdateNotify] serverList = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    monitor-enter p0

    .line 165
    :try_start_0
    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mServerListener:Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;

    .line 166
    .local v3, listener:Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;
    if-nez v3, :cond_0

    .line 168
    const-string v5, "HtcDLNAMiddleLayerListener "

    const-string v6, "no listener"

    invoke-static {v5, v6}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    monitor-exit p0

    .line 185
    :goto_0
    return-void

    .line 172
    :cond_0
    move-object v0, p1

    .local v0, arr$:[Lcom/htc/htcdlnainterface/DLNAServerData;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v4, v0, v1

    .line 174
    .local v4, server:Lcom/htc/htcdlnainterface/DLNAServerData;
    const-string v5, "HtcDLNAMiddleLayerListener "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HtcDLNAMiddleLayerListener][serverListUpdateNotify] server found = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/htc/htcdlnainterface/DLNAServerData;->getServerName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    if-nez v3, :cond_1

    .line 177
    const-string v5, "HtcDLNAMiddleLayerListener "

    const-string v6, "no listener"

    invoke-static {v5, v6}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 180
    :cond_1
    invoke-virtual {v4}, Lcom/htc/htcdlnainterface/DLNAServerData;->getServerId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/htc/htcdlnainterface/DLNAServerData;->getServerName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;->onServerAdded(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 183
    .end local v0           #arr$:[Lcom/htc/htcdlnainterface/DLNAServerData;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #listener:Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;
    .end local v4           #server:Lcom/htc/htcdlnainterface/DLNAServerData;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v0       #arr$:[Lcom/htc/htcdlnainterface/DLNAServerData;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v3       #listener:Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;
    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public serverRemovedNotify(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .parameter "uniqueID"
    .parameter "errorID"
    .parameter "errorReason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 142
    const-string v1, "HtcDLNAMiddleLayerListener "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HtcDLNAMiddleLayerListener][serverRemovedNotify] uniqueID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", errorID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", errorReason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    monitor-enter p0

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mServerListener:Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;

    .line 146
    .local v0, listener:Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;
    if-nez v0, :cond_0

    .line 148
    const-string v1, "HtcDLNAMiddleLayerListener "

    const-string v2, "no listener"

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    monitor-exit p0

    .line 154
    :goto_0
    return-void

    .line 152
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;->onServerRemoved(Ljava/lang/String;ILjava/lang/String;)V

    .line 153
    monitor-exit p0

    goto :goto_0

    .end local v0           #listener:Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public serverThumbnailUpdateNotify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "uniqueID"
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 688
    monitor-enter p0

    .line 689
    :try_start_0
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mServerListener:Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;

    .line 690
    .local v0, listener:Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;
    if-eqz v0, :cond_0

    .line 692
    invoke-virtual {v0, p1, p2}, Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;->onServerThumbnailUpdated(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    :cond_0
    monitor-exit p0

    .line 695
    return-void

    .line 694
    .end local v0           #listener:Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setDiscoverRendererListener(Lcom/htc/medialinkhd/HtcDLNARendererDiscoverListener;)V
    .locals 0
    .parameter "htcDLNARendererDiscoverListener"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mDiscoverRendererListener:Lcom/htc/medialinkhd/HtcDLNARendererDiscoverListener;

    .line 57
    return-void
.end method

.method public setHtcDLNAControllerStatusListener(Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;)V
    .locals 0
    .parameter "htcDLNAControllerStatusListener"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;

    .line 112
    return-void
.end method

.method public setHtcDLNARendererStatusListener(Lcom/htc/medialinkhd/HtcDLNARendererStatusListener;)V
    .locals 0
    .parameter "htcDLNARendererStatusListener"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererListener:Lcom/htc/medialinkhd/HtcDLNARendererStatusListener;

    .line 75
    return-void
.end method

.method public setHtcDLNAServerStatusListener(Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;)V
    .locals 0
    .parameter "htcDLNAServerStatusListener"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mServerListener:Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;

    .line 93
    return-void
.end method

.method public updateControlItemInfo(Lcom/htc/htcdlnainterface/DLNAControlItemData;)V
    .locals 8
    .parameter "itemData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 465
    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v4}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getControllerInfo()Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    move-result-object v2

    .line 467
    .local v2, info:Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;
    invoke-direct {p0, v2, p1}, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->printDLNAControlItemDataLog(Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;Lcom/htc/htcdlnainterface/DLNAControlItemData;)V

    .line 469
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNAControlItemData;->getContentAlbum()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setAlbum(Ljava/lang/String;)V

    .line 470
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNAControlItemData;->getContentArtist()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setArtist(Ljava/lang/String;)V

    .line 471
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNAControlItemData;->getContentTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setTitle(Ljava/lang/String;)V

    .line 472
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNAControlItemData;->getContentDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setDate(Ljava/lang/String;)V

    .line 473
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNAControlItemData;->getDuration()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNAControlItemData;->getDuration()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    invoke-virtual {v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getCurContentID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNAControlItemData;->getCurContentID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 474
    :cond_0
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNAControlItemData;->getDuration()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v2, v4}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setDuration(I)V

    .line 476
    :cond_1
    invoke-virtual {v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getRendererName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v4}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getRendererId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 477
    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererList:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v5}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getRendererId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setRendererName(Ljava/lang/String;)V

    .line 479
    :cond_2
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNAControlItemData;->getCurrentIndex()J

    move-result-wide v0

    .line 480
    .local v0, index:J
    invoke-virtual {v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getIndex()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-eqz v4, :cond_3

    .line 482
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setPosition(I)V

    .line 483
    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->setClientSeekTo(I)V

    .line 485
    :cond_3
    invoke-virtual {v2, v0, v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setIndex(J)V

    .line 486
    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v4}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getPlaylistSize()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setTotal(J)V

    .line 488
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNAControlItemData;->getDownloadStoreAlbumArtPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setThumbnailPath(Ljava/lang/String;)V

    .line 489
    invoke-virtual {v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getThumbnailPath()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getThumbnailPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_5

    .line 490
    :cond_4
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNAControlItemData;->getThumbnailPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setThumbnailPath(Ljava/lang/String;)V

    .line 493
    :cond_5
    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v4}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getState()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setPlayState(I)V

    .line 494
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNAControlItemData;->getCurContentID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setCurContentID(Ljava/lang/String;)V

    .line 496
    monitor-enter p0

    .line 497
    :try_start_0
    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;

    .line 498
    .local v3, listener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;
    if-eqz v3, :cond_6

    .line 500
    invoke-virtual {v3, v2}, Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;->onControllerInfoupdated(Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;)V

    .line 506
    :goto_0
    monitor-exit p0

    .line 507
    return-void

    .line 504
    :cond_6
    const-string v4, "HtcDLNAMiddleLayerListener "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HtcDLNAMiddleLayerListener][updateControlItemInfo] itemData = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 506
    .end local v3           #listener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public updateControlItemThumbnail(Ljava/lang/String;JLjava/lang/String;)V
    .locals 5
    .parameter "rendererID"
    .parameter "currentIndex"
    .parameter "thumbnailPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 533
    const-string v2, "HtcDLNAMiddleLayerListener "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcDLNAMiddleLayerListener][updateControlItemThumbnail] currentIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", thumbnailPath = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getControllerInfo()Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    move-result-object v0

    .line 537
    .local v0, info:Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;
    invoke-virtual {v0, p4}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setThumbnailPath(Ljava/lang/String;)V

    .line 538
    monitor-enter p0

    .line 539
    :try_start_0
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;

    .line 540
    .local v1, listener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;
    if-eqz v1, :cond_0

    .line 542
    invoke-virtual {v1, v0}, Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;->onControllerInfoupdated(Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;)V

    .line 544
    :cond_0
    monitor-exit p0

    .line 545
    return-void

    .line 544
    .end local v1           #listener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public updateControllerStatus(Lcom/htc/htcdlnainterface/DLNAControllerStatus;)V
    .locals 10
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    const/16 v7, 0x3e8

    const/4 v6, 0x1

    .line 382
    const-string v2, "HtcDLNAMiddleLayerListener "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[updateControllerStatus] state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNAControllerStatus;->getPlayState()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getControllerInfo()Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    move-result-object v0

    .line 388
    .local v0, info:Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;
    invoke-direct {p0, v0, p1}, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->printDLNAControllerStatusLog(Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;Lcom/htc/htcdlnainterface/DLNAControllerStatus;)V

    .line 394
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNAControllerStatus;->getDuration()J

    move-result-wide v2

    cmp-long v2, v2, v8

    if-lez v2, :cond_0

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNAControllerStatus;->getDuration()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0, v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setDuration(I)V

    .line 395
    :cond_0
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNAControllerStatus;->getCurrentIndex()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setIndex(J)V

    .line 396
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNAControllerStatus;->getPosition()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0, v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setPosition(I)V

    .line 397
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNAControllerStatus;->getMute()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setMute(Z)V

    .line 398
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNAControllerStatus;->getShuffle()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setShuffle(Z)V

    .line 399
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNAControllerStatus;->getRepeatState()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setRepeat(I)V

    .line 400
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNAControllerStatus;->getVolumeValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setVolume(I)V

    .line 401
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNAControllerStatus;->getTotalCount()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setTotal(J)V

    .line 403
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNAControllerStatus;->getPosition()J

    move-result-wide v2

    cmp-long v2, v2, v8

    if-gtz v2, :cond_1

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->setClientSeekTo(I)V

    .line 405
    :cond_1
    invoke-virtual {v0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getRendererName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getRendererId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererList:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getRendererId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setRendererName(Ljava/lang/String;)V

    .line 407
    :cond_2
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNAControllerStatus;->getCurContentID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setCurContentID(Ljava/lang/String;)V

    .line 412
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNAControllerStatus;->getPlayState()I

    move-result v2

    if-eq v2, v7, :cond_4

    .line 414
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNAControllerStatus;->getPlayState()I

    move-result v3

    invoke-virtual {v2, v3, v6, v6}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->setState(IZZ)V

    .line 416
    monitor-enter p0

    .line 417
    :try_start_0
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;

    .line 418
    .local v1, listener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;
    if-eqz v1, :cond_3

    .line 419
    invoke-virtual {v1, v0}, Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;->onControllerInfoupdated(Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;)V

    .line 423
    :goto_0
    monitor-exit p0

    .line 438
    :goto_1
    return-void

    .line 421
    :cond_3
    const-string v2, "HtcDLNAMiddleLayerListener "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcDLNAMiddleLayerListener][updateControllerStatus] DLNAControllerStatus = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 423
    .end local v1           #listener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 427
    :cond_4
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v2, v7, v6, v6}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->setState(IZZ)V

    .line 429
    monitor-enter p0

    .line 430
    :try_start_1
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;

    .line 431
    .restart local v1       #listener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;
    if-eqz v1, :cond_5

    .line 432
    const-string v2, "HtcDLNAMiddleLayerListener "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcDLNAMiddleLayerListener][updateControllerStatus][onPlaybackCompleted] State: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    iget-object v5, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v5}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getState()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;->onPlaybackCompleted(I)V

    .line 436
    :cond_5
    monitor-exit p0

    goto :goto_1

    .end local v1           #listener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;
    :catchall_1
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2
.end method

.method public updateDownloadStoreAlbumArtNotify(Ljava/lang/String;JLjava/lang/String;)V
    .locals 4
    .parameter "rendererID"
    .parameter "currentIndex"
    .parameter "albumArtPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 623
    const-string v1, "HtcDLNAMiddleLayerListener "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HtcDLNAMiddleLayerListener][updateDownloadStoreAlbumArtNotify] rendererID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", currentIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", albumArtPath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getControllerInfo()Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setThumbnailPath(Ljava/lang/String;)V

    .line 627
    monitor-enter p0

    .line 628
    :try_start_0
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;

    .line 629
    .local v0, listener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;
    if-eqz v0, :cond_0

    .line 631
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getControllerInfo()Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;->onControllerInfoupdated(Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;)V

    .line 633
    :cond_0
    monitor-exit p0

    .line 634
    return-void

    .line 633
    .end local v0           #listener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
