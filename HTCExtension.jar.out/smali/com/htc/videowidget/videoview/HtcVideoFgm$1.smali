.class Lcom/htc/videowidget/videoview/HtcVideoFgm$1;
.super Ljava/lang/Object;
.source "HtcVideoFgm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/videowidget/videoview/HtcVideoFgm;->restoreLastPlay(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;


# direct methods
.method constructor <init>(Lcom/htc/videowidget/videoview/HtcVideoFgm;)V
    .locals 0
    .parameter

    .prologue
    .line 854
    iput-object p1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$1;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 858
    iget-object v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$1;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    invoke-virtual {v2}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getPlayerState()Lcom/htc/videowidget/videoview/utilities/PlayerState;

    move-result-object v1

    .line 859
    .local v1, playerstate:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    if-eqz v1, :cond_0

    .line 861
    invoke-virtual {v1}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getMetaData()Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;

    move-result-object v0

    .line 862
    .local v0, metaData:Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;
    if-eqz v0, :cond_0

    .line 863
    invoke-interface {v0}, Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;->prepare()V

    .line 866
    .end local v0           #metaData:Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;
    :cond_0
    return-void
.end method
