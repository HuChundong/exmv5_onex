.class public interface abstract Lcom/htc/videowidget/videoDMC/IHtcDMCAPI;
.super Ljava/lang/Object;
.source "IHtcDMCAPI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/videowidget/videoDMC/IHtcDMCAPI$OnEventListener;
    }
.end annotation


# static fields
.field public static final VIDEO_SOURCE_TYPE_INTERNET_PUSH:B = 0x2t

.field public static final VIDEO_SOURCE_TYPE_LOCAL:B = 0x0t

.field public static final VIDEO_SOURCE_TYPE_SERVER:B = 0x1t

.field public static final VIDEO_SOURCE_TYPE_STREAMING:B = 0x3t


# virtual methods
.method public abstract closeDMC()V
.end method

.method public abstract dispatchKeyEvent(Landroid/view/KeyEvent;)Z
.end method

.method public abstract getCurrentRendererID()Ljava/lang/String;
.end method

.method public abstract getProperty(Ljava/lang/String;)Landroid/os/Bundle;
.end method

.method public abstract getState()I
.end method

.method public abstract setControllerMode(I)V
.end method

.method public abstract setDLNAStatusBar(Lcom/htc/htcdlnainterface/DLNAStatusBarData;)V
.end method

.method public abstract setDMSDataSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setDataSource(Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;)V
.end method

.method public abstract setDataSource(Ljava/lang/String;)V
.end method

.method public abstract setOnEventListener(Lcom/htc/videowidget/videoDMC/IHtcDMCAPI$OnEventListener;)V
.end method

.method public abstract setProperty(Ljava/lang/String;Landroid/os/Bundle;)Z
.end method

.method public abstract setRendererID(Ljava/lang/String;)V
.end method

.method public abstract setThumbNailSource(Landroid/net/Uri;)V
.end method
