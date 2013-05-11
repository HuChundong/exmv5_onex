.class public abstract Lcom/android/camera/trigger/TriggerBase;
.super Ljava/lang/Object;
.source "TriggerBase.java"


# instance fields
.field private m_IsActive:Z

.field private m_IsDestroyed:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final activate()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/trigger/TriggerBase;->m_IsDestroyed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/trigger/TriggerBase;->m_IsActive:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/trigger/TriggerBase;->m_IsActive:Z

    invoke-virtual {p0}, Lcom/android/camera/trigger/TriggerBase;->onEnter()V

    :cond_0
    return-void
.end method

.method protected final deactivate()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/trigger/TriggerBase;->m_IsDestroyed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/trigger/TriggerBase;->m_IsActive:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/trigger/TriggerBase;->m_IsActive:Z

    invoke-virtual {p0}, Lcom/android/camera/trigger/TriggerBase;->onExit()V

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/trigger/TriggerBase;->m_IsDestroyed:Z

    return-void
.end method

.method protected onEnter()V
    .locals 0

    return-void
.end method

.method protected onExit()V
    .locals 0

    return-void
.end method
