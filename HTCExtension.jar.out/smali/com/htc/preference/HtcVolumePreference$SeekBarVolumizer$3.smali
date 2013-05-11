.class Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$3;
.super Ljava/lang/Object;
.source "HtcVolumePreference.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


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
.method constructor <init>(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;)V
    .locals 0
    .parameter

    .prologue
    .line 514
    iput-object p1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$3;->this$1:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 3

    .prologue
    .line 519
    new-instance v0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$3$1;

    invoke-direct {v0, p0}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$3$1;-><init>(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$3;)V

    .line 532
    .local v0, getRingtoneRunnable:Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$3;->this$1:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    #getter for: Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mRingtoneCleanup:Z
    invoke-static {v1}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->access$1200(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 533
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 536
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 535
    :cond_0
    const-string v1, "VolumePreference"

    const-string v2, "getRingtone skip"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
