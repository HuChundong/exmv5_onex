.class Lcom/htc/videowidget/videoview/HtcVideoFgm$4;
.super Landroid/content/BroadcastReceiver;
.source "HtcVideoFgm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/videowidget/videoview/HtcVideoFgm;->initSubtitleReceiver()V
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
    .line 1044
    iput-object p1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$4;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v7, 0x24

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1048
    const-string v2, "com.htc.intent.action.subtitle_name_list"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1050
    const-string v2, "HtcVideoFgm"

    const-string v3, "[initSubtitleReceiver] onReceive"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    iget-object v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$4;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSubtitleOperator:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;
    invoke-static {v2}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$500(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$4;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSubtitleView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$600(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1053
    iget-object v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$4;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    invoke-virtual {v2}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getPlayerState()Lcom/htc/videowidget/videoview/utilities/PlayerState;

    move-result-object v1

    .line 1054
    .local v1, state:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    const/4 v0, 0x0

    .line 1055
    .local v0, hasSubtitleFD:Z
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getSubtitleFd()Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1057
    const/4 v0, 0x1

    .line 1060
    :cond_0
    if-nez v0, :cond_1

    const-string v2, "subtitle_mode"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$4;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mbIsDMP:Z
    invoke-static {v2}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$700(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1062
    :cond_1
    iget-object v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$4;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    #calls: Lcom/htc/videowidget/videoview/HtcVideoFgm;->invokeControllerFunction(IZ)V
    invoke-static {v2, v6, v5}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$800(Lcom/htc/videowidget/videoview/HtcVideoFgm;IZ)V

    .line 1063
    iget-object v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$4;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSubtitleView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$600(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1064
    iget-object v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$4;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;
    invoke-static {v2}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$000(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    move-result-object v2

    invoke-static {v7, v5, v2}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessageWithBoolean(IZLandroid/os/Handler;)V

    .line 1065
    iget-object v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$4;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mbDefaultSubtitleShow:Z
    invoke-static {v2}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$900(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1067
    const-string v2, "HtcVideoFgm"

    const-string v3, "[initSubtitleReceiver] Receive force disable subtitle"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    iget-object v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$4;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    #calls: Lcom/htc/videowidget/videoview/HtcVideoFgm;->forceDisableSubtitle()V
    invoke-static {v2}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$1000(Lcom/htc/videowidget/videoview/HtcVideoFgm;)V

    .line 1079
    .end local v0           #hasSubtitleFD:Z
    .end local v1           #state:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    :cond_2
    :goto_0
    return-void

    .line 1073
    .restart local v0       #hasSubtitleFD:Z
    .restart local v1       #state:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    :cond_3
    iget-object v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$4;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    #calls: Lcom/htc/videowidget/videoview/HtcVideoFgm;->invokeControllerFunction(IZ)V
    invoke-static {v2, v6, v4}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$800(Lcom/htc/videowidget/videoview/HtcVideoFgm;IZ)V

    .line 1074
    iget-object v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$4;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSubtitleView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$600(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1075
    const/16 v2, 0x64

    iget-object v3, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$4;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;
    invoke-static {v3}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$000(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    move-result-object v3

    invoke-static {v7, v2, v4, v3}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessageWithIntBoolean(IIZLandroid/os/Handler;)V

    goto :goto_0
.end method
