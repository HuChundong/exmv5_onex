.class Lcom/htc/videowidget/videoview/HtcVideoFgm$9;
.super Ljava/lang/Object;
.source "HtcVideoFgm.java"

# interfaces
.implements Lcom/htc/videowidget/videoview/PlayerHandler$IHeadsetStateChangeListener;


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
    .line 3966
    iput-object p1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$9;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeatsChange(Ljava/lang/String;Z)V
    .locals 3
    .parameter "caller"
    .parameter "beatState"

    .prologue
    .line 4004
    const-string v0, "HtcVideoFgm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IHeadsetStateChangeListener.onBeatsChange], caller = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", beatState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4005
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$9;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSoundEffectHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$5100(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4006
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$9;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSoundEffectHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$5100(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$9;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mBeatsChangeRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$5800(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4007
    :cond_0
    return-void
.end method

.method public onHDMIChange(Z)V
    .locals 4
    .parameter "isConnect"

    .prologue
    .line 3974
    const-string v1, "HtcVideoFgm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[IHeadsetStateChangeListener.onHDMIChange], isConnect = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3976
    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$9;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mEventListener:Lcom/htc/videowidget/videoview/IHtcPlayerAPI$OnEventListener;
    invoke-static {v1}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$4600(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/IHtcPlayerAPI$OnEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3978
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3979
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "hdmi_connect"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3980
    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$9;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mEventListener:Lcom/htc/videowidget/videoview/IHtcPlayerAPI$OnEventListener;
    invoke-static {v1}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$4600(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/IHtcPlayerAPI$OnEventListener;

    move-result-object v1

    const/16 v2, 0x17

    invoke-interface {v1, v2, v0}, Lcom/htc/videowidget/videoview/IHtcPlayerAPI$OnEventListener;->onEvent(ILandroid/os/Bundle;)V

    .line 3982
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_0
    if-eqz p1, :cond_1

    .line 3989
    :cond_1
    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$9;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSoundEffectHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$5100(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3990
    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$9;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSoundEffectHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$5100(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$9;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mHdmiChaneRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$5600(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3991
    :cond_2
    return-void
.end method

.method public onHeadsetChange()V
    .locals 2

    .prologue
    .line 3996
    const-string v0, "HtcVideoFgm"

    const-string v1, "[IHeadsetStateChangeListener.onHeadsetChange]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3997
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$9;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSoundEffectHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$5100(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3998
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$9;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSoundEffectHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$5100(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$9;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mHeadsetChangeRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$5700(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3999
    :cond_0
    return-void
.end method
