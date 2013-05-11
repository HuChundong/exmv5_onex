.class public Lcom/android/camera/input/KeyEventArgs;
.super Lcom/android/camera/event/SingleHandlerEventArgs;
.source "KeyEventArgs.java"


# instance fields
.field public final keyCode:I

.field public final keyEvent:Landroid/view/KeyEvent;

.field public final repeatCount:I


# direct methods
.method public constructor <init>(Landroid/view/KeyEvent;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/event/SingleHandlerEventArgs;-><init>()V

    iput-object p1, p0, Lcom/android/camera/input/KeyEventArgs;->keyEvent:Landroid/view/KeyEvent;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    iput v0, p0, Lcom/android/camera/input/KeyEventArgs;->keyCode:I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    iput v0, p0, Lcom/android/camera/input/KeyEventArgs;->repeatCount:I

    :goto_0
    return-void

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/input/KeyEventArgs;->keyCode:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/input/KeyEventArgs;->repeatCount:I

    goto :goto_0
.end method
