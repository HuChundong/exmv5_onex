.class public Lcom/android/camera/trigger/Trigger;
.super Lcom/android/camera/trigger/TriggerBase;
.source "Trigger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/trigger/Trigger$ChangedCallback;
    }
.end annotation


# instance fields
.field private m_ChangedCallback:Lcom/android/camera/trigger/Trigger$ChangedCallback;

.field public final property:Lcom/android/camera/property/Property;

.field public final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/camera/property/Property;Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/trigger/TriggerBase;-><init>()V

    if-nez p1, :cond_0

    const-string v1, "property"

    invoke-static {v1}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_0
    iput-object p1, p0, Lcom/android/camera/trigger/Trigger;->property:Lcom/android/camera/property/Property;

    iput-object p2, p0, Lcom/android/camera/trigger/Trigger;->value:Ljava/lang/Object;

    new-instance v1, Lcom/android/camera/trigger/Trigger$ChangedCallback;

    invoke-direct {v1, p0}, Lcom/android/camera/trigger/Trigger$ChangedCallback;-><init>(Lcom/android/camera/trigger/Trigger;)V

    iput-object v1, p0, Lcom/android/camera/trigger/Trigger;->m_ChangedCallback:Lcom/android/camera/trigger/Trigger$ChangedCallback;

    iget-object v1, p0, Lcom/android/camera/trigger/Trigger;->m_ChangedCallback:Lcom/android/camera/trigger/Trigger$ChangedCallback;

    invoke-virtual {p1, v1}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    invoke-virtual {p1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz p2, :cond_1

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    if-nez p2, :cond_3

    if-nez v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/trigger/Trigger;->activate()V

    :cond_3
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/trigger/Trigger;->m_ChangedCallback:Lcom/android/camera/trigger/Trigger$ChangedCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/trigger/Trigger;->property:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/trigger/Trigger;->m_ChangedCallback:Lcom/android/camera/trigger/Trigger$ChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->removeChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/trigger/Trigger;->m_ChangedCallback:Lcom/android/camera/trigger/Trigger$ChangedCallback;

    :cond_0
    invoke-super {p0}, Lcom/android/camera/trigger/TriggerBase;->destroy()V

    return-void
.end method
