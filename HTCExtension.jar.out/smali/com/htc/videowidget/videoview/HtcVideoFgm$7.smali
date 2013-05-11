.class Lcom/htc/videowidget/videoview/HtcVideoFgm$7;
.super Ljava/lang/Object;
.source "HtcVideoFgm.java"

# interfaces
.implements Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper$OnSoundDialogClickListener;


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
    .line 3180
    iput-object p1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$7;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clickListItem(I)V
    .locals 4
    .parameter "newEffect"

    .prologue
    const/4 v3, 0x0

    .line 3184
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$7;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHandler:Lcom/htc/videowidget/videoview/PlayerHandler;
    invoke-static {v0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$1400(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/PlayerHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$7;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHandler:Lcom/htc/videowidget/videoview/PlayerHandler;
    invoke-static {v0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$1400(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/PlayerHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/PlayerHandler;->getSoundEffect()Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3186
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$7;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHandler:Lcom/htc/videowidget/videoview/PlayerHandler;
    invoke-static {v0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$1400(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/PlayerHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/PlayerHandler;->getSoundEffect()Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->getCurrentEffect()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 3188
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$7;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSoundEffectHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$5100(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3189
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$7;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSoundEffectHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$5100(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/htc/videowidget/videoview/HtcVideoFgm$SetSoundEffectRunnable;

    iget-object v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$7;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    invoke-direct {v1, v2, p1, v3, v3}, Lcom/htc/videowidget/videoview/HtcVideoFgm$SetSoundEffectRunnable;-><init>(Lcom/htc/videowidget/videoview/HtcVideoFgm;IZZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3192
    :cond_0
    return-void
.end method

.method public clickOKButton()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 3197
    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$7;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHandler:Lcom/htc/videowidget/videoview/PlayerHandler;
    invoke-static {v1}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$1400(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/PlayerHandler;

    move-result-object v1

    if-nez v1, :cond_1

    .line 3205
    :cond_0
    :goto_0
    return-void

    .line 3199
    :cond_1
    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$7;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHandler:Lcom/htc/videowidget/videoview/PlayerHandler;
    invoke-static {v1}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$1400(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/PlayerHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/videowidget/videoview/PlayerHandler;->getSoundEffect()Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;

    move-result-object v0

    .line 3200
    .local v0, soundEffect:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;
    if-eqz v0, :cond_0

    .line 3202
    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$7;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSoundEffectHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$5100(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3203
    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$7;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSoundEffectHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$5100(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/htc/videowidget/videoview/HtcVideoFgm$SetSoundEffectRunnable;

    iget-object v3, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$7;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->getCurrentEffect()I

    move-result v4

    invoke-direct {v2, v3, v4, v5, v5}, Lcom/htc/videowidget/videoview/HtcVideoFgm$SetSoundEffectRunnable;-><init>(Lcom/htc/videowidget/videoview/HtcVideoFgm;IZZ)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
