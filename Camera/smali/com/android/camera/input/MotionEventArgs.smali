.class public Lcom/android/camera/input/MotionEventArgs;
.super Lcom/android/camera/event/SingleHandlerEventArgs;
.source "MotionEventArgs.java"


# instance fields
.field public final action:I

.field public final motionEvent:Landroid/view/MotionEvent;

.field public final x:F

.field public final y:F


# direct methods
.method public constructor <init>(Landroid/view/MotionEvent;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/event/SingleHandlerEventArgs;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/android/camera/input/MotionEventArgs;->motionEvent:Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iput v0, p0, Lcom/android/camera/input/MotionEventArgs;->action:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/camera/input/MotionEventArgs;->x:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/camera/input/MotionEventArgs;->y:F

    return-void
.end method
