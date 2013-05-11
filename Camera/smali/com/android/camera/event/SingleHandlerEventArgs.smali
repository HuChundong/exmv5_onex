.class public Lcom/android/camera/event/SingleHandlerEventArgs;
.super Lcom/android/camera/event/EventArgs;
.source "SingleHandlerEventArgs.java"

# interfaces
.implements Lcom/android/camera/event/ISingleHandlerEventArgs;


# instance fields
.field private m_IsHandled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/event/EventArgs;-><init>()V

    return-void
.end method


# virtual methods
.method public final isHandled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/event/SingleHandlerEventArgs;->m_IsHandled:Z

    return v0
.end method

.method public final setHandled()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/event/SingleHandlerEventArgs;->m_IsHandled:Z

    return-void
.end method
