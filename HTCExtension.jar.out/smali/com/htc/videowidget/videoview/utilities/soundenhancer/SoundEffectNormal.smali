.class Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectNormal;
.super Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;
.source "SoundEffectNormal.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter "context"
    .parameter "mediaPlayer"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;-><init>(Landroid/content/Context;Landroid/media/MediaPlayer;)V

    .line 18
    return-void
.end method


# virtual methods
.method protected mappingSoundEffect(ILcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;)I
    .locals 1
    .parameter "currentEffect"
    .parameter "state"

    .prologue
    .line 23
    const/4 v0, 0x0

    return v0
.end method
