.class public Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;
.super Ljava/lang/Object;
.source "HtcDLNAControllerStatusListener.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlbumArtDownloaded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "serverID"
    .parameter "contentID"
    .parameter "filePath"

    .prologue
    .line 49
    return-void
.end method

.method public onControllerInfoupdated(Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;)V
    .locals 0
    .parameter "ctlInfo"

    .prologue
    .line 23
    return-void
.end method

.method public onError(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter "rendererID"
    .parameter "errorID"
    .parameter "errorReason"

    .prologue
    .line 33
    return-void
.end method

.method public onItemDetailsUpdated(JLcom/htc/dlnainterface/DLNAContentItemDetails;)V
    .locals 0
    .parameter "index"
    .parameter "details"

    .prologue
    .line 28
    return-void
.end method

.method public onPlayStateChanged(I)V
    .locals 0
    .parameter "playState"

    .prologue
    .line 18
    return-void
.end method

.method public onResponse(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter "rendererID"
    .parameter "responseID"
    .parameter "responseReason"

    .prologue
    .line 38
    return-void
.end method

.method public onUpdatePosition(J)V
    .locals 0
    .parameter "position"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 44
    return-void
.end method
