.class public Lcom/htc/wrap/android/hardware/input/HtcWrapInputManager;
.super Ljava/lang/Object;
.source "HtcWrapInputManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HtcWrapInputManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static injectInputEvent(Landroid/view/InputEvent;I)Z
    .locals 2
    .parameter "event"
    .parameter "mode"

    .prologue
    .line 44
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Landroid/hardware/input/InputManager;->injectInputEventWithLevel(Landroid/view/InputEvent;II)Z

    move-result v0

    return v0
.end method

.method public static injectSystemLevelInputEvent(Landroid/view/InputEvent;I)Z
    .locals 2
    .parameter "event"
    .parameter "mode"

    .prologue
    .line 70
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Landroid/hardware/input/InputManager;->injectInputEventWithLevel(Landroid/view/InputEvent;II)Z

    move-result v0

    return v0
.end method

.method public static registerHtcGestureFilterOutList(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 88
    invoke-static {}, Lcom/htc/service/HtcGestureManager;->getInstance()Lcom/htc/service/HtcGestureManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/service/HtcGestureManager;->registerHtcGestureFilterOutList(Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public static unregisterHtcGestureFilterOutList(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 103
    invoke-static {}, Lcom/htc/service/HtcGestureManager;->getInstance()Lcom/htc/service/HtcGestureManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/service/HtcGestureManager;->unregisterHtcGestureFilterOutList(Ljava/lang/String;)V

    .line 104
    return-void
.end method
