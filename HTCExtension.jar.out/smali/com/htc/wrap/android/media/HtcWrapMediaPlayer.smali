.class public Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;
.super Landroid/media/MediaPlayer;
.source "HtcWrapMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/wrap/android/media/HtcWrapMediaPlayer$OnHtcGeoMetadataUpdateListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/media/MediaPlayer;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method public captureFrame()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 33
    invoke-super {p0}, Landroid/media/MediaPlayer;->captureFrame()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    .locals 0
    .parameter "request"
    .parameter "reply"

    .prologue
    .line 19
    invoke-super {p0, p1, p2}, Landroid/media/MediaPlayer;->htc_invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V

    .line 20
    return-void
.end method

.method public setFrame(Z)V
    .locals 0
    .parameter "set"

    .prologue
    .line 30
    return-void
.end method

.method public setGeoMetadataUpdateListener(Lcom/htc/wrap/android/media/HtcWrapMediaPlayer$OnHtcGeoMetadataUpdateListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 66
    return-void
.end method

.method public stepBackward()Z
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/media/MediaPlayer;->stepFrame(Z)Z

    move-result v0

    return v0
.end method

.method public stepForward()Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    invoke-super {p0, v0}, Landroid/media/MediaPlayer;->stepFrame(Z)Z

    move-result v0

    return v0
.end method
