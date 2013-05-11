.class public Lcom/htc/medialinkhd/HtcDLNARendererStatusListener;
.super Ljava/lang/Object;
.source "HtcDLNARendererStatusListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "uniqueId"
    .parameter "rendererName"

    .prologue
    .line 21
    return-void
.end method

.method public onHtcMediaLinkHdRendererAdded(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "uniqueId"
    .parameter "rendererName"
    .parameter "rendererType"

    .prologue
    .line 34
    return-void
.end method

.method public onMirrorRendererConnected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "uniqueId"
    .parameter "rendererName"

    .prologue
    .line 85
    return-void
.end method

.method public onRendererAdded(Lcom/htc/htcdlnainterface/DLNARendererData;)V
    .locals 0
    .parameter "rendererData"

    .prologue
    .line 60
    return-void
.end method

.method public onRendererAdded(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "uniqueId"
    .parameter "rendererName"
    .parameter "rendererType"

    .prologue
    .line 48
    return-void
.end method

.method public onRendererRemoved(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter "uniqueId"
    .parameter "errorId"
    .parameter "errorReason"

    .prologue
    .line 74
    return-void
.end method

.method public onRendererThumbnailUpdated(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "uniqueId"
    .parameter "filePath"

    .prologue
    .line 95
    return-void
.end method
