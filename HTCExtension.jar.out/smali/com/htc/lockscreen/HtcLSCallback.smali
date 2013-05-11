.class public interface abstract Lcom/htc/lockscreen/HtcLSCallback;
.super Ljava/lang/Object;
.source "HtcLSCallback.java"


# static fields
.field public static final MODE_LOCK:I = 0x1

.field public static final MODE_NONE:I = 0x0

.field public static final MODE_UNLOCK:I = 0x2


# virtual methods
.method public abstract clearIdleScreen()V
.end method

.method public abstract getIdleScreenLabel()Ljava/lang/String;
.end method

.method public abstract getScreenMode()I
.end method

.method public abstract hideIdleScreen()V
.end method

.method public abstract isUseIdleScreen()Z
.end method

.method public abstract lockScreenAction(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract needWaitFirstFrame()Z
.end method

.method public abstract setIdleScreen(Landroid/content/ComponentName;)V
.end method

.method public abstract showIdleScreen()V
.end method
