.class Lcom/htc/videowidget/videoview/HtcVideoFgm$10;
.super Ljava/lang/Object;
.source "HtcVideoFgm.java"

# interfaces
.implements Lcom/htc/videowidget/videoview/widget/LockScreenView$OnLockModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/videowidget/videoview/HtcVideoFgm;
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
    .line 4011
    iput-object p1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$10;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public lockModeChange(Z)V
    .locals 4
    .parameter "isLock"

    .prologue
    .line 4015
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$10;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    #calls: Lcom/htc/videowidget/videoview/HtcVideoFgm;->notifyLockMode(Z)V
    invoke-static {v0, p1}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$4300(Lcom/htc/videowidget/videoview/HtcVideoFgm;Z)V

    .line 4016
    const/16 v0, 0x24

    const/16 v1, 0x64

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$10;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;
    invoke-static {v3}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$000(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessageWithIntBoolean(IIZLandroid/os/Handler;)V

    .line 4017
    return-void
.end method
