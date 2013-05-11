.class public interface abstract Lcom/htc/videowidget/videoview/IHtcPlayerAPI;
.super Ljava/lang/Object;
.source "IHtcPlayerAPI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/videowidget/videoview/IHtcPlayerAPI$OnEventListener;
    }
.end annotation


# virtual methods
.method public abstract captureFrame()Landroid/graphics/Bitmap;
.end method

.method public abstract dispatchKeyEvent(Landroid/view/KeyEvent;)Z
.end method

.method public abstract getCurrentPosition()I
.end method

.method public abstract getDuration()I
.end method

.method public abstract getProperty(Ljava/lang/String;)Landroid/os/Bundle;
.end method

.method public abstract getState()I
.end method

.method public abstract getUri()Landroid/net/Uri;
.end method

.method public abstract hideCenterButton()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract hideController()V
.end method

.method public abstract hideWaitingCursor()V
.end method

.method public abstract isControllerShowing()Z
.end method

.method public abstract pause()V
.end method

.method public abstract play()V
.end method

.method public abstract seekTo(I)V
.end method

.method public abstract setControllerEnable(Z)V
.end method

.method public abstract setControllerMode(I)V
.end method

.method public abstract setDataSource(Landroid/content/res/AssetFileDescriptor;)V
.end method

.method public abstract setDataSource(Landroid/content/res/AssetFileDescriptor;Landroid/content/res/AssetFileDescriptor;)V
.end method

.method public abstract setDataSource(Landroid/net/Uri;Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setOnEventListener(Lcom/htc/videowidget/videoview/IHtcPlayerAPI$OnEventListener;)V
.end method

.method public abstract setProperty(Ljava/lang/String;Landroid/os/Bundle;)Z
.end method

.method public abstract showCenterButton(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract showController()V
.end method

.method public abstract showWaitingCursor(Ljava/lang/String;)V
.end method

.method public abstract stop()V
.end method
