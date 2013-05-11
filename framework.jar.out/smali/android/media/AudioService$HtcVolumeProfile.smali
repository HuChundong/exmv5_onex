.class public Landroid/media/AudioService$HtcVolumeProfile;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HtcVolumeProfile"
.end annotation


# static fields
.field public static final STATE_NORMAL:I = 0x0

.field public static final STATE_STREAM_MAXIMUM:I = 0x2

.field public static final STATE_TOUCHING_MAXIMUM:I = 0x1


# instance fields
.field private mProfile:[Landroid/media/AudioService$HtcVolumeStream;

.field private mProfileName:Ljava/lang/String;

.field private mProfileRingerMode:I

.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method public constructor <init>(Landroid/media/AudioService;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter "name"

    .prologue
    .line 4216
    iput-object p1, p0, Landroid/media/AudioService$HtcVolumeProfile;->this$0:Landroid/media/AudioService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4217
    iput-object p2, p0, Landroid/media/AudioService$HtcVolumeProfile;->mProfileName:Ljava/lang/String;

    .line 4218
    #getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Landroid/media/AudioService;->access$3300(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/media/AudioService$HtcVolumeProfile;->mProfileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "mode_ringer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/media/AudioService$HtcVolumeProfile;->mProfileRingerMode:I

    .line 4219
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    new-array v1, v1, [Landroid/media/AudioService$HtcVolumeStream;

    iput-object v1, p0, Landroid/media/AudioService$HtcVolumeProfile;->mProfile:[Landroid/media/AudioService$HtcVolumeStream;

    .line 4220
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 4221
    iget-object v1, p0, Landroid/media/AudioService$HtcVolumeProfile;->mProfile:[Landroid/media/AudioService$HtcVolumeStream;

    new-instance v2, Landroid/media/AudioService$HtcVolumeStream;

    invoke-direct {v2, p1}, Landroid/media/AudioService$HtcVolumeStream;-><init>(Landroid/media/AudioService;)V

    aput-object v2, v1, v0

    .line 4222
    iget-object v1, p0, Landroid/media/AudioService$HtcVolumeProfile;->mProfile:[Landroid/media/AudioService$HtcVolumeStream;

    aget-object v1, v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/media/AudioService$HtcVolumeProfile;->mProfileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    #getter for: Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;
    invoke-static {p1}, Landroid/media/AudioService;->access$3400(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/media/AudioService$VolumeStreamState;->getVolumeIndexSettingName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/media/AudioService$HtcVolumeStream;->mProfileSettingName:Ljava/lang/String;

    .line 4223
    iget-object v1, p0, Landroid/media/AudioService$HtcVolumeProfile;->mProfile:[Landroid/media/AudioService$HtcVolumeStream;

    aget-object v1, v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/media/AudioService$HtcVolumeProfile;->mProfileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    #getter for: Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;
    invoke-static {p1}, Landroid/media/AudioService;->access$3400(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/media/AudioService$VolumeStreamState;->getLastAudibleVolumeIndexSettingName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/media/AudioService$HtcVolumeStream;->mProfileLastaudibleSettingName:Ljava/lang/String;

    .line 4224
    iget-object v1, p0, Landroid/media/AudioService$HtcVolumeProfile;->mProfile:[Landroid/media/AudioService$HtcVolumeStream;

    aget-object v1, v1, v0

    #getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Landroid/media/AudioService;->access$3300(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Landroid/media/AudioService$HtcVolumeProfile;->mProfile:[Landroid/media/AudioService$HtcVolumeStream;

    aget-object v3, v3, v0

    iget-object v3, v3, Landroid/media/AudioService$HtcVolumeStream;->mProfileSettingName:Ljava/lang/String;

    sget-object v4, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    aget v4, v4, v0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-direct {p0, v0, v2}, Landroid/media/AudioService$HtcVolumeProfile;->getValidStreamIndex(II)I

    move-result v2

    iput v2, v1, Landroid/media/AudioService$HtcVolumeStream;->mIndex:I

    .line 4227
    iget-object v1, p0, Landroid/media/AudioService$HtcVolumeProfile;->mProfile:[Landroid/media/AudioService$HtcVolumeStream;

    aget-object v1, v1, v0

    #getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Landroid/media/AudioService;->access$3300(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Landroid/media/AudioService$HtcVolumeProfile;->mProfile:[Landroid/media/AudioService$HtcVolumeStream;

    aget-object v3, v3, v0

    iget-object v3, v3, Landroid/media/AudioService$HtcVolumeStream;->mProfileLastaudibleSettingName:Ljava/lang/String;

    sget-object v4, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    aget v4, v4, v0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-direct {p0, v0, v2}, Landroid/media/AudioService$HtcVolumeProfile;->getValidStreamIndex(II)I

    move-result v2

    iput v2, v1, Landroid/media/AudioService$HtcVolumeStream;->mLastAudibleIndex:I

    .line 4230
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/media/AudioService$HtcVolumeProfile;->mProfileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "created, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    #getter for: Landroid/media/AudioService;->STREAM_NAMES:[Ljava/lang/String;
    invoke-static {p1}, Landroid/media/AudioService;->access$3500(Landroid/media/AudioService;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/AudioService$HtcVolumeProfile;->mProfile:[Landroid/media/AudioService$HtcVolumeStream;

    aget-object v3, v3, v0

    iget v3, v3, Landroid/media/AudioService$HtcVolumeStream;->mIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mLastAudible = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/AudioService$HtcVolumeProfile;->mProfile:[Landroid/media/AudioService$HtcVolumeStream;

    aget-object v3, v3, v0

    iget v3, v3, Landroid/media/AudioService$HtcVolumeStream;->mLastAudibleIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4220
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 4232
    :cond_0
    return-void
.end method

.method private getValidStreamIndex(II)I
    .locals 1
    .parameter "stream"
    .parameter "index"

    .prologue
    .line 4323
    mul-int/lit8 p2, p2, 0xa

    .line 4324
    iget-object v0, p0, Landroid/media/AudioService$HtcVolumeProfile;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I
    invoke-static {v0}, Landroid/media/AudioService;->access$3900(Landroid/media/AudioService;)[I

    move-result-object v0

    aget v0, v0, p1

    mul-int/lit8 v0, v0, 0xa

    if-ge p2, v0, :cond_0

    .line 4327
    .end local p2
    :goto_0
    return p2

    .restart local p2
    :cond_0
    iget-object v0, p0, Landroid/media/AudioService$HtcVolumeProfile;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I
    invoke-static {v0}, Landroid/media/AudioService;->access$3900(Landroid/media/AudioService;)[I

    move-result-object v0

    aget v0, v0, p1

    mul-int/lit8 p2, v0, 0xa

    goto :goto_0
.end method


# virtual methods
.method public apply()V
    .locals 6

    .prologue
    .line 4239
    iget-object v0, p0, Landroid/media/AudioService$HtcVolumeProfile;->this$0:Landroid/media/AudioService;

    #setter for: Landroid/media/AudioService;->mProfileNowUsing:Landroid/media/AudioService$HtcVolumeProfile;
    invoke-static {v0, p0}, Landroid/media/AudioService;->access$3602(Landroid/media/AudioService;Landroid/media/AudioService$HtcVolumeProfile;)Landroid/media/AudioService$HtcVolumeProfile;

    .line 4240
    const/high16 v3, 0x8

    .line 4241
    .local v3, device:I
    const-string v0, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apply "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/media/AudioService$HtcVolumeProfile;->mProfileName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " profile"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4242
    const/4 v1, 0x0

    .local v1, streamType:I
    :goto_0
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 4243
    iget-object v0, p0, Landroid/media/AudioService$HtcVolumeProfile;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->getDeviceForStream(I)I
    invoke-static {v0, v1}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;I)I

    move-result v3

    .line 4244
    iget-object v0, p0, Landroid/media/AudioService$HtcVolumeProfile;->this$0:Landroid/media/AudioService;

    iget-object v2, p0, Landroid/media/AudioService$HtcVolumeProfile;->mProfile:[Landroid/media/AudioService$HtcVolumeStream;

    aget-object v2, v2, v1

    iget v2, v2, Landroid/media/AudioService$HtcVolumeStream;->mIndex:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    #calls: Landroid/media/AudioService;->setStreamVolumeInt(IIIZZ)V
    invoke-static/range {v0 .. v5}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;IIIZZ)V

    .line 4245
    iget-object v0, p0, Landroid/media/AudioService$HtcVolumeProfile;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;
    invoke-static {v0}, Landroid/media/AudioService;->access$3400(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v0

    aget-object v0, v0, v1

    iget-object v2, p0, Landroid/media/AudioService$HtcVolumeProfile;->mProfile:[Landroid/media/AudioService$HtcVolumeStream;

    aget-object v2, v2, v1

    iget v2, v2, Landroid/media/AudioService$HtcVolumeStream;->mLastAudibleIndex:I

    invoke-virtual {v0, v2, v3}, Landroid/media/AudioService$VolumeStreamState;->setLastAudibleIndex(II)V

    .line 4246
    const/4 v0, 0x2

    if-ne v1, v0, :cond_0

    .line 4247
    iget-object v0, p0, Landroid/media/AudioService$HtcVolumeProfile;->this$0:Landroid/media/AudioService;

    iget v2, p0, Landroid/media/AudioService$HtcVolumeProfile;->mProfileRingerMode:I

    invoke-virtual {v0, v2}, Landroid/media/AudioService;->setRingerMode(I)V

    .line 4242
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4249
    :cond_1
    const-string v0, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apply profile "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/media/AudioService$HtcVolumeProfile;->mProfileName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " done"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4250
    return-void
.end method

.method public getVolume(I)I
    .locals 1
    .parameter "stream"

    .prologue
    .line 4316
    if-ltz p1, :cond_0

    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 4317
    :cond_0
    const/4 v0, -0x1

    .line 4319
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroid/media/AudioService$HtcVolumeProfile;->mProfile:[Landroid/media/AudioService$HtcVolumeStream;

    aget-object v0, v0, p1

    iget v0, v0, Landroid/media/AudioService$HtcVolumeStream;->mIndex:I

    goto :goto_0
.end method

.method public isReachStreamUpperBound(I)I
    .locals 3
    .parameter "stream"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4297
    iget-object v2, p0, Landroid/media/AudioService$HtcVolumeProfile;->mProfile:[Landroid/media/AudioService$HtcVolumeStream;

    aget-object v2, v2, p1

    iget-boolean v2, v2, Landroid/media/AudioService$HtcVolumeStream;->mTouchMaximum:Z

    if-eqz v2, :cond_0

    .line 4308
    :goto_0
    return v0

    .line 4300
    :cond_0
    iget-object v2, p0, Landroid/media/AudioService$HtcVolumeProfile;->mProfile:[Landroid/media/AudioService$HtcVolumeStream;

    aget-object v2, v2, p1

    iget-boolean v2, v2, Landroid/media/AudioService$HtcVolumeStream;->mIsMaximum:Z

    if-eqz v2, :cond_2

    .line 4301
    iget-object v2, p0, Landroid/media/AudioService$HtcVolumeProfile;->mProfile:[Landroid/media/AudioService$HtcVolumeStream;

    aget-object v2, v2, p1

    iget-boolean v2, v2, Landroid/media/AudioService$HtcVolumeStream;->mShouldFeedback:Z

    if-eqz v2, :cond_1

    .line 4302
    invoke-virtual {p0, p1, v1}, Landroid/media/AudioService$HtcVolumeProfile;->setStreamFeedbackState(IZ)V

    goto :goto_0

    .line 4305
    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 4308
    goto :goto_0
.end method

.method public saveProfileRingerMode()V
    .locals 3

    .prologue
    .line 4293
    iget-object v0, p0, Landroid/media/AudioService$HtcVolumeProfile;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Landroid/media/AudioService;->access$3300(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/media/AudioService$HtcVolumeProfile;->mProfileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mode_ringer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioService$HtcVolumeProfile;->mProfileRingerMode:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4294
    return-void
.end method

.method public saveStreamLastaudibleVolume(I)V
    .locals 3
    .parameter "stream"

    .prologue
    .line 4285
    const/high16 v0, -0x8000

    if-eq p1, v0, :cond_0

    .line 4286
    :cond_0
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/media/AudioService$HtcVolumeProfile;->mProfileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", saveStreamLastaudibleVolume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioService$HtcVolumeProfile;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->STREAM_NAMES:[Ljava/lang/String;
    invoke-static {v2}, Landroid/media/AudioService;->access$3500(Landroid/media/AudioService;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioService$HtcVolumeProfile;->mProfile:[Landroid/media/AudioService$HtcVolumeStream;

    aget-object v2, v2, p1

    iget v2, v2, Landroid/media/AudioService$HtcVolumeStream;->mLastAudibleIndex:I

    add-int/lit8 v2, v2, 0x5

    div-int/lit8 v2, v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4287
    iget-object v0, p0, Landroid/media/AudioService$HtcVolumeProfile;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Landroid/media/AudioService;->access$3300(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/media/AudioService$HtcVolumeProfile;->mProfile:[Landroid/media/AudioService$HtcVolumeStream;

    aget-object v1, v1, p1

    iget-object v1, v1, Landroid/media/AudioService$HtcVolumeStream;->mProfileLastaudibleSettingName:Ljava/lang/String;

    iget-object v2, p0, Landroid/media/AudioService$HtcVolumeProfile;->mProfile:[Landroid/media/AudioService$HtcVolumeStream;

    aget-object v2, v2, p1

    iget v2, v2, Landroid/media/AudioService$HtcVolumeStream;->mLastAudibleIndex:I

    add-int/lit8 v2, v2, 0x5

    div-int/lit8 v2, v2, 0xa

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4290
    return-void
.end method

.method public saveStreamVolume(I)V
    .locals 3
    .parameter "stream"

    .prologue
    .line 4277
    const/high16 v0, -0x8000

    if-eq p1, v0, :cond_0

    .line 4278
    :cond_0
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/media/AudioService$HtcVolumeProfile;->mProfileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", saveStreamVolume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioService$HtcVolumeProfile;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->STREAM_NAMES:[Ljava/lang/String;
    invoke-static {v2}, Landroid/media/AudioService;->access$3500(Landroid/media/AudioService;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioService$HtcVolumeProfile;->mProfile:[Landroid/media/AudioService$HtcVolumeStream;

    aget-object v2, v2, p1

    iget v2, v2, Landroid/media/AudioService$HtcVolumeStream;->mIndex:I

    add-int/lit8 v2, v2, 0x5

    div-int/lit8 v2, v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4279
    iget-object v0, p0, Landroid/media/AudioService$HtcVolumeProfile;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Landroid/media/AudioService;->access$3300(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/media/AudioService$HtcVolumeProfile;->mProfile:[Landroid/media/AudioService$HtcVolumeStream;

    aget-object v1, v1, p1

    iget-object v1, v1, Landroid/media/AudioService$HtcVolumeStream;->mProfileSettingName:Ljava/lang/String;

    iget-object v2, p0, Landroid/media/AudioService$HtcVolumeProfile;->mProfile:[Landroid/media/AudioService$HtcVolumeStream;

    aget-object v2, v2, p1

    iget v2, v2, Landroid/media/AudioService$HtcVolumeStream;->mIndex:I

    add-int/lit8 v2, v2, 0x5

    div-int/lit8 v2, v2, 0xa

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4282
    return-void
.end method

.method public setLastAudible(II)V
    .locals 3
    .parameter "stream"
    .parameter "vol"

    .prologue
    .line 4271
    const/high16 v0, -0x8000

    if-eq p1, v0, :cond_0

    .line 4272
    :cond_0
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/media/AudioService$HtcVolumeProfile;->mProfileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", setLastAudivle()  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioService$HtcVolumeProfile;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->STREAM_NAMES:[Ljava/lang/String;
    invoke-static {v2}, Landroid/media/AudioService;->access$3500(Landroid/media/AudioService;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", volume = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4273
    iget-object v0, p0, Landroid/media/AudioService$HtcVolumeProfile;->mProfile:[Landroid/media/AudioService$HtcVolumeStream;

    aget-object v0, v0, p1

    iput p2, v0, Landroid/media/AudioService$HtcVolumeStream;->mLastAudibleIndex:I

    .line 4274
    return-void
.end method

.method public setProfileRingerMode(I)V
    .locals 0
    .parameter "newMode"

    .prologue
    .line 4235
    iput p1, p0, Landroid/media/AudioService$HtcVolumeProfile;->mProfileRingerMode:I

    .line 4236
    return-void
.end method

.method public setStreamFeedbackState(IZ)V
    .locals 1
    .parameter "stream"
    .parameter "shouldFeedback"

    .prologue
    .line 4312
    iget-object v0, p0, Landroid/media/AudioService$HtcVolumeProfile;->mProfile:[Landroid/media/AudioService$HtcVolumeStream;

    aget-object v0, v0, p1

    iput-boolean p2, v0, Landroid/media/AudioService$HtcVolumeStream;->mShouldFeedback:Z

    .line 4313
    return-void
.end method

.method public setVolume(II)V
    .locals 5
    .parameter "stream"
    .parameter "vol"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4253
    const/high16 v0, -0x8000

    if-eq p1, v0, :cond_0

    .line 4254
    :cond_0
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/media/AudioService$HtcVolumeProfile;->mProfileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", setStreamVolume() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioService$HtcVolumeProfile;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->STREAM_NAMES:[Ljava/lang/String;
    invoke-static {v2}, Landroid/media/AudioService;->access$3500(Landroid/media/AudioService;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", volume = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4255
    iget-object v0, p0, Landroid/media/AudioService$HtcVolumeProfile;->mProfile:[Landroid/media/AudioService$HtcVolumeStream;

    aget-object v0, v0, p1

    iget v0, v0, Landroid/media/AudioService$HtcVolumeStream;->mIndex:I

    iget-object v1, p0, Landroid/media/AudioService$HtcVolumeProfile;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I
    invoke-static {v1}, Landroid/media/AudioService;->access$3900(Landroid/media/AudioService;)[I

    move-result-object v1

    aget v1, v1, p1

    add-int/lit8 v1, v1, -0x1

    mul-int/lit8 v1, v1, 0xa

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/media/AudioService$HtcVolumeProfile;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I
    invoke-static {v0}, Landroid/media/AudioService;->access$3900(Landroid/media/AudioService;)[I

    move-result-object v0

    aget v0, v0, p1

    mul-int/lit8 v0, v0, 0xa

    if-ne p2, v0, :cond_1

    .line 4257
    iget-object v0, p0, Landroid/media/AudioService$HtcVolumeProfile;->mProfile:[Landroid/media/AudioService$HtcVolumeStream;

    aget-object v0, v0, p1

    iput-boolean v4, v0, Landroid/media/AudioService$HtcVolumeStream;->mTouchMaximum:Z

    .line 4262
    :goto_0
    iget-object v0, p0, Landroid/media/AudioService$HtcVolumeProfile;->mProfile:[Landroid/media/AudioService$HtcVolumeStream;

    aget-object v0, v0, p1

    iput p2, v0, Landroid/media/AudioService$HtcVolumeStream;->mIndex:I

    .line 4264
    iget-object v0, p0, Landroid/media/AudioService$HtcVolumeProfile;->mProfile:[Landroid/media/AudioService$HtcVolumeStream;

    aget-object v0, v0, p1

    iget v0, v0, Landroid/media/AudioService$HtcVolumeStream;->mIndex:I

    iget-object v1, p0, Landroid/media/AudioService$HtcVolumeProfile;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I
    invoke-static {v1}, Landroid/media/AudioService;->access$3900(Landroid/media/AudioService;)[I

    move-result-object v1

    aget v1, v1, p1

    mul-int/lit8 v1, v1, 0xa

    if-ne v0, v1, :cond_2

    .line 4265
    iget-object v0, p0, Landroid/media/AudioService$HtcVolumeProfile;->mProfile:[Landroid/media/AudioService$HtcVolumeStream;

    aget-object v0, v0, p1

    iput-boolean v4, v0, Landroid/media/AudioService$HtcVolumeStream;->mIsMaximum:Z

    .line 4268
    :goto_1
    return-void

    .line 4259
    :cond_1
    iget-object v0, p0, Landroid/media/AudioService$HtcVolumeProfile;->mProfile:[Landroid/media/AudioService$HtcVolumeStream;

    aget-object v0, v0, p1

    iput-boolean v3, v0, Landroid/media/AudioService$HtcVolumeStream;->mTouchMaximum:Z

    goto :goto_0

    .line 4267
    :cond_2
    iget-object v0, p0, Landroid/media/AudioService$HtcVolumeProfile;->mProfile:[Landroid/media/AudioService$HtcVolumeStream;

    aget-object v0, v0, p1

    iput-boolean v3, v0, Landroid/media/AudioService$HtcVolumeStream;->mIsMaximum:Z

    goto :goto_1
.end method
