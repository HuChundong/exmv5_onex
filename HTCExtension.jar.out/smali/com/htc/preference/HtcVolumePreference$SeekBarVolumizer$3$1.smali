.class Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$3$1;
.super Ljava/lang/Object;
.source "HtcVolumePreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$3;->queueIdle()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$3;


# direct methods
.method constructor <init>(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$3;)V
    .locals 0
    .parameter

    .prologue
    .line 519
    iput-object p1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$3$1;->this$2:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$3;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 521
    const-string v0, "VolumePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ++ getRingtone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$3$1;->this$2:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$3;

    iget-object v2, v2, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$3;->this$1:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    #getter for: Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mdefaultUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->access$1100(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    monitor-enter p0

    .line 523
    :try_start_0
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$3$1;->this$2:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$3;

    iget-object v0, v0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$3;->this$1:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    #getter for: Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mRingtoneCleanup:Z
    invoke-static {v0}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->access$1200(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$3$1;->this$2:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$3;

    iget-object v0, v0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$3;->this$1:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    iget-object v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$3$1;->this$2:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$3;

    iget-object v1, v1, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$3;->this$1:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    #getter for: Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->access$000(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$3$1;->this$2:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$3;

    iget-object v2, v2, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$3;->this$1:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    #getter for: Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mdefaultUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->access$1100(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$3$1;->this$2:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$3;

    iget-object v3, v3, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$3;->this$1:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    #getter for: Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->sStreamType:I
    invoke-static {v3}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->access$700(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;)I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;I)Landroid/media/Ringtone;

    move-result-object v1

    #setter for: Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;
    invoke-static {v0, v1}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->access$1302(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;Landroid/media/Ringtone;)Landroid/media/Ringtone;

    .line 527
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 529
    const-string v0, "VolumePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " -- getRingtone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$3$1;->this$2:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$3;

    iget-object v2, v2, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$3;->this$1:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    #getter for: Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mdefaultUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->access$1100(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    return-void

    .line 526
    :cond_0
    :try_start_1
    const-string v0, "VolumePreference"

    const-string v1, "getRingtone skip"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 527
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
