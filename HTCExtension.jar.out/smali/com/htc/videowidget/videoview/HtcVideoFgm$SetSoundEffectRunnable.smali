.class Lcom/htc/videowidget/videoview/HtcVideoFgm$SetSoundEffectRunnable;
.super Ljava/lang/Object;
.source "HtcVideoFgm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/videowidget/videoview/HtcVideoFgm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetSoundEffectRunnable"
.end annotation


# instance fields
.field private mIsSaveEffect:Z

.field private mIsShowToast:Z

.field private mNewEffect:I

.field final synthetic this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;


# direct methods
.method constructor <init>(Lcom/htc/videowidget/videoview/HtcVideoFgm;IZZ)V
    .locals 2
    .parameter
    .parameter "newEffect"
    .parameter "isSaveEffect"
    .parameter "isShowToast"

    .prologue
    const/4 v1, 0x0

    .line 4116
    iput-object p1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$SetSoundEffectRunnable;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    .line 4117
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4112
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$SetSoundEffectRunnable;->mNewEffect:I

    .line 4113
    iput-boolean v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$SetSoundEffectRunnable;->mIsSaveEffect:Z

    .line 4114
    iput-boolean v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$SetSoundEffectRunnable;->mIsShowToast:Z

    .line 4118
    iput p2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$SetSoundEffectRunnable;->mNewEffect:I

    .line 4119
    iput-boolean p3, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$SetSoundEffectRunnable;->mIsSaveEffect:Z

    .line 4120
    iput-boolean p4, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$SetSoundEffectRunnable;->mIsShowToast:Z

    .line 4121
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 4125
    iget-object v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$SetSoundEffectRunnable;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHandler:Lcom/htc/videowidget/videoview/PlayerHandler;
    invoke-static {v2}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$1400(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/PlayerHandler;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 4127
    iget-object v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$SetSoundEffectRunnable;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHandler:Lcom/htc/videowidget/videoview/PlayerHandler;
    invoke-static {v2}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$1400(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/PlayerHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/videowidget/videoview/PlayerHandler;->getSoundEffect()Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;

    move-result-object v1

    .line 4128
    .local v1, soundEffect:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;
    if-eqz v1, :cond_2

    .line 4130
    iget-boolean v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$SetSoundEffectRunnable;->mIsSaveEffect:Z

    if-eqz v2, :cond_0

    .line 4131
    iget v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$SetSoundEffectRunnable;->mNewEffect:I

    invoke-virtual {v1, v2}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->setLastUserSelectEffect(I)V

    .line 4132
    :cond_0
    iget v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$SetSoundEffectRunnable;->mNewEffect:I

    invoke-virtual {v1, v2}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->setSoundEffect(I)V

    .line 4133
    iget-boolean v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$SetSoundEffectRunnable;->mIsShowToast:Z

    if-eqz v2, :cond_1

    .line 4135
    invoke-virtual {v1}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->getEffectToastString()Ljava/lang/String;

    move-result-object v0

    .line 4136
    .local v0, s:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 4137
    const/16 v2, 0x27

    iget-object v3, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$SetSoundEffectRunnable;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;
    invoke-static {v3}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$000(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessageWithString(ILjava/lang/String;Landroid/os/Handler;)V

    .line 4139
    .end local v0           #s:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$SetSoundEffectRunnable;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    #calls: Lcom/htc/videowidget/videoview/HtcVideoFgm;->updateBeatsIndicator()V
    invoke-static {v2}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$6100(Lcom/htc/videowidget/videoview/HtcVideoFgm;)V

    .line 4142
    .end local v1           #soundEffect:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;
    :cond_2
    return-void
.end method
