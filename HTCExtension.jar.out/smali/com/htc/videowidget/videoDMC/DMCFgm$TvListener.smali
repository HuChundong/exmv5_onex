.class Lcom/htc/videowidget/videoDMC/DMCFgm$TvListener;
.super Lcom/htc/medialinkhd/HtcTvDisplayHelper$HtcTvDisplayListener;
.source "DMCFgm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/videowidget/videoDMC/DMCFgm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TvListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;


# direct methods
.method private constructor <init>(Lcom/htc/videowidget/videoDMC/DMCFgm;)V
    .locals 0
    .parameter

    .prologue
    .line 3017
    iput-object p1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$TvListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    invoke-direct {p0}, Lcom/htc/medialinkhd/HtcTvDisplayHelper$HtcTvDisplayListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/videowidget/videoDMC/DMCFgm;Lcom/htc/videowidget/videoDMC/DMCFgm$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3017
    invoke-direct {p0, p1}, Lcom/htc/videowidget/videoDMC/DMCFgm$TvListener;-><init>(Lcom/htc/videowidget/videoDMC/DMCFgm;)V

    return-void
.end method


# virtual methods
.method public onNoReadyDongle()V
    .locals 2

    .prologue
    .line 3095
    const-string v0, "DMCFgm"

    const-string v1, "[HtcTvDisplayListener]:onNoReadyDongle(),"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3097
    return-void
.end method

.method public onNoTvToPlay()V
    .locals 2

    .prologue
    .line 3073
    const-string v0, "DMCFgm"

    const-string v1, "[HtcTvDisplayListener]:onNoTvToPlay(),"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3077
    return-void
.end method

.method public onReadyDongleFound()V
    .locals 2

    .prologue
    .line 3084
    const-string v0, "DMCFgm"

    const-string v1, "[HtcTvDisplayListener]:onReadyDongleFound(),"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3088
    return-void
.end method

.method public onTvOff()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3049
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$TvListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    iput-boolean v2, v0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbIsInMirrorMode:Z

    .line 3051
    const-string v0, "DMCFgm"

    const-string v1, "[HtcTvDisplayListener]:onTvOff(), Do Nothing! mirror HTC MediaLink HD removed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3053
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$TvListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #setter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mbRendererIsMirrorMediaLinkHD:Z
    invoke-static {v0, v2}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$2802(Lcom/htc/videowidget/videoDMC/DMCFgm;Z)Z

    .line 3055
    return-void
.end method

.method public onTvOn()V
    .locals 2

    .prologue
    .line 3024
    const-string v0, "DMCFgm"

    const-string v1, "[HtcTvDisplayListener]:onTvOn(), Do Nothing!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3026
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$TvListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbIsInMirrorMode:Z

    .line 3042
    return-void
.end method

.method public onTvReadyToPlay()V
    .locals 2

    .prologue
    .line 3062
    const-string v0, "DMCFgm"

    const-string v1, "[HtcTvDisplayListener]:onTvReadyToPlay(),"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3066
    return-void
.end method
