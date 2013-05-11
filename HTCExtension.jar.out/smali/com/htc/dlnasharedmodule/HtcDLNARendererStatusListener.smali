.class public Lcom/htc/dlnasharedmodule/HtcDLNARendererStatusListener;
.super Ljava/lang/Object;
.source "HtcDLNARendererStatusListener.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "uniqueID"
    .parameter "rendererName"

    .prologue
    .line 14
    return-void
.end method

.method public onDisconnected(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter "uniqueID"
    .parameter "errorID"
    .parameter "errorReason"

    .prologue
    .line 25
    return-void
.end method

.method public onMirrorRendererConnected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "uniqueID"
    .parameter "rendererName"

    .prologue
    .line 19
    return-void
.end method
