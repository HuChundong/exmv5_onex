.class Lcom/android/camera/trigger/Trigger$ChangedCallback;
.super Ljava/lang/Object;
.source "Trigger.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/trigger/Trigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChangedCallback"
.end annotation


# instance fields
.field private final m_Trigger:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/camera/trigger/Trigger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/trigger/Trigger;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/trigger/Trigger$ChangedCallback;->m_Trigger:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 3

    iget-object v1, p0, Lcom/android/camera/trigger/Trigger$ChangedCallback;->m_Trigger:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/trigger/Trigger;

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/android/camera/trigger/Trigger;->value:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/camera/trigger/Trigger;->value:Ljava/lang/Object;

    iget-object v2, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, v0, Lcom/android/camera/trigger/Trigger;->value:Ljava/lang/Object;

    if-nez v1, :cond_3

    iget-object v1, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    if-nez v1, :cond_3

    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/trigger/Trigger;->activate()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {v0}, Lcom/android/camera/trigger/Trigger;->deactivate()V

    goto :goto_0
.end method
