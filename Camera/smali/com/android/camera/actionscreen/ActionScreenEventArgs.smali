.class public Lcom/android/camera/actionscreen/ActionScreenEventArgs;
.super Lcom/android/camera/event/EventArgs;
.source "ActionScreenEventArgs.java"


# instance fields
.field public final actionScreen:Lcom/android/camera/actionscreen/ActionScreen;

.field public final closeReason:I

.field public final state:I


# direct methods
.method public constructor <init>(Lcom/android/camera/actionscreen/ActionScreen;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/actionscreen/ActionScreenEventArgs;-><init>(Lcom/android/camera/actionscreen/ActionScreen;II)V

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/actionscreen/ActionScreen;II)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/event/EventArgs;-><init>()V

    iput-object p1, p0, Lcom/android/camera/actionscreen/ActionScreenEventArgs;->actionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    iput p3, p0, Lcom/android/camera/actionscreen/ActionScreenEventArgs;->closeReason:I

    iput p2, p0, Lcom/android/camera/actionscreen/ActionScreenEventArgs;->state:I

    return-void
.end method
