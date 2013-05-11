.class public Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEnhancerFactory;
.super Ljava/lang/Object;
.source "SoundEnhancerFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SoundEnhancerFactory"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSoundEffect(Landroid/content/Context;Landroid/media/MediaPlayer;)Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;
    .locals 2
    .parameter "ctx"
    .parameter "mediaPlayer"

    .prologue
    .line 21
    invoke-static {}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEnhancerFactory;->isBeatsSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    const-string v0, "SoundEnhancerFactory"

    const-string v1, "SoundEffectBeats created"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    new-instance v0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBeats;

    invoke-direct {v0, p0, p1}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBeats;-><init>(Landroid/content/Context;Landroid/media/MediaPlayer;)V

    .line 29
    :goto_0
    return-object v0

    .line 28
    :cond_0
    const-string v0, "SoundEnhancerFactory"

    const-string v1, "SoundEffectNormal created"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    new-instance v0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectNormal;

    invoke-direct {v0, p0, p1}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectNormal;-><init>(Landroid/content/Context;Landroid/media/MediaPlayer;)V

    goto :goto_0
.end method

.method public static createSoundEffectDialog(Landroid/content/Context;)Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;
    .locals 2
    .parameter "ctx"

    .prologue
    .line 35
    invoke-static {}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEnhancerFactory;->isBeatsSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    const-string v0, "SoundEnhancerFactory"

    const-string v1, "SoundEffectDialogBeats created"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    new-instance v0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBeats;

    invoke-direct {v0, p0}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBeats;-><init>(Landroid/content/Context;)V

    .line 43
    :goto_0
    return-object v0

    .line 42
    :cond_0
    const-string v0, "SoundEnhancerFactory"

    const-string v1, "SoundEffectDialogNormal created"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    new-instance v0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogNormal;

    invoke-direct {v0, p0}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogNormal;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static isBeatsSupport()Z
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x1

    return v0
.end method
