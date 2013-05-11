.class Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$2;
.super Landroid/database/ContentObserver;
.source "HtcVolumePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;


# direct methods
.method constructor <init>(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 430
    iput-object p1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$2;->this$1:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 433
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 434
    iget-object v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$2;->this$1:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    #getter for: Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->access$900(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$2;->this$1:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    #getter for: Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->access$800(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 435
    iget-object v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$2;->this$1:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    #getter for: Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->access$800(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$2;->this$1:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    iget-object v2, v2, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->this$0:Lcom/htc/preference/HtcVolumePreference;

    #getter for: Lcom/htc/preference/HtcVolumePreference;->mStreamType:I
    invoke-static {v2}, Lcom/htc/preference/HtcVolumePreference;->access$1000(Lcom/htc/preference/HtcVolumePreference;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 436
    .local v0, volume:I
    iget-object v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$2;->this$1:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    #getter for: Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->access$900(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 438
    .end local v0           #volume:I
    :cond_0
    return-void
.end method
