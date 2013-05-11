.class public Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;
.super Ljava/lang/Object;
.source "HtcDLNAControllerStatusListener.java"


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
    .parameter "serverId"
    .parameter "contentId"
    .parameter "filePath"

    .prologue
    .line 123
    return-void
.end method

.method public onControllerInfoupdated(Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;)V
    .locals 0
    .parameter "ctlInfo"

    .prologue
    .line 33
    return-void
.end method

.method public onError(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter "rendererId"
    .parameter "errorId"
    .parameter "errorReason"

    .prologue
    .line 72
    return-void
.end method

.method public onItemDetailsUpdated(JLcom/htc/htcdlnainterface/DLNAContentItemDetails;)V
    .locals 0
    .parameter "index"
    .parameter "details"

    .prologue
    .line 46
    return-void
.end method

.method public onItemDetailsUpdated(Ljava/lang/String;JLcom/htc/htcdlnainterface/DLNAContentItemDetails;)V
    .locals 0
    .parameter "serverID"
    .parameter "index"
    .parameter "details"

    .prologue
    .line 60
    return-void
.end method

.method public onPlayStateChanged(I)V
    .locals 0
    .parameter "playState"

    .prologue
    .line 23
    return-void
.end method

.method public onPlaybackCompleted(I)V
    .locals 0
    .parameter "playState"

    .prologue
    .line 82
    return-void
.end method

.method public onResponse(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter "rendererId"
    .parameter "responseId"
    .parameter "responseReason"

    .prologue
    .line 96
    return-void
.end method

.method public onUpdatePosition(J)V
    .locals 0
    .parameter "position"

    .prologue
    .line 110
    return-void
.end method
