.class public Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverListener;
.super Ljava/lang/Object;
.source "HtcDLNARendererDiscoverListener.java"


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
.method public onDiscovered(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "uniqueID"
    .parameter "rendererName"

    .prologue
    .line 18
    return-void
.end method

.method public onTimeout()V
    .locals 0

    .prologue
    .line 27
    return-void
.end method
