.class public Lcom/htc/videowidget/videoview/utilities/AudioHelper;
.super Ljava/lang/Object;
.source "AudioHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioHelper"


# instance fields
.field private final mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioMgr:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lcom/htc/videowidget/videoview/utilities/AudioHelper$1;

    invoke-direct {v0, p0}, Lcom/htc/videowidget/videoview/utilities/AudioHelper$1;-><init>(Lcom/htc/videowidget/videoview/utilities/AudioHelper;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/AudioHelper;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 17
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/AudioHelper;->mContext:Landroid/content/Context;

    .line 18
    return-void
.end method

.method public static popupVolumePanel(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 62
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 64
    .local v0, audioManager:Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    .line 65
    const/16 v1, 0x11

    .line 66
    .local v1, flags:I
    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3, v1}, Landroid/media/AudioManager;->adjustSuggestedStreamVolume(III)V

    .line 68
    .end local v1           #flags:I
    :cond_0
    const/4 v0, 0x0

    .line 69
    return-void
.end method


# virtual methods
.method public abandonAudioFocus()V
    .locals 3

    .prologue
    .line 41
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/AudioHelper;->mAudioMgr:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 43
    const-string v0, "AudioHelper"

    const-string v1, "Abandon audio focus"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/AudioHelper;->mAudioMgr:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/AudioHelper;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 46
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/AudioHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "headsetowner"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 48
    :cond_0
    return-void
.end method

.method public requestAudioFocus()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 22
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/AudioHelper;->mAudioMgr:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    .line 23
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/AudioHelper;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/htc/videowidget/videoview/utilities/AudioHelper;->mAudioMgr:Landroid/media/AudioManager;

    .line 25
    :cond_0
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/AudioHelper;->mAudioMgr:Landroid/media/AudioManager;

    if-eqz v1, :cond_1

    .line 27
    const-string v1, "AudioHelper"

    const-string v2, "Request audio focus"

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/AudioHelper;->mAudioMgr:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/AudioHelper;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 30
    .local v0, ret:I
    if-eq v0, v4, :cond_2

    .line 32
    const-string v1, "AudioHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request audio focus fail. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .end local v0           #ret:I
    :cond_1
    :goto_0
    return-void

    .line 34
    .restart local v0       #ret:I
    :cond_2
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/AudioHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "headsetowner"

    const-string v3, "HTCVideoPlayer"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method
